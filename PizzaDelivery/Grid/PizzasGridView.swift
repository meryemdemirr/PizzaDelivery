//
//  PizzasGridView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct PizzasGridView: View {
    
    let pizzas: [Pizza] = [
            Pizza(name: "Cheese Pizza", imageName: "cheese pizza", price: "200"),
            Pizza(name: "Chicken Pizza", imageName: "chickenpizza", price: "220")
        ]
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
        
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(pizzas) { pizza in
                    PizzaView(pizza: pizza)
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 10)
            }
        }
    
}

#Preview {
    PizzasGridView()
}
