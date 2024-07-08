//
//  RipeningStagesView.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 06/07/2024.
//

import SwiftUI

struct RipeningStagesView: View {
    
    var ripeningStages: [Ripening] = ripeningData
    
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center,spacing: 25) {
                    ForEach(ripeningStages) { item in
                            RipeningView(ripening: item)
                    }
                } //: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            } //: VStack
        }//: ScrollView
        .ignoresSafeArea(.container, edges: .all)
    }
}

#Preview {
    RipeningStagesView(ripeningStages: ripeningData)
}
