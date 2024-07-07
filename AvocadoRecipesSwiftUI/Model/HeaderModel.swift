//
//  HeaderModel.swift
//  AvocadoRecipesSwiftUI
//
//  Created by Khavishini on 07/07/2024.
//

import SwiftUI

//MARK: - Header Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
