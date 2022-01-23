//
//  PeopleView.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import SwiftUI

struct PeopleView: View {
    
    @ObservedObject var viewModel = CharacterViewModel()
    var body: some View {
        
        NavigationView{
            List(viewModel.Characters, id: \.id){ person in
                HStack{
                    Image(person.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 130, height: 100)
                        .cornerRadius(4)
                        .padding(.vertical, 4)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(person.name)
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                        
                        Text(person.email)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                }
            }
            .navigationTitle("GOT Main Characters")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
