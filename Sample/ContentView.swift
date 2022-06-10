//
//  ContentView.swift
//  Sample
//
//  Created by Rudrank Riyam on 10/06/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isTrue = true
    
    var body: some View {
        Button(action: { isTrue = false }) {
            Text("HELLO")
        }

        if isTrue {
            Text("IS TRUE")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
