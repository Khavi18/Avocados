//
//  RecipeCardView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 07/07/2024.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
    
    @State private var showModal: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            //MARK: - CARD IMAGE
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay(
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: "bookmark")
                            .font(Font.title.weight(.light))
                            .foregroundColor(.white)
                            .imageScale(.small)
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 2, x: 0, y: 0)
                            .padding(.trailing, 20)
                            .padding(.top, 22)
                            Spacer()
                        }
                    }
                )
            
            VStack(alignment: .leading, spacing: 12, content: {
                
                //Title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(Color("ColorGreenMedium"))
                    .lineLimit(2)
                //Headling
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                //Rates
                RecipeRatingView(recipe: recipe)
                
                //Cooking
                RecipeCookingView(recipe: recipe)
            })
            .padding()
            .padding(.bottom, 12)
            
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
        .onTapGesture {
            self.hapticImpact.impactOccurred()
            self.showModal = true
        }
        .sheet(isPresented: self.$showModal, content: {
            RecipeDetailView(recipe: self.recipe)
        })
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}
