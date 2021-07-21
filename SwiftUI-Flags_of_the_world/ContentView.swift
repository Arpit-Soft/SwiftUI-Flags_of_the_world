//
//  ContentView.swift
//  SwiftUI-Flags_of_the_world
//
//  Created by Arpit Dixit on 21/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal = false
    
    var body: some View {
        Button("Show Modal") {
            showModal.toggle()
        }.sheet(isPresented: $showModal, content: {
            Text("Modal Opened")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
