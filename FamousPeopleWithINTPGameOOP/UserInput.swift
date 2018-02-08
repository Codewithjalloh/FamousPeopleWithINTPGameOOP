//
//  UserInput.swift
//  FamousPeopleWithINTPGameOOP
//
//  Created by Jalloh on 08/02/2018.
//  Copyright © 2018 Jalloh. All rights reserved.
//

import Foundation


func getTheUserInput() -> String {
    
    let standardInput = FileHandle.standardInput
    var input = NSString(data: standardInput.availableData, encoding: String.Encoding.utf8.rawValue)
    
    input = input!.trimmingCharacters(in: CharacterSet.newlines) as NSString
    
    return input! as String
}
