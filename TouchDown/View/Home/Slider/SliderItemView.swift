//
//  SliderItemView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 08/08/2023.
//

import SwiftUI

struct SliderItemView: View {
    
    // MARK: - PROPERTIES
    let player: Player
    
    // MARK: - BODY
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct SliderItemView_Previews: PreviewProvider {
    static var previews: some View {
        SliderItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
