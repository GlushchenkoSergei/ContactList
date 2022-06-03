//
//  CustomElementRowView.swift
//  ContactList
//
//  Created by mac on 03.06.2022.
//

import SwiftUI

struct CustomElementRowView: View {
    let nameImage: String
    let text: String
    
    
    var body: some View {
        HStack {
            Image(systemName: nameImage)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct CustomElementRowView_Previews: PreviewProvider {
    static var previews: some View {
        CustomElementRowView(nameImage: "phone", text: "Номер телефона")
    }
}
