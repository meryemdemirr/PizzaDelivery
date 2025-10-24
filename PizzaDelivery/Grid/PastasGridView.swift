//
//  PastasGridView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct PastasGridView: View {
    let pastas: [Pasta] = [
            Pasta(name: "Fettucini", imageName: "pasta", price: "200"),
            Pasta(name: "Margarita Makarna", imageName: "pasta1", price: "190"),
            
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


#Preview {
    PastasGridView()
}
