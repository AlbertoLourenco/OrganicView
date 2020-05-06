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
        
        //  Config
        
        let colorsStart: Array<CGColor> = [UIColor.blue.cgColor, UIColor.red.cgColor]
        let colorsEnd: Array<CGColor> = [UIColor.green.cgColor, UIColor.blue.cgColor]
        let frame: CGRect = CGRect(origin: self.view.center, size: CGSize(width: 350, height: 350))
        
        let config = MorphConfig(frame: frame,
                                 duration: 10,
                                 rotationEnabled: true,
                                 colorsStart: colorsStart,
                                 colorsEnd: colorsEnd,
                                 backgroundColor: .clear)
        
        //  Add view
        
        let organicView = OrganicView(config: config)
        self.view.addSubview(organicView)
    }
}
