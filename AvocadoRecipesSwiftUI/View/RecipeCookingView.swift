//
//  RecipeCookingView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 08/07/2024.
//

import SwiftUI

struct RecipeCookingView: View {
    
    var recipe: Recipe
    
    var body: some View {
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

    }
}

#Preview {
    RecipeCookingView(recipe: recipesData[1])
}
