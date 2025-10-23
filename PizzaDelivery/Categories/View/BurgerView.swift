//
//  BurgerView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct BurgerView: View {
    let burger: Burger
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(burger.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            
            Text(burger.name)
                .font(.headline)
                .lineLimit(2)
            
            Text(burger.price)
                .font(.subheadline)
                .foregroundColor(.red)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.3)))
    }
}


#Preview {
    BurgerView(burger: Burger(name: "cheese pizza", imageName: "cheese pizza", price: "200"))
}
