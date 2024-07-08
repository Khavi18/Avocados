//
//  SettingsView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 06/07/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            
            
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif, weight: .bold))
                .foregroundColor(Color("ColorGreenAdaptive"))
            }//: VStack
            .padding()
            
            Form {
                Section {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                    
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Refresh Background")
                    }
                } header: {
                    Text("General Settings")
                }
                
                
                Section {
                    if enableNotification {
                        HStack {
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPad")
                        }
                        HStack {
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Khavi")
                        }
                        HStack {
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert")
                        }
                        HStack {
                            Text("Website").foregroundColor(.gray)
                            Spacer()
                            Text("github/Khavi18")
                        }
                        HStack {
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding!")
                        }
                    }
                    
                } header: {
                    Text("Application")
                }

            }//: Form
        }//: VStack
        .frame(maxWidth: 640)
    }
}

#Preview {
    SettingsView()
}
