//
//  ContentView.swift
//  SwiftUI-Flags_of_the_world
//
//  Created by Arpit Dixit on 21/07/21.
//

import SwiftUI

struct FlagList: View {
    
    let flags = ["🇦🇫", "🇦🇽", "🇦🇱", "🇩🇿", "🇦🇸", "🇦🇩"]
    
    @State private var flagVM = FlagViewModal()
    
    var body: some View {
        VStack {
            
            Text(flagVM.country)
            
            List {
                ForEach(flags, id: \.self) { flag in
                    HStack {
                        Text(flag)
                            .font(.custom("Arial", size: 100))
                        Spacer()
                    }.onTapGesture {
                        flagVM.flag = flag
                        flagVM.showModal.toggle()
                    }
                }
            }
            .sheet(isPresented: $flagVM.showModal, content: {
                FlagDetailView(flagVM: $flagVM)
            })
            
            HStack {
                Button("Show Modal") {
                    flagVM.showModal.toggle()
                }.sheet(isPresented: $flagVM.showModal, content: {
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
        FlagList()
    }
}
