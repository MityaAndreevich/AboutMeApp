//
//  User.swift
//  AboutMeApp
//
//  Created by Дмитрий Логачёв on 29.08.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
   static func getInfo() -> User {
    User(
        login: "User",
        password: "Password",
        person: Person.getPersonInfo()
    )
    }
}

struct Person {
    let name: String
    let surname: String
    let hobby: String
    let eduation: String
    let job: String
    let finale: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersonInfo() -> Person {
        Person(
            name: "Dmitry",
            surname: "Logachev",
            hobby: "Hobby: Psychology, Sports, cars, Swift",
            eduation: "Education: Master of Economics",
            job: "Jobs: Researcher in jato, entrepreneurship",
            finale: "No! That;s all folks!"
        )
    }
}
