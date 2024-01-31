//  /*
//
//  Project: GitHubFollowers
//  File: FavoritesListVC.swift
//  Created by: Elaidzha Shchukin
//  Date: 12.01.2024
//
//  */

import UIKit

class FavoritesListVC: GFDataLoadingVC {
    
    let tabelView             = UITableView()
    var favorites: [Follower] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getFavorites()
    }
    
    override func updateContentUnavailableConfiguration(using state: UIContentUnavailableConfigurationState) {
        if favorites.isEmpty {
            var config = UIContentUnavailableConfiguration.empty()
            config.image = .init(systemName: "star")
            config.text = "No Favorites"
            config.secondaryText = "Add a favorite on the follower list screen."
            contentUnavailableConfiguration = config
        } else {
            contentUnavailableConfiguration = nil
        }
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        title                = "Favorites"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureTableView() {
        view.addSubview(tabelView)
        
        tabelView.frame      = view.bounds
        tabelView.rowHeight  = 80
        tabelView.delegate   = self
        tabelView.dataSource = self
        tabelView.removeExcessCells()
        
        tabelView.register(FavoriteCell.self, forCellReuseIdentifier: FavoriteCell.reuseID)
    }
    
    func getFavorites() {
        PersistenceManager.retrieveFavorites { [weak self] result in
            guard let self else { return }
            
            switch result {
            case .success(let favorites):
                self.updateUI(with: favorites)
                
            case .failure(let error):
                DispatchQueue.main.sync {
                    self.presentGFAlert(title: "Something went wrong", message: error.rawValue, buttonTitle: "Ok")
                }
            }
        }
    }
    
    func updateUI(with favorites: [Follower]) {
        
        // MARK: before iOS 17
        // if favorites.isEmpty {
        // self.showEmptyState(with: "No Favorites?\nAdd one on the follower screen.", in: self.view)
        // } else {}
        
        self.favorites = favorites
        setNeedsUpdateContentUnavailableConfiguration()
        DispatchQueue.main.async {
            self.tabelView.reloadData()
            self.view.bringSubviewToFront(self.tabelView)
        }
    }
}

extension FavoritesListVC: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favorites.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavoriteCell.reuseID) as! FavoriteCell
        let favorite = favorites[indexPath.row]
        cell.set(favorite: favorite)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let favorite      = favorites[indexPath.row]
        let destinationVC = FollowerListVC(username: favorite.login)
        
        navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        guard editingStyle == .delete else { return }
        
        PersistenceManager.updateWith(favorite: favorites[indexPath.row], actionType: .remove) { [weak self ] error in
            guard let self else { return }
            
            guard let error else {
                self.favorites.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .left)
                
                //MARK: before iOS 17
                // if self.favorites.isEmpty {
                // self.showEmptyState(with: "No Favorites?\nAdd one on the follower screen.", in: self.view)
                // }
                setNeedsUpdateContentUnavailableConfiguration()
                return
            }
            
            DispatchQueue.main.sync {
                self.presentGFAlert(title: "Unable to remove", message: error.rawValue, buttonTitle: "Ok")
            }
        }
    }
}
