//
//  Shop.swift
//  TouchDown
//
//  Created by Islam Rahiem on 09/08/2023.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
