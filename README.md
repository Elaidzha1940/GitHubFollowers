GitHubFollowers.
================

weak self / optional ?
---------
```````````ruby 

before iOS 15

guard let self = self else { return }

after iOS

guard let self else { return }
```````````

//MARK: iOS 16
---------------
```````````ruby
    func set(follower: Follower) {
        if #available(iOS 16.0, *) {
            contentConfiguration = UIHostingConfiguration { FollowerView(follower: follower) }
        } else {
            avatarImageView.downloadImage(from: follower.avatarUrl)
            usernameLabel.text = follower.login
        }
    }
```````````

iPhone SE
---------
```````````ruby

enum ScreenSize {
    static let width      = UIScreen.main.bounds.size.width
    static let height     = UIScreen.main.bounds.size.height
    static let maxLength  = max(ScreenSize.width, ScreenSize.height)
    static let minLength  = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    static let idiom                  = UIDevice.current.userInterfaceIdiom
    static let nativeScale            = UIScreen.main.nativeScale
    static let scale                  = UIScreen.main.scale
    
    static let isiPhoneSE             = idiom == .phone && ScreenSize.maxLength == 568.0
    static let isiPhone8Standard      = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale == scale
    static let isiPhone8Zoomed        = idiom == .phone && ScreenSize.maxLength == 667.0 && nativeScale > scale
    static let isiPhone8PlusStandard  = idiom == .phone && ScreenSize.maxLength == 736.0
    static let isiPhone8PlusZoomed    = idiom == .phone && ScreenSize.maxLength == 736.0 && nativeScale < scale
    static let isiPhoneX              = idiom == .phone && ScreenSize.maxLength == 812.0
    static let isiPhoneXsMaxAndXr     = idiom == .phone && ScreenSize.maxLength == 896.0
    static let isiPad                 = idiom == .pad && ScreenSize.maxLength >= 1024.0
    
    static func isiPhoneXAspectRatio() -> Bool {
        return isiPhoneX || isiPhoneXsMaxAndXr
    }
}
```````````

The Ultimate Guide To iPhone Resolutions
----------------------------------------
```````````ruby
https://www.paintcodeapp.com/news/ultimate-guide-to-iphone-resolutions
```````````
```````````ruby
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/35953ebb-feeb-4f2b-9a02-0373571d4955" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/aab304a1-afd9-4c0e-b5e4-5f5e87302c75" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/97e6ee19-1820-4985-a845-59cfa2eb78d2" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/ef39e92b-377b-456e-964b-bbadef2c7d6e" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/0b90a865-e5b1-4d5a-803d-4020873b353a" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/c5d0dc82-a95d-442c-af8f-fb72e51d7639" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/5fee104a-4f11-4645-9e01-b647991b7b65" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/732eec9d-d3cb-440c-bd88-8a0508d820f3" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/f4dc28c4-5dc8-40ef-b9a2-08bd3e22ec25" width="130" height="270">
<img src="https://github.com/Elaidzha1940/GitHubFollowers/assets/64445918/d4e1802e-d95e-4e12-8611-97ee081c07b0" width="130" height="270">

```````````


1. Project Setup.                                                                        
2. Custom UIButton & UITextField.             
3. Search Screen UI.                           
4. Passing Data Between Views.
5. Custom Alert.
6. Project Organization & Architecture.
7. Network Call Planning.
8. Create Network Call - Get Follower.
9. Refactor Error Messages.
10. Result Type.
---------------- 
12. UICollectionView - Follower Cell UI.
13. UICollectionView - Initial Setup.
14. UICollectionView - Flow Layout.
15. UICollectionView - Diffable Data Source.
16. ARC, Memory Leaks, Capture Lists.
17. Download & Cache Avatar Images.
18. Pagination - Next 100 Followers.
19. Loading View.
20. Empty State.
-----------------
21. Search Functionality.
22. Modal & Passing Data.
23. Network Call - Get User Info.
24. User Info UI Planning.
25. Child ViewController - UserInfoHeaderVC.
26. UserInfoVC Cleanup.
27. Item Info View.
28. ItemInfoVC - Superclass.
29. ItemInfoVC - Subclass.
30. Date Conversion & Date Label.
------------------
31. Button Functionality - Delegates & Protocols.
32. Persistence Setup.
33. Persistence Manager.
34. Persistence Manager - Make it Work.
35. UITableView - FavoriteCell.
36. UITableView - FavoritesVC.
37. Optimization - UITabBarController, Screen Sizes & Constants.
38. Optimization - GFAlertVC, Date Decoding, Network Refactor.
39. Optimization - Search, Pagination, Empty State.
40. Optimization - Variadic Parameters, Dynamic Type.
-------------------
41. Optimization - Persistence Manager, UITableView Extension.
42. Optimization - Old iPhone SE - UserInfoVC Fixes.
43. The Final Pass (Before iOS 15, 16, 17 Updates).
44. Interview Next Steps - After Project Turn In.
45. iOS 15 - Initial Run.
46. iOS 15 - Button Configurations.
47. iOS 15 - Async/Await - Part 1.
48. iOS 15 - Async/Await - Part 2.
49. iOS 15 - Date Format.
50. iOS 16 - Initial Run.
-------------------
51. iOS 16 - SwiftUI in UIKit Cells.
52. iOS 17 - Initial Run.
53. iOS 17 - UIKit Previews.
54. iOS 17 - UIContentUnavailableView.

   
