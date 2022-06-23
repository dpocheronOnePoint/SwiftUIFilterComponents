//
//  FilterViewModel.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation
import SwiftUI

enum FilterType {
    case typeFilter, priceFilter
}

protocol FilterViewModelProtocol {
    func loadGlobalFilter() throws
    func registerGlobalFilter() throws
    func activateFilter(filterType: FilterType)
    func desactivateFilter(filterType: FilterType)
}

class FilterViewModel: ObservableObject, FilterViewModelProtocol {
    @Published var globalFilter: GlobalFilter = GlobalFilter.unselectedGlobalFilter
    @Published var selectFilterSheetisPresented = false
    
    init() {
        Task {
            try loadGlobalFilter()
        }
    }
    
    func loadGlobalFilter() throws {
        guard let data = UserDefaults.standard.value(forKey: "GlobalFilter") as? Data else {
            return
        }
        globalFilter = try PropertyListDecoder().decode(GlobalFilter.self, from: data)
    }
    
    func registerGlobalFilter() throws {
        let defaults = UserDefaults.standard
        defaults.set(try? PropertyListEncoder().encode(globalFilter), forKey: "GlobalFilter")
    }
    
    func activateFilter(filterType: FilterType) {
        selectFilterSheetisPresented = false
        
        withAnimation(.easeOut(duration: 0.5)){
            switch filterType {
            case .typeFilter:
                globalFilter.typeFilter.isSelected = true
            case .priceFilter:
                globalFilter.priceFilter.isSelected = true
            }
        }
    }
    
    func desactivateFilter(filterType: FilterType) {
        selectFilterSheetisPresented = false
       
        withAnimation(.easeOut(duration: 0.5)){
            switch filterType {
            case .typeFilter:
                globalFilter.typeFilter = TypeFilter.unselectedTypeFilter
            case .priceFilter:
                globalFilter.priceFilter = PriceFilter.unselectedPriceFilter
            }
        }
    }
    
}
