//
//  Person.swift
//  SUIxUIKIT
//
//  Created by Muhammad Fawwaz Mayda on 17/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let imageNamed: String
    
    init(name: String, imageNamed: String) {
        self.name = name
        self.imageNamed = imageNamed
    }
}

struct Mentor: Identifiable {
    let id = UUID()
    let mentorType: String
    var mentors: [Person] = [Person]()
    init(mentorType: String) {
        self.mentorType = mentorType
    }
}

class academyStore: ObservableObject {
    @Published var dataMentor = [Mentor]()
    init() {
        addTech()
        addDesign()
        addTS()
    }
    
    func addTech() {
        let david = Person(name: "DavidGun", imageNamed: "david")
        let thoya = Person(name: "thoya", imageNamed: "thoya")
        let handy = Person(name: "handy", imageNamed: "handy")
        var techMentor = Mentor(mentorType: "Tech")
        techMentor.mentors.append(david)
        techMentor.mentors.append(thoya)
        techMentor.mentors.append(handy)
        dataMentor.append(techMentor)
    }
    
    func addDesign() {
        let phil = Person(name: "Phil", imageNamed: "phil")
        let desi = Person(name: "desi", imageNamed: "desi")
        let george = Person(name: "george", imageNamed: "george")
        var designMentor = Mentor(mentorType: "Design")
        designMentor.mentors.append(phil)
        designMentor.mentors.append(desi)
        designMentor.mentors.append(george)
        dataMentor.append(designMentor)
    }
    
    func addTS() {
        let made = Person(name: "made", imageNamed: "made")
        var ts = Mentor(mentorType: "Techincal")

        ts.mentors.append(made)
        dataMentor.append(ts)
    }
}


let david = Person(name: "DavidGun", imageNamed: "david")
