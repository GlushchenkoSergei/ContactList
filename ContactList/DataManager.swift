//
//  DataManager.swift
//  ContactList
//
//  Created by mac on 02.06.2022.
//

import Foundation

class DataManager {
    static let shared = DataManager()
    private init() {}
    
    let names = [
        "Sergey",
        "Andrey",
        "Svetlana",
        "Alena",
        "Mihail",
        "Alexey",
        "Egor"]
    
    let surnames = [
        "Glushchenko",
        "Avilov",
        "Tereshenko",
        "Ivanova",
        "Voskresov",
        "Lazutin",
        "Rizkov"
    ]
    
    let emails = [
        "qwerty@mail.ru",
        "some@icloud.com",
        "net@mail.ru",
        "123@yandex.ru",
        "anyadres@sobaka.ru",
        "leha@ru",
        "riziy@mail.ru"
    ]
    
    let phones = [
        "89761112233",
        "89324512233",
        "89999999999",
        "81111111111",
        "89222222222",
        "89333333333",
        "89995777755"
    ]
}
