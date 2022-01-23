//
//  PersonViewModel.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import Foundation

class PersonViewModel: ObservableObject{
    @Published var people: [Person] = []
    
    init() {
        people = addPeople()
    }
    
    func removeLastPerson(){
        people.removeLast()
    }
    
    func removeFirst(){
        people.removeFirst()
    }
    
    func shuffleOrder(){
        people.shuffle()
    }
    
    func reverseOrder(){
        people.reverse()
    }
    
    func addPeople() -> [Person]{
        let peopleData = [
            Person(name: "John Snow", email: "john@gmail.com", phoneNumber: "111-111"),
            Person(name: "Robert Baretheon", email: "robert@gmail.com", phoneNumber: "222-222"),
            Person(name: "Cersi Lanecter", email: "cersi@gmail.com", phoneNumber: "333-333"),
            Person(name: "Denerys Targeryan", email: "denerys@gmail.com", phoneNumber: "444-444"),
            Person(name: "Samuel Tarrly", email: "samuel@gmail.com", phoneNumber: "555-555")
        ]
        return peopleData
    }
}
