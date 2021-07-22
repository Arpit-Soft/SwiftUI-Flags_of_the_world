//
//  ContentView.swift
//  SwiftUI-Flags_of_the_world
//
//  Created by Arpit Dixit on 21/07/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showModal = false
    @State private var selectedFlag = ""
    let flags = [["🇦🇫", "Country 1"], ["🇦🇽", "Country 2"], ["🇦🇱", "Country 3"], ["🇩🇿", "Country 4"], ["🇦🇸", "Country 5"], ["🇦🇩", "Country 6"]]
    
    var body: some View {
        VStack {
            List {
                ForEach(flags, id: \.self) { flag in
                    HStack {
                        Text(flag[0])
                            .font(.custom("Arial", size: 100))
                        Text(flag[1])
                            .font(.title)
                            .padding()
                    }.onTapGesture {
                        showModal.toggle()
                        selectedFlag = flag[0]
                    }
                }
            }
            .sheet(isPresented: $showModal, content: {
                Text(selectedFlag)
                    .font(.custom("Arial", size: 200))
            })
            
            HStack {
                Button("Show Modal") {
                    showModal.toggle()
                }.sheet(isPresented: $showModal, content: {
                    Text("Modal Opened")
                })
                .font(.title)
                .padding(10)
                .background(Color.blue)
                .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
