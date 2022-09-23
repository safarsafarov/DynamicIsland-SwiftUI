//
//  ContentView.swift
//  DynamicIsland
//
//  Created by Safar Safarov on 22/09/22.
//

import SwiftUI

struct DynamicIslandView: View {
    
    @Binding var expanded: Bool
    
    var body: some View {
        
        
        VStack {
            
            HStack {
                Image("desk")
                    .resizable()
                    .frame(width: expanded ? 80 : 30, height: expanded ? 80 : 30)
                    .clipShape(Circle())
                    .padding(10)
                
                if expanded {
                    VStack(alignment: .leading) {
                        Text("Desk")
                            .font(.title)
                        Text("Under the red hood")
                            .opacity(0.5)
                    }.foregroundColor(.white)
                }
                
                
                Spacer()
                Image(systemName: "chart.bar.fill")
                    .foregroundColor(.white)
                    .padding(10)
            }.frame(maxWidth: .infinity, maxHeight: expanded ? 200 : 60)
                .contentShape(Rectangle())
                .onTapGesture {
                    withAnimation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 1.0)) {
                        expanded.toggle()
                    }
                    
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
