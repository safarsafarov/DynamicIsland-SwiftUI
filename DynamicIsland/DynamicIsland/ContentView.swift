//
//  ContentView.swift
//  DynamicIsland
//
//  Created by Safar Safarov on 22/09/22.
//

import SwiftUI
//import DynamicIsland

struct DynamicIslandView: View {
    
    @Binding var expanded: Bool
    
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
                .onTapGesture {
                    expanded.toggle()
                }
                .background {
                    Color.black
                }
            
                .clipShape(RoundedRectangle(cornerRadius: 40.0, style: .continuous))
                .padding()
        }
    }
}





struct ContentView: View {
    
    @State private var expanded: Bool = false
    
    var body: some View {
        VStack {
            DynamicIslandView(expanded: $expanded)
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
