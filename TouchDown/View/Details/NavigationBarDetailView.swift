//
//  NavigationBarDetailView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 09/08/2023.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Button(action: {
                    feedback.impactOccurred()
                    withAnimation(.easeIn) {
                        shop.selectedProduct = nil
                        shop.showingProduct = false
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .font(.title)
                        .foregroundColor(.white)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                }
            } //: HStack
            VStack(alignment: .leading, spacing: 5) {
                Text("Protective Gear")
                
                Text(shop.selectedProduct?.name ?? "")
                    .font(.largeTitle)
                    .fontWeight(.black)
            } //: VStack
            .foregroundColor(.white)
            .padding()

        }
    }
}

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
