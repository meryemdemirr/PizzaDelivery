//
//  PastasGridView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct PastasGridView: View {
    let pastas: [Pasta] = [
            Pasta(name: "Chicken Burger", imageName: "burger1", price: "200"),
            Pasta(name: "Double Burger", imageName: "burger1", price: "280"),
            Pasta(name: "Cheese Burger", imageName: "burger1", price: "240")
        ]
        
        let columns = [GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(pastas) { pasta in
                    PastaView(pasta: pasta)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 10)
            }
        }
    }
}

#Preview {
    PastasGridView()
}
