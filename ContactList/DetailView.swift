//
//  DetailView.swift
//  ContactList
//
//  Created by mac on 02.06.2022.
//

import SwiftUI

struct DetailView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            .frame(height: 200, alignment: .center)
            CustomElementRowView(nameImage: "phone", text: person.phone)
            CustomElementRowView(nameImage: "tray", text: person.email)
        }
        .listStyle(.grouped)
        .navigationTitle(person.fullName)
    }
}


struct DitailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(person: Person(name: "Sergey", surname: "Glushchenko", email: "ddddd@mail.ru", phone: "+7-988-***-**-96"))
    }
}
