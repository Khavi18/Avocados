//
//  RecipeRatingView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 08/07/2024.
//

import SwiftUI

struct RecipeRatingView: View {
    
    var recipe: Recipe
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            ForEach(0..<recipe.rating, id: \.self) { item in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RecipeRatingView(recipe: recipesData[0])
}
