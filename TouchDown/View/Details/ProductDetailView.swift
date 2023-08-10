//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 09/08/2023.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop

    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // DETAIL TOP PART
            TopPartView()
                .padding(.horizontal)
                .zIndex(1)
            
            // DETAIL BOTTOM PART
            VStack(alignment: .leading, spacing: 0) {
                // RATTINGS + SIZES
                RatingsSizeDetailView()
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? "")
                    .font(.system(.body, design: .rounded))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.leading)
                } //: ScrollView
                
                // QUANTITY + FAVOURITE
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                //ADD TO CART
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            } //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -100)
            )
            
        } //: VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(shop.selectedProduct?.colorHex.ignoresSafeArea(.all, edges: .all))
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
    }
}
