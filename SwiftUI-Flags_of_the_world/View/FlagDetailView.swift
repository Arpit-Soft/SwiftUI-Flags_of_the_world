//
//  FlagDetailView.swift
//  SwiftUI-Flags_of_the_world
//
//  Created by Arpit Dixit on 22/07/21.
//

import SwiftUI

struct FlagDetailView: View {
    let flag: String
    @Binding var country: String
    @Binding var showModal: Bool
    var body: some View {
        VStack {
            Text(flag)
                .font(.custom("Arial", size: 200))
            TextField("Enter country name", text: $country)
                .padding()
                .fixedSize()
            Button("Submit") {
                showModal.toggle()
            }
        }
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(flag: "🇦🇲", country: .constant("India"), showModal: .constant(false))
    }
}
