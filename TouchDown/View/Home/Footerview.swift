//
//  Footerview.swift
//  TouchDown
//
//  Created by Islam Rahiem on 08/08/2023.
//

import SwiftUI

struct Footerview: View {
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmets in the market at affordable prices.")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("Copyright © Robert Petras\nAll right reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
        } //: VStack
        .padding()
    }
}

struct Footerview_Previews: PreviewProvider {
    static var previews: some View {
        Footerview()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
