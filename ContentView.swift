//
//  ContentView.swift
//  Binding
//
//  Created by Abilash_Skyraan on 05/09/22.
//

import SwiftUI

struct ContentView: View {
    @State var Count = 0
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Button(action: {
                    Count += 1
                }, label: {
                    Text("update Count")
                })
                Text("\(Count)")
                NavigationLink(destination: {
                    SecondView(Count: $Count)
                }, label: {
                    Text("Second view")
                })
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
