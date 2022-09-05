//
//  SecondView.swift
//  Binding
//
//  Created by Abilash_Skyraan on 05/09/22.
//

import SwiftUI

struct SecondView: View {
    @Binding var Count : Int
    var body: some View {
        Text("Value of Count : \(Count)")
        Button(action: {
            Count += 1
        }, label: {
            Text("Change from second view")
        })
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(Count: .constant(1))
    }
}
