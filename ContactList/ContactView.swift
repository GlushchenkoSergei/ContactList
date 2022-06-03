//
//  ContactView.swift
//  ContactList
//
//  Created by mac on 02.06.2022.
//

import SwiftUI

struct ContactView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            VStack {
                List(persons, id: \.self) { person in
                    NavigationLink(person.fullName) {
                        DetailView(person: person)
                    }
                }
                .listStyle(.plain)
            }
            .navigationTitle("Contact List")
        }
    }
}


struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(persons: Person.getPersons())
    }
}
