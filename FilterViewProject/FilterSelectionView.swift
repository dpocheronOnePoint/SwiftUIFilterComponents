//
//  FilterSelectionView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI
import Resolver

struct FilterSelectionView: View {
    @InjectedObject private var filterViewModel: FilterViewModel
    
    var body: some View {
        VStack(spacing: 30) {
            
            // MARK: - Type Filter
            if(!filterViewModel.globalFilter.typeFilter.isSelected) {
                FilterButton(
                    imageString: "house.fill",
                    buttonTitle: "Filtrer par type") {
                    filterViewModel.activateFilter(filterType: .typeFilter)
                }
            }
            
            // MARK: - PriceFilter
            if(!filterViewModel.globalFilter.priceFilter.isSelected) {
                FilterButton(
                    imageString: "eurosign.square",
                    buttonTitle: "Filtrer par prix") {
                    filterViewModel.activateFilter(filterType: .priceFilter)
                }
            }
            
            Spacer()
        }
        .padding(.top, 50)
    }
}

struct FilterSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        FilterSelectionView()
    }
}
