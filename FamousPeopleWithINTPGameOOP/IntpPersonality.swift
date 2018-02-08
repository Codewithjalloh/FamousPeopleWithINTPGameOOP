//
//  IntpPersonality.swift
//  FamousPeopleWithINTPGameOOP
//
//  Created by Jalloh on 08/02/2018.
//  Copyright © 2018 Jalloh. All rights reserved.
//

import Foundation

class IntpPersonality {
    let intpInfo:INTPDetail
    
    init(intpInfo:INTPDetail) {
        self.intpInfo = intpInfo
    }
    
    
    private func displayIntro() {
        print("Welcome to the \(intpInfo.name)!")
        print("There are \(intpInfo.intpPeople.count) people to explore.")
    }
    
    
    private func responseToThePrompt(prompt: String) -> String {
        print(prompt)
        return getTheUserInput()
    }
    
    
    
    
    
}
