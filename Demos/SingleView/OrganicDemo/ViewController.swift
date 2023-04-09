//
//  ViewController.swift
//  OrganicDemo
//
//  Created by Alberto Lourenço on 5/3/20.
//  Copyright © 2020 Alberto Lourenco. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private weak var vwOrganic: OrganicView!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let config = mockedConfig()
        
        //  Storyboard
        
        self.vwOrganic.apply(config: config)
        
        //  View Code
        
        let organicView = OrganicView(frame: CGRect(origin: .zero,
                                                    size: config.frame.size))
        organicView.apply(config: config)
        self.view.addSubview(organicView)
    }
    
    //-----------------------------------------------------
    //  MARK: MorphConfig
    //-----------------------------------------------------
    
    private func mockedConfig() -> MorphConfig {
        
        let area: CGFloat = 350
        let colorsStart: Array<CGColor> = [UIColor.blue.cgColor, UIColor.red.cgColor]
        let colorsEnd: Array<CGColor> = [UIColor.green.cgColor, UIColor.blue.cgColor]
        
        return MorphConfig(size: CGSize(width: area, height: area),
                           duration: 10,
                           rotationEnabled: true,
                           colorsStart: colorsStart,
                           colorsEnd: colorsEnd,
                           backgroundColor: .clear)
    }
}
