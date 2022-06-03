//
//  Person.swift
//  ContactList
//
//  Created by mac on 02.06.2022.
//

//import Foundation

struct Person: Hashable {
    
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        surname + name
    }
    
    
  static func getPersons() -> [Person] {
        var persons: [Person] = []
        
        let name = DataManager.shared.names.shuffled()
        let surname = DataManager.shared.surnames.shuffled()
        let phone = DataManager.shared.phones.shuffled()
        let email = DataManager.shared.emails.shuffled()
        
        for index in 0..<name.count {
            persons.append(Person( name: name[index],
                                  surname: surname[index],
                                  email: email[index],
                                  phone: phone[index]))
        }
        return persons
    }
}

