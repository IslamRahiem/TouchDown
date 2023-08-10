//
//  BrandsGridView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 09/08/2023.
//

import SwiftUI

struct BrandsGridView: View {
    
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            } //: HGrid
            .frame(height: 200)
            .padding(15)
        } //: Scroll
    }
}

struct BrandsGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandsGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
