//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Islam Rahiem on 09/08/2023.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop

    
    // MARK: - BODY
    var body: some View {
      Button(action: {
        feedback.impactOccurred()
      }, label: {
        Spacer()
        Text("Add to cart".uppercased())
          .font(.system(.title2, design: .rounded))
          .fontWeight(.bold)
          .foregroundColor(.white)
        Spacer()
      }) //: BUTTON
      .padding(15)
      .background(shop.selectedProduct?.colorHex ?? .clear)
      .clipShape(Capsule())
    }
  }

  // MARK: - PREVIEW

  struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
      AddToCartDetailView()
            .environmentObject(Shop())
        .previewLayout(.sizeThatFits)
        .padding()
    }
  }
