GitHubFollowers.
================

weak self
---------
```````````ruby 
[weak self]

optional ? = guard let self = self else { return }
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
    
   
