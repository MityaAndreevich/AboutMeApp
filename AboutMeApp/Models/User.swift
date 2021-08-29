//
//  User.swift
//  AboutMeApp
//
//  Created by Дмитрий Логачёв on 29.08.2021.
//

struct User {
    let login = "User"
    let password = "Password"
    let person: Person
    
   static func getInfo() -> User {
    User(person: Person())
    }
}

struct Person {
    let name = "Dmitry"
    let surname = "Logachev"
    let hobby = "Hobby: Psychology, Boxing, Fitness, cars, Swift)"
    let eduation = "Education: Master of Economics"
    let job = "Jobs: Researcher in Jato, entrepreneurship: selling sousages, making CVs."
}
