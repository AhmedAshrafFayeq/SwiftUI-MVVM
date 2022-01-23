//
//  CharactersView.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import SwiftUI

struct CharactersView: View {
    
    @ObservedObject var viewModel = CharacterViewModel()
    var body: some View {
        
        NavigationView{
            List(viewModel.Characters, id: \.id){ charcter in
                CharactertCell(character: charcter)
            }
            .navigationTitle("GOT Main Characters")
            .navigationBarItems(trailing:
                                    Menu("Menu".uppercased()){
                                        Button("Reverse", action: viewModel.reverseOrder)
                                        Button("Remove First", action: viewModel.removeFirst)
                                        Button("Remove Last", action: viewModel.removeLast)
                                        Button("Shuffle", action:viewModel.shuffleOrder)
                                    }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
