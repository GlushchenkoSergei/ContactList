//
//  NumberView.swift
//  ContactList
//
//  Created by mac on 02.06.2022.
//

import SwiftUI

struct NumberView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons, id: \.self) { section in
                    Section(section.fullName) {
                        CustomElementRowView(nameImage: "phone", text: section.phone)
                        CustomElementRowView(nameImage: "tray", text: section.email)
                       
                    }
                }
            }
            .navigationTitle("Contact List")
        }
    }
}

struct NumberView_Previews: PreviewProvider {
    static var previews: some View {
        NumberView(persons: Person.getPersons())
    }
}
