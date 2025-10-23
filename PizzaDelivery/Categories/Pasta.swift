//
//  Pasta.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import Foundation

struct Pasta : Identifiable {
    let id = UUID()
    let name: String
    let imageName: String  // <-- bu mutlaka olmalı
    let price: String
}
