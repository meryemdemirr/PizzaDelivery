//
//  ContentView.swift
//  PizzaDelivery
//
//  Created by Meryem Demir on 23.10.2025.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedCategory: String? = nil
    @State private var showSheet = false // 💡
    var body: some View {
        NavigationStack {
            VStack(spacing: 25) {
                VStack {
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
                }
                
                
                VStack(spacing: 20) {
                    HStack  {
                        Text("Extra Discount")
                            .font(.system(size: 20, weight: .bold))
                            
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)
                        
                        NavigationLink(destination: DiscountProducts()) {
                            Text("See All") // turuncu/kırmızı karışımı renk
                                .foregroundColor(.orange)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.trailing, 15)
                        }
                    }
                    
                    NavigationLink(destination: DiscountProducts()) {
                        Image("pizza sale")
                            .resizable()
                            .scaledToFit()
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .padding(.leading, 10)
                            .padding(.trailing, 10)
                    }
                    
                    
                    
                }
                
                VStack(spacing: 15) {
                    Text("Categories")
                        .font(.system(size: 20, weight: .bold))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.leading, 10)
                    
               
                    HStack(spacing: 15) {
                        
                        NavigationLink(
                            destination: PizzasGridView(),
                                tag: "Pizza",
                                selection: $selectedCategory
                        ) {
                            CategoryButton(title: "Pizza",
                                imageName: "pizza slice",
                                isSelected: selectedCategory == "Pizza")
                        }
                       
                        NavigationLink(
                            destination: BurgersGridView(),
                                tag: "Burger",
                                selection: $selectedCategory
                        ) {
                            CategoryButton(title: "Burger",
                                imageName: "burger",
                                isSelected: selectedCategory == "Burger")
                        }
                       
                        
                        NavigationLink(
                            destination: PastasGridView(),
                                tag: "Pasta",
                                selection: $selectedCategory
                        ) {
                            CategoryButton(title: "Pasta",
                                imageName: "pasta",
                                isSelected: selectedCategory == "Pasta")
                        }
                       
                       
                        
                    }
                }
                
                
                VStack {
                    HStack {
                        Text("Populer Menu")
                            .font(.system(size: 20, weight: .bold))
                            
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 10)

                    }
                    
                    PizzasGridView()
                }
               
            }
            
        }
        
    }
}


struct CategoryButton: View {
    var title: String
    var imageName: String
    var isSelected: Bool  // 💡 dışarıdan alınacak

    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .renderingMode(isSelected ? .original : .template)
                .foregroundColor(isSelected ? .red : .gray)
                .scaledToFit()
                .frame(width: 24, height: 24)
            
            Text(title)
                .foregroundColor(isSelected ? .red : .black)
                .font(.headline)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .padding(.horizontal, 14)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .stroke(isSelected ? Color.red : Color.gray.opacity(0.5), lineWidth: 2)
        )
        .shadow(radius: 1)
    }
}



/*struct CategoryButton: View {
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
*/

#Preview {
    HomeView()
}

