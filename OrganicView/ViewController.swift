//
//  ViewController.swift
//  LoginDemo
//
//  Created by Alberto Lourenço on 5/8/20.
//  Copyright © 2020 Alberto Lourenco. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet private var vwOrganicTop: UIView!
    @IBOutlet private var vwOrganicBottom: UIView!
    
    //-----------------------------------------------------------------------
    //  MARK: - UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.vwOrganicTop.addSubview(self.getOrganicView(view: self.vwOrganicTop))
        self.vwOrganicBottom.addSubview(self.getOrganicView(view: self.vwOrganicBottom))
    }
    
    //-----------------------------------------------------------------------
    //  MARK: - Custom methods
    //-----------------------------------------------------------------------
    
    private func getOrganicView(view: UIView) -> OrganicView {
        
        let colorsStart: Array<CGColor> = [UIColor.blue.cgColor, UIColor.red.cgColor]
        let colorsEnd: Array<CGColor> = [UIColor.purple.cgColor, UIColor.orange.cgColor]
        
        let config = MorphConfig(size: CGSize(width: view.bounds.width + 200,
                                              height: view.bounds.height + 200),
                                 duration: 10,
                                 rotationEnabled: true,
                                 colorsStart: colorsStart,
                                 colorsEnd: colorsEnd,
                                 backgroundColor: .clear)
        
        let vwOrganic = OrganicView()
        vwOrganic.apply(config: config)
        
        return vwOrganic
    }
}
