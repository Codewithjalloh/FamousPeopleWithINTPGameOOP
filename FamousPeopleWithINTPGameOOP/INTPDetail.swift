//
//  INTPDetail.swift
//  FamousPeopleWithINTPGameOOP
//
//  Created by Jalloh on 08/02/2018.
//  Copyright © 2018 Jalloh. All rights reserved.
//

import Foundation


class INTPDetail {
    
    let name: String
    let intpPeople: [INTP]
    
    var randomINTPPerson: INTP? {
        if intpPeople.isEmpty {
            return nil
        } else {
            let index = Int(arc4random_uniform(UInt32(intpPeople.count)))
            return intpPeople[index]
        }
    }
    
    init(name: String, intpPeople: [INTP] ) {
        self.name = name
        self.intpPeople = intpPeople
    }
    
}
