//
//  AppSearchBarController.swift
//  iOS-Weather-App
//
//  Created by Bridgetech on 28/09/18.
//  Copyright © 2018 Bridgetech. All rights reserved.
//

import UIKit
import Material

class AppSearchBarController: SearchBarController {
    fileprivate var menuButton: IconButton!
    fileprivate var moreButton: IconButton!
    
    open override func prepare() {
        super.prepare()
        prepareMenuButton()
        prepareMoreButton()
        prepareStatusBar()
        prepareSearchBar()
    }
}

extension AppSearchBarController {
    fileprivate func prepareMenuButton() {
        menuButton = IconButton(image: Icon.cm.arrowBack)
        
        menuButton.addTarget(self, action: #selector(handleBackButton), for: .touchUpInside)
    }
    
    fileprivate func prepareMoreButton() {
        moreButton = IconButton(image: Icon.cm.moreVertical)
    }
    
    fileprivate func prepareStatusBar() {
        statusBarStyle = .lightContent
        
        // Access the statusBar.
        //        statusBar.backgroundColor = Color.green.base
    }
    
    fileprivate func prepareSearchBar() {
        searchBar.leftViews = [menuButton]
        // searchBar.rightViews = [moreButton]
    }
}

extension AppSearchBarController{
    @objc
    fileprivate func handleBackButton() {
        let viewController = AppNavigationController(rootViewController: UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homepageview"))
        
        present(viewController, animated: true, completion: nil)
    }
}
