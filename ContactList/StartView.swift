//
//  StartView.swift
//  ContactList
//
//  Created by mac on 02.06.2022.
//

import SwiftUI

struct StartView: View {
   private let persons = Person.getPersons()
    
    var body: some View {
        TabView {
            ContactView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.fill")
                    Text("Contacts")
                }
            NumberView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
