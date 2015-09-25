//
//  RaisedTabBarController.swift
//  SwiftRaisedTabDemo
//
//  Created by Kaynine on 9/23/2015.
//  Copyright (c) 2015 Kaynine. All rights reserved.
//

import UIKit

public class RaisedTabBarController: UITabBarController {
    override public func viewDidLoad() {
        super.viewDidLoad()
    }
    
    public func insertEmptyTabItem(title: String, atIndex: Int) {
        let vc = UIViewController()
        vc.tabBarItem = UITabBarItem(title: title, image: nil, tag: 0)
        vc.tabBarItem.enabled = false
        
        self.viewControllers?.insert(vc, atIndex: atIndex)
    }
    
    public func addRaisedButton(buttonImage: UIImage?, highlightImage: UIImage?) {
        if let buttonImage = buttonImage {
            let button = UIButton(type: UIButtonType.Custom)
            button.autoresizingMask = [UIViewAutoresizing.FlexibleRightMargin, UIViewAutoresizing.FlexibleLeftMargin, UIViewAutoresizing.FlexibleBottomMargin, UIViewAutoresizing.FlexibleTopMargin]
            
            button.frame = CGRectMake(0.0, 0.0, buttonImage.size.width, buttonImage.size.height)
            button.setBackgroundImage(buttonImage, forState: UIControlState.Normal)
            button.setBackgroundImage(highlightImage, forState: UIControlState.Highlighted)
            
            let heightDifference = buttonImage.size.height - self.tabBar.frame.size.height
            
            if (heightDifference < 0) {
                button.center = self.tabBar.center
            }
            else {
                var center = self.tabBar.center
                center.y -= heightDifference / 2.0
                
                button.center = center
            }
            
            button.addTarget(self, action: "onRaisedButton:", forControlEvents: UIControlEvents.TouchUpInside)
            self.view.addSubview(button)
        }
    }
    
    public func onRaisedButton(sender: UIButton!) {
        
    }
}
