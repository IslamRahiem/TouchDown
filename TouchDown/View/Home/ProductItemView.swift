//
//  ProductItemView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 09/08/2023.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: - PROPERTIES
    let product: Product
    
    
    // MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(product.colorHex)
            .cornerRadius(12)
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(Color.black)
            
            Text(product.formattedPrice)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color.gray)
            
        } //: VStack
    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
