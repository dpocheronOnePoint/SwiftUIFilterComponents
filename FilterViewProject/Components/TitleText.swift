//
//  TitleText.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct TitleText: View {
    let text: LocalizedStringKey
    
    var body: some View {
        Text(text)
            .foregroundColor(.accentColor)
            .font(.title3)
            .fontWeight(.semibold)
    }
}
