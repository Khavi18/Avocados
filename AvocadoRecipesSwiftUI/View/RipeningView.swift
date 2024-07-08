//
//  RipeningView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 08/07/2024.
//

import SwiftUI

struct RipeningView: View {
    
    @State private var slideInAnimation: Bool = false
    var ripening: Ripening
    
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(Color("ColorGreenLight"))
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color("ColorAppearanceAdaptive"))
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(.easeInOut(duration: 1), value: slideInAnimation)
                .offset(y: slideInAnimation ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10, content: {
                //Stage
                VStack(alignment: .center, spacing: 0, content: {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif, weight: .bold))
                    
                    Text("STAGE")
                        .font(.system(.body, design: .serif, weight: .heavy))
                })
                .foregroundColor(Color("ColorGreenMedium"))
                .padding(.top, 65)
                .frame(width: 180)
                //Title
                Text(ripening.title)
                    .font(.system(.title, design: .serif, weight: .bold))
                    .foregroundColor(Color("ColorGreenMedium"))
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color("ColorGreenLight")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                //Description
                Spacer()
                Text(ripening.description)
                    .foregroundColor(Color("ColorGreenDark"))
                    .fontWeight(.bold)
                    .lineLimit(nil)
                Spacer()
                //Ripeness
                Text(ripening.ripeness.uppercased())
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif, weight: .bold))
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenDark")]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: Color("ColorBlackTransparentLight"), radius: 6, x: 0, y: 6)
                    )
                
                //Instruction
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(Color("ColorGreenLight"))
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                Spacer()
                
            })
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(
                LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .bottom, endPoint: .top)
                    
            )
            .cornerRadius(20)

        }//: VStack
        .ignoresSafeArea(.container, edges: .all)
        .onAppear(perform: {
            self.slideInAnimation.toggle()
        })
    }
}

#Preview {
    RipeningView(ripening: ripeningData[1])
}
