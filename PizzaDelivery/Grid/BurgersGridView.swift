//
//  BurgersGridView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct BurgersGridView: View {
    let burgers: [Burger] = [
            Burger(name: "Chicken Burger", imageName: "burger1", price: "200"),
           
        ]
        
        let columns = [GridItem(.flexible()), GridItem(.flexible())]
        
        var body: some View {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 16) {
                    ForEach(burgers) { burger in
                        BurgerView(burger: burger)
                    }
                }
                .padding(.horizontal, 16)
                .padding(.top, 10)
            }
            
        }
}

#Preview {
    BurgersGridView()
}
