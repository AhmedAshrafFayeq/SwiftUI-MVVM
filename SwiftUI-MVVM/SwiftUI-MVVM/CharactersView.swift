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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CharactersView()
    }
}
