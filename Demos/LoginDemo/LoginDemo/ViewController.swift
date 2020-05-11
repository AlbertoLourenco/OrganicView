//
//  ViewController.swift
//  LoginDemo
//
//  Created by Alberto Lourenço on 5/8/20.
//  Copyright © 2020 Alberto Lourenco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var vwOrganicTop: UIView!
    @IBOutlet var vwOrganicBottom: UIView!
    
    //-----------------------------------------------------------------------
    //  MARK: - UIViewController
    //-----------------------------------------------------------------------
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.vwOrganicTop.addSubview(self.getOrganicView(view: self.vwOrganicTop))
        self.vwOrganicBottom.addSubview(self.getOrganicView(view: self.vwOrganicBottom))
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
    }
    
    //-----------------------------------------------------------------------
    //  MARK: - Custom methods
    //-----------------------------------------------------------------------
    
    func getOrganicView(view: UIView) -> OrganicView {
        
        let colorsStart: Array<CGColor> = [UIColor.blue.cgColor, UIColor.red.cgColor]
        let colorsEnd: Array<CGColor> = [UIColor.purple.cgColor, UIColor.orange.cgColor]
        let frame: CGRect = CGRect(origin: .zero, size: CGSize(width: view.bounds.width + 200,
                                                               height: view.bounds.height + 200))
        
        let config = MorphConfig(frame: frame,
                                 duration: 10,
                                 rotationEnabled: true,
                                 colorsStart: colorsStart,
                                 colorsEnd: colorsEnd,
                                 backgroundColor: .clear)
        
        return OrganicView(config: config)
    }
}

