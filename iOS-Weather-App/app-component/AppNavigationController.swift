//
//  AppNavigationController.swift
//  iOS-Weather-App
//
//  Created by Bridgetech on 27/09/18.
//  Copyright © 2018 Bridgetech. All rights reserved.
//

import UIKit
import Material

class AppNavigationController: NavigationController {
    open override func prepare() {
        super.prepare()
        isMotionEnabled = true
        motionNavigationTransitionType = .slide(direction: .right)
        guard let v = navigationBar as? NavigationBar else {
            return
        }
        
        v.backgroundColor = .white
        v.depthPreset = .none
        v.dividerColor = Color.grey.lighten2
    }
}
