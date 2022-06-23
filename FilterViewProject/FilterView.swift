//
//  ContentView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI
import Resolver

struct FilterView: View {
    @InjectedObject private var filterViewModel: FilterViewModel
    
    
    var body: some View {
        VStack(spacing: 30){
            PriceFilterView()
                .isHidden(!filterViewModel.globalFilter.priceFilter.isSelected)
            
            SelectFilterButton(imageString: "slider.horizontal.3", buttonTitle: "Ajouter un filtre") {
                filterViewModel.selectFilterSheetisPresented.toggle()
            }
        }
        .sheet(isPresented: $filterViewModel.selectFilterSheetisPresented) {
            FilterSelectionView()
                .presentationDetents([.large, .medium])
                .ignoresSafeArea(.all, edges: .bottom)
        }
        .onDisappear {
            Task {
                try filterViewModel.registerGlobalFilter()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
