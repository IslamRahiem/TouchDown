//
//  LogoView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 08/08/2023.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4) {
            Text("TOUCH")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
            
            Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height:  30, alignment: .center)
            
            Text("DOWN")
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.black)
        } //: HStack
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
