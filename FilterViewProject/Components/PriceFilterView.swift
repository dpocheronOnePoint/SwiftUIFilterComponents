//
//  TypeFilterView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI
import Resolver

struct PriceFilterView: View {
    @InjectedObject private var filterViewModel: FilterViewModel
    
    var body: some View {
        HStack {
            VStack {
                Text("Intervalle de prix")
                    .foregroundColor(.accentColor)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                HStack(alignment: .bottom, spacing: 20) {
                    NumberField(placeholder: "Prix min", text: $filterViewModel.minPriceString)
                    
                    Text("à")
                        .foregroundColor(.accentColor)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.vertical, 5)
                    
                    NumberField(placeholder: "Prix max", text: $filterViewModel.maxPriceString)
                }
                .padding(.horizontal, 20)
            } // VSTACK
            
            Image(systemName: "trash")
                .padding(.trailing, 10)
                .foregroundColor(.primary)
                .imageScale(.large)
        }
        .padding(.leading, 30)
    }
}

struct TypeFilterView_Previews: PreviewProvider {
    static var previews: some View {
        PriceFilterView()
    }
}
