//
//  PeopleView.swift
//  SwiftUI-MVVM
//
//  Created by Ahmed Fayeq on 23/01/2022.
//

import SwiftUI

struct PeopleView: View {
    
    @ObservedObject var viewModel = PersonViewModel()
    var body: some View {
        
        ForEach(viewModel.people){ person in
            
            Image(person.imageName)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
