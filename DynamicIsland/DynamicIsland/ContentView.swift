//
//  ContentView.swift
//  DynamicIsland
//
//  Created by Safar Safarov on 22/09/22.
//

import SwiftUI
//import DynamicIsland

struct DynamicIslandView: View {
    var body: some View {
        VStack {
            
            HStack {
                Image("desk")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .clipShape(Circle())
                    .padding(10)
                
                Spacer()
                Image(systemName: "chart.bar.fill")
                    .foregroundColor(.white)
                    .padding(10)
            }.frame(maxWidth: .infinity, maxHeight: 60)
                .contentShape(Rectangle())
                .background {
                    Color.black
                }
            
                .clipShape(RoundedRectangle(cornerRadius: 40.0, style: .continuous))
                .padding()
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
