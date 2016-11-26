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
    
    func convertForward(amount:Double)->Double
    {
        return amount * forwardRatio
    }
    
    func convertBackward(amount:Double)->Double
    {
        return amount * reverseRatio
    }
}
