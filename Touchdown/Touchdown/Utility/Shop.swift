//
//  Shop.swift
//  Touchdown
//
//  Created by Zdenko Čepan on 29/07/2021.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
