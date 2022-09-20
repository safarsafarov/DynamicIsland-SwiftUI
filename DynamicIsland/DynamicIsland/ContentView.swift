//
//  ContentView.swift
//  DynamicIsland
//
//  Created by Safar Safarov on 22/09/22.
//

import SwiftUI


struct DynamicIslandView: View {
    var body: some View {
        VStack {
            
            HStack {
                Image("desk")
                    .resizable()
            }
        }
    }
}





struct ContentView: View {
    var body: some View {
        DynamicIslandView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
