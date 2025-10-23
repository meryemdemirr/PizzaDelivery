//
//  PizzaView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct PizzaView: View {
    let pizza : Pizza
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(pizza.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            
            Text(pizza.name)
                .font(.headline)
                .lineLimit(2)
            
            Text(pizza.price)
                .font(.subheadline)
                .foregroundColor(.red)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.3)))
    }
}

#Preview {
    PizzaView(pizza: Pizza(name: "cheese pizza", imageName: "cheese pizza", price: "100"))
}
