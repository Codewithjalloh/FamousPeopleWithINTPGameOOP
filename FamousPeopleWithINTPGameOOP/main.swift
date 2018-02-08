//
//  main.swift
//  FamousPeopleWithINTPGameOOP
//
//  Created by Jalloh on 08/02/2018.
//  Copyright © 2018 Jalloh. All rights reserved.
//

import Foundation


let peopleName = "INTP Personality Trait"

let inptData = [

    "Albert Einstein": "Albert Einstein is popularly known as the Father of Modern Physics. With this biography, get details about the life and works of this prolific physicist.",
    
    "Abraham Lincoln": "Abraham Lincoln was the sixteenth President of the United States. Read this brief biography and timeline to find more on his life and childhood.",
    
    "Alan Greenspan" : "Alan Greenspan is an influential American economist. This biography gives detailed information about his childhood, career and timeline.",
    
    "John Locke": "John Locke was a 17th century English philosopher and physician known as the Father of Classical Liberalism. This biography of John Locke provides detailed information about his childhood, life, achievements, works & timeline",
    
    
    "René Déscartes": "René Déscartes was a famous mathematician, writer and philosopher, who belonged to 16th century. Learn more about his childhood life and timeline from this biography",
    
    "Franz Kafka": "A renowned German-language novelist, Franz Kafka was considered as one of the best writers of 20th century. Read more about this prolific writer in the following article."
]


let inpts = inptData.map {name, desciption in INTP(name: name, description: desciption)}
let personDetail = INTPDetail(name: peopleName, intpPeople: inpts)


