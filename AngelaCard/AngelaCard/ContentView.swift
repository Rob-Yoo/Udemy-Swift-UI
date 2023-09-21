//
//  ContentView.swift
//  AngelaCard
//
//  Created by Jinyoung Yoo on 2023/09/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.64, green: 0.61, blue: 1.00)
                .ignoresSafeArea()
            VStack {
                Image("profile")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 5.0)
                    }
                Text("Jinyoung Yoo")
                    .foregroundColor(.white)
                    .font(Font.custom("Pacifico-Regular", size: 40))
                Divider()
                VStack {
                    InfoView(text: "+82 10-3949-8621", imageName: "phone.fill")
                    InfoView(text: "jin12243@gmail.com", imageName: "envelope.fill")
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
