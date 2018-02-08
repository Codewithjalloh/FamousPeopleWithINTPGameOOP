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
    
    private func greetPerson() {
        let name = responseToThePrompt(prompt: "What is your name?")
        print("Nice to meet you, \(name). My Name is SiriX11, I also have the INTP Personality Trait :)")
    }
    
    private func explore(peopleName: String) {
        print("Exploring \(peopleName)")
        
        for person in intpInfo.intpPeople {
            if peopleName == person.name {
                print("My Name is \(person.name). \(person.description)")
            }
        }
    }
    
    private func determinOptions() {
        var decision = ""
        while !(decision == "Y" || decision == "N") {
            decision = responseToThePrompt(prompt: "Shall I random choose a person to explore (Y or N)")
            
            
            if decision == "Y" {
                if let person = intpInfo.randomINTPPerson {
                    explore(peopleName: person.name)
                } else {
                    print("cannot find this person")
                }
            } else if decision == "N" {
                let personName = responseToThePrompt(prompt: "Ok name the person you want to explore")
                explore(peopleName: personName)
            } else {
                print("cannot find you")
            }
            
        }
    }

    func start() {
        displayIntro()
        greetPerson()
        if !intpInfo.intpPeople.isEmpty {
            print("lets go and explore INTP Personality Trait")
            determinOptions()
        }
    }
    
    
}
