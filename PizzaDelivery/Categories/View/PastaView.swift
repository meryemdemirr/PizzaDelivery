//
//  PastaView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct PastaView: View {
    let pasta : Pasta
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Image(pasta.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(12)
            
            Text(pasta.name)
                .font(.headline)
                .lineLimit(2)
            
            Text(pasta.price)
                .font(.subheadline)
                .foregroundColor(.red)
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 15).stroke(Color.gray.opacity(0.3)))
    }
}

#Preview {
    PastaView(pasta: Pasta(name: "pasta", imageName: "pasta", price: "200"))
}
