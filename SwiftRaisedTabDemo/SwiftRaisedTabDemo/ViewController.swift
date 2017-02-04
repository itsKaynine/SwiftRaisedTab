//
//  ViewController.swift
//  SwiftRaisedTabDemo
//
//  Created by Kaynine on 9/23/2015.
//  Copyright (c) 2015 Kaynine. All rights reserved.
//

import UIKit

class ViewController: RaisedTabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Insert empty tab item at center index. In this case we have 5 tabs.
        self.insertEmptyTabItem("", atIndex: 2)
        
        // Raise the center button with image
        let img = UIImage(named: "icon_camera")
        self.addRaisedButton(img, highlightImage: nil, offset: -10.0)
    }
    
    // Handler for raised button
    override func onRaisedButton(_ sender: UIButton!) {
        super.onRaisedButton(sender)
        
        print("Raised button tapped")
    }


}

