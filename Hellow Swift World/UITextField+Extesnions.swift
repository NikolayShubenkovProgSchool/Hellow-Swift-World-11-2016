//
//  UITextField+Extesnions.swift
//  Hellow Swift World
//
//  Created by Nikolay Shubenkov on 26/11/2016.
//  Copyright © 2016 Nikolay Shubenkov. All rights reserved.
//

import Foundation

extension String
{
    var convertedToNumber:String {
        
            let allowedChars = Set<Character>("1234567890.,".characters)
            
            let result = self.characters.filter { character -> Bool in
                //проверим, содержит ли разрешенный набор символов наш символ
                let containes = allowedChars.contains(character)
                return containes
            }
            return String(result)
    }
}
