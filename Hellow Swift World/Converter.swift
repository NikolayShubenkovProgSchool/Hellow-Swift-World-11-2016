//
//  Converter.swift
//  Hellow Swift World
//
//  Created by Nikolay Shubenkov on 26/11/2016.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import UIKit

struct Converter {
    
    let forwardRatio:Double
    let reverseRatio:Double
    
    //степень округления
    var precision:Int {
        didSet {
            if precision < 0 {
                precision = 0
            }
        }
    }
    
    func convertForward(amount:Double)->Double
    {
        return roundValue(amount: amount * forwardRatio)
    }
    
    func convertBackward(amount:Double)->Double
    {
        return roundValue(amount: amount * reverseRatio)
    }
    
    private func roundValue(amount:Double)->Double
    {
        let multiply = pow(10, Double(precision))
        let newValue  = round(amount * multiply) / multiply
        return newValue
    }
}
