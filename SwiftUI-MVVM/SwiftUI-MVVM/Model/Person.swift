//
//  Person.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import Foundation

struct Person: Identifiable{
    let id =  UUID()
    var imageName, name, email, phoneNumber: String
}
