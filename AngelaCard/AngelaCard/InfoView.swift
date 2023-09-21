//
//  InfoView.swift
//  AngelaCard
//
//  Created by Jinyoung Yoo on 2023/09/20.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .foregroundColor(.white)
            .frame(height: 80)
            .overlay {
                HStack {
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text).foregroundColor(Color("Info Color"))
                }
            }
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+82 10-3949-8621", imageName: "phone.fill").previewLayout(.sizeThatFits)
    }
}
