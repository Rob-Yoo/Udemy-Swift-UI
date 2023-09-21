//
//  ContentView.swift
//  I am Rich
//
//  Created by Jinyoung Yoo on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Color(.systemTeal).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack(spacing: 50) {
                    Text("I Am Rich").font(.system(size: geometry.size.width * 0.1)).fontWeight(.bold).foregroundColor(Color.white)
                    Image("diamond").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: geometry.size.width * 0.5)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
