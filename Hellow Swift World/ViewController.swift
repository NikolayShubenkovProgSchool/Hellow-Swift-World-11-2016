//
//  ViewController.swift
//  Hellow Swift World
//
//  Created by Nikolay Shubenkov on 26/11/2016.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!

    
    @IBAction func greetingButtonPressed(_ sender: UIButton)
    {
        
        greetUser()
    }
    
    private func greetUser()
    {
        guard let name = nameTextField.text,
            name.characters.count > 0 else {
                return
        }
        
        let alert = UIAlertController(title: "Ура!!!",
                                      message: "Привет, \(name)!",
                                      preferredStyle: .alert)
        
        let helloAction = UIAlertAction(title: "Привет!",
                                        style: .cancel,
                                        handler: nil)
        
        alert.addAction(helloAction)
        
        present(alert,
                animated: true,
                completion:{
                    print("Похоже на экране что-то появилось")
        })
    }
    
    
}

