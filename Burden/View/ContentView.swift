//
//  ContentView.swift
//  Burden
//
//  Created by Gianmarco on 20/10/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var score = TheScore()
    var body: some View {
        PlayerModeView()
            .environmentObject(score)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
