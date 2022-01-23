//
//  CharactertCell.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import SwiftUI

struct CharactertCell: View {
    var character: Character
    var body: some View{
        
        HStack{
            Image(character.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 100)
                .cornerRadius(4)
                .padding(.vertical, 4)
            
            VStack(alignment: .leading, spacing: 5){
                Text(character.name)
                    .fontWeight(.semibold)
                    .minimumScaleFactor(0.5)
                
                Text(character.email)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
