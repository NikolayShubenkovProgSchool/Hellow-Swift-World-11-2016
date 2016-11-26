//
//  ConverterViewController.swift
//  Hellow Swift World
//
//  Created by Nikolay Shubenkov on 26/11/2016.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    @IBOutlet weak var converterContainerView: UIView!
    
    @IBOutlet weak var rubToEuroButton: UIButton!
    @IBOutlet weak var euroToRubButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIElemnts()
    }
    
    private func setupUIElemnts()
    {
        setupConverterContainer()
        setupButtons()
    }
    
    private func setupConverterContainer()
    {
        converterContainerView.layer.cornerRadius = 8
        converterContainerView.clipsToBounds = true
    }
    
    private func setupButtons()
    {
        for aButton in [euroToRubButton,rubToEuroButton] {
            aButton?.layer.cornerRadius = 8
            aButton?.clipsToBounds = true
            aButton?.layer.borderColor = UIColor.white.cgColor
            aButton?.layer.borderWidth = 1
        }
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
