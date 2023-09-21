//
//  ContentView.swift
//  Dicee
//
//  Created by Jinyoung Yoo on 2023/09/21.
//

import SwiftUI

struct ContentView: View {
    @State var diceNum1: Int = 1
    @State var diceNum2: Int = 2
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(number: diceNum1)
                    DiceView(number: diceNum2)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    diceNum1 = Int.random(in: 1...6)
                    diceNum2 = Int.random(in: 1...6)
                }, label: {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                })
                .background(.red)
                // ios15 이상부터 뷰가 Safe Area와 만나면 Style(Colors, Blur Effects, Gradients)가 Safe Area 바깥으로 흘러나가게 된다고 한다.
                
                // 이유: 네비게이션 뷰는 보통 Safe Area를 넘어서까지 차지하는데, 이러한 네비게이션 뷰의 Style 처리의 간편함을 위해서 알아서 흘러나가게 만들었다고 함
            }
            .padding(.bottom)
            // 그래서 안 흘러가게 padding을 준거임
        }
    }
}

#Preview {
    ContentView()
}

struct DiceView: View {
    let number: Int
    
    var body: some View {
        Image("dice\(number)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
