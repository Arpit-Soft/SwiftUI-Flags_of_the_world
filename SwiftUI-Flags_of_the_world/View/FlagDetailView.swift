//
//  FlagDetailView.swift
//  SwiftUI-Flags_of_the_world
//
//  Created by Arpit Dixit on 22/07/21.
//

import SwiftUI

struct FlagDetailView: View {
    @Binding var flagVM: FlagViewModal
    var body: some View {
        VStack {
            Text(flagVM.flag)
                .font(.custom("Arial", size: 200))
            TextField("Enter country name", text: $flagVM.country)
                .padding()
                .fixedSize()
            Button("Submit") {
                flagVM.showModal.toggle()
            }
        }
    }
}

struct FlagDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FlagDetailView(flagVM: .constant(FlagViewModal(flag: "🇧🇼", country: "USA", showModal: true)))
    }
}
