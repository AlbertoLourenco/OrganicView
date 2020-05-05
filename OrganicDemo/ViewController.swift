//
//  ViewController.swift
//  OrganicDemo
//
//  Created by Alberto Lourenço on 5/3/20.
//  Copyright © 2020 Alberto Lourenco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let colors: Array<CGColor> = [UIColor.blue.cgColor,
                                      UIColor.red.cgColor]
        
        let frame: CGRect = CGRect(origin: self.view.center,
                                   size: CGSize(width: 350, height: 350))
        
        let organicView = OrganicView(frame: frame, colors: colors, duration: 5)
        self.view.addSubview(organicView)
    }
}
