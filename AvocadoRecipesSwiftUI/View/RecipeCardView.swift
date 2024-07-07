//
//  RecipeCardView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 07/07/2024.
//

import SwiftUI

struct RecipeCardView: View {
    
    var recipe: Recipe
    
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
                HStack(alignment: .center, spacing: 5) {
                    ForEach(0..<recipe.rating, id: \.self) { item in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    }
                }
                
                //Cooking
                HStack(alignment: .center, spacing: 12, content: {
                    HStack(alignment: .center, spacing: 2, content: {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    })
                    
                    HStack(alignment: .center, spacing: 2, content: {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    })
                    
                    HStack(alignment: .center, spacing: 2, content: {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    })
                })
                .font(.footnote)
                .foregroundColor(.gray)
                
            })
            .padding()
            .padding(.bottom, 12)
            
        }
        .background(.white)
        .cornerRadius(12)
        .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 0)
    }
}

#Preview {
    RecipeCardView(recipe: recipesData[0])
}
