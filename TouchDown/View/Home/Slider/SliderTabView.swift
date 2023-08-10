//
//  SliderTabView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 08/08/2023.
//

import SwiftUI

struct SliderTabView: View {
    
    // MARK: - PROPERTIES
    private let timer = Timer.publish(every: 3, on: .main, in: .common).autoconnect()
    @State private var selection = 0

    // MARK: - BODDY
    var body: some View {
        TabView(selection: $selection) {
            ForEach(players) { player in
                SliderItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .onReceive(timer) { _ in
            withAnimation {
                selection = selection < players.count ? selection+1 : 0
            }
        }
    }
}

struct SliderTabView_Previews: PreviewProvider {
    static var previews: some View {
        SliderTabView()
            .previewDevice("iPhone 14")
            .background(Color.gray)
    }
}
