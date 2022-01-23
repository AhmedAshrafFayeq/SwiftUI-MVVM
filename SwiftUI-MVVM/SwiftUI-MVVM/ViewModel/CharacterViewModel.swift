//
//  CharacterViewModel.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import Foundation

class CharacterViewModel: ObservableObject{
    @Published var Characters: [Character] = []
    
    init() {
        Characters = addPeople()
    }
    
    func removeLastPerson(){
        Characters.removeLast()
    }
    
    func removeFirst(){
        Characters.removeFirst()
    }
    
    func shuffleOrder(){
        Characters.shuffle()
    }
    
    func reverseOrder(){
        Characters.reverse()
    }
    
    func addPeople() -> [Character]{
        let peopleData = [
            Character(imageName: "JohnS", name: "John Snow", email: "john@gmail.com", phoneNumber: "111-111"),
            Character(imageName: "TerrionLanecter", name: "Terrion Lanecter", email: "Terrion@gmail.com", phoneNumber: "222-222"),
            Character(imageName: "Cerssi", name: "Cersi Lanecter", email: "cersi@gmail.com", phoneNumber: "333-333"),
            Character(imageName: "deneris", name: "Denerys Targeryan", email: "denerys@gmail.com", phoneNumber: "444-444"),
            Character(imageName: "Samuel", name: "Samuel Tarrly", email: "samuel@gmail.com", phoneNumber: "555-555")
        ]
        return peopleData
    }
}
