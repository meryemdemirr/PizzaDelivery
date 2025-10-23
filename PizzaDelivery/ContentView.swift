//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                HStack {
                    Image("user") //button
                        .resizable()
                        .frame(width: 50, height: 50)
                        .scaledToFit()
                        .clipShape(Circle())
                    
                    Text("Meryem Demir")
                        .font(.headline)
                        
                    Spacer()
                    //button
                    Image("sepet")
                        .resizable()
                        .frame(width: 30, height: 30)
                }
                .padding(.horizontal, 20)
                
                VStack {
                    HStack {
                        Text("Extra Discount")
                            .font(.system(size: 20, weight: .bold))
                            
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        
                        Button(action: {
                            
                        }) {
                            Text("See All")
                                .foregroundColor(.orange) //turuncu kırmızı karışımı renk eklenecek
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 15)
                        }
                    }
                    //button 
                    Image("pizza sale")
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding(.leading, 10)
                        .padding(.trailing, 10)
                    
                }
                
                
                Text("Categories")
                    .font(.system(size: 20, weight: .bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                
                
                HStack(spacing: 15) {
                    
                    CategoryButton(title: "Pizza", imageName: "pizza slice")
                    CategoryButton(title: "Burger", imageName: "burger")
                    CategoryButton(title: "Pasta", imageName: "pasta")
                    
                }
            }
        }
        
    }
}


struct CategoryButton: View {
    let title: String
    let imageName: String
    @State private var isSelected = false

    var body: some View {
        Button(action: {
            isSelected.toggle()
        }) {
            HStack(spacing: 8) {
                Image(imageName)
                    .resizable()
                    .renderingMode(isSelected ? .original : .template) // tıklanınca kendi rengi
                    .foregroundColor(.gray) // tıklanmadan önce gri
                    .frame(width: 20, height: 20)
                
                Text(title)
                    .foregroundColor(isSelected ? .red : .black)
                    .font(.system(size: 16, weight: .medium))
            }
            .padding(.vertical, 8)
            .padding(.horizontal, 14)
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(isSelected ? Color.red : Color.gray.opacity(0.5), lineWidth: 2)
            )
        }
    }
}


#Preview {
    ContentView()
}

