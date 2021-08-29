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
    
   // static func getInfo() -> User {
    //}
}

struct Person {
    let name = "Dmitry"
    let surname = "Logachev"
    let someInfo: SomeInfo
}

struct SomeInfo {
    let hobby = "Psychology, Boxing, Fitness, cars, Swift)"
    let eduation = "Master of Economics"
    let job = "Researcher in Jato, entrepreneurship: selling sousages, making CV."
}
