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
    
    @IBOutlet weak var rubTextField: UITextField!
    @IBOutlet weak var euroTextField: UITextField!
    
    var converter = Converter(forwardRatio:70,
                              reverseRatio:1 / 73.5)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUIElemnts()
    }
    
    //MARK: - Setup
    
    private func setupUIElemnts()
    {
        setupConverterContainer()
        setupButtons()
        setupTextFields()
    }
    
    private func setupTextFields()
    {
        rubTextField.delegate = self
        euroTextField.delegate = self
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
    
    // MARK: - UI Events

    @IBAction func toEuroPressed(_ sender: UIButton)
    {
        guard let rubText = rubTextField.text,
            let rubValue  = Double(rubText) else {
                
                euroTextField.text = "Ошибка :("
                return
        }
        let euro = converter.convertBackward(amount: rubValue)
        
        euroTextField.text = "\(euro) €"
    }
    
    @IBAction func fromEuroPressed(_ sender: UIButton)
    {
        guard let euroText = euroTextField.text,
            let euroValue = Double(euroText) else {
                rubTextField.text = "Ошибка :("
                return
        }
        let rub = converter.convertForward(amount: euroValue)
        
        rubTextField.text = "\(rub) ₽"
    }
}

extension ConverterViewController : UITextFieldDelegate
{
    func textFieldDidBeginEditing(_ textField: UITextField)
    {
        textField.text = stringWithOnlyNumbersFrom(textField.text)
    }
    
    func stringWithOnlyNumbersFrom(_ source:String?)->String
    {
        guard let text = source else {
            return ""
        }
        let allowedChars = Set<Character>("1234567890.,".characters)
        
        let result = text.characters.filter { character -> Bool in
            //проверим, содержит ли разрешенный набор символов наш символ
            let containes = allowedChars.contains(character)
            return containes
        }
        return String(result)
    }
}



