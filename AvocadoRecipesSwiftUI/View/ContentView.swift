//
//  ContentView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 06/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    var recipes: [Recipe] = recipesData
    
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    //MARK: - Header
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 20, content: {
                            ForEach(headers) { item in
                                HeaderView(header: item)
                            }
                        })
                    }
                    //MARK: - Dishes
                    Text("Avocado Dishes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    DishesView()
                        .frame(maxWidth: 640)
                    
                    //MARK: - Facts
                    Text("Avocado Facts")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(alignment: .top, spacing: 60, content: {
                            ForEach(facts) { item in
                                FactsView(fact: item)
                            }
                        })
                        .padding(.vertical)
                        .padding(.leading, 60)
                        .padding(.trailing, 20)
                    }
                    
                    //MARK: - Recipes
                    Text("Avocado Recipes")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .center, spacing: 20, content: {
                        ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                        }
                    })
                    .frame(maxWidth: 640)
                    .padding(.horizontal)
                    
                    //MARK: - Footer
                    VStack(alignment: .center, spacing: 20, content: {
                        Text("All About Avocados")
                            .fontWeight(.bold)
                            .modifier(TitleModifier())
                        
                        Text("Everything you wanted to know about avocados but were too afraid to ask.")
                            .font(.system(.body, design: .serif))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.gray)
                            .frame(minHeight: 60)
                    })//: VStack
                    .frame(maxWidth: 640)
                    .padding()
                    .padding(.bottom, 85)
                    
                }
            }
            .ignoresSafeArea(.container, edges: .all)
            .padding(0)
        }
        .padding()
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

#Preview {
    ContentView(headers: headersData, facts: factsData, recipes: recipesData)
}
