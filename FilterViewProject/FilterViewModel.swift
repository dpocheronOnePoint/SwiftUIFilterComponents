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
    func activateFilter(filterType: FilterType)
    func desactivateFilter(filterType: FilterType)
}

class FilterViewModel: ObservableObject, FilterViewModelProtocol {
    @Published var globalFilter: GlobalFilter = GlobalFilter.unselectedGlobalFilter
    @Published var selectFilterSheetisPresented = false
    
    // TypeFilter
    @Published var typeFilterIsSelected: Bool = false
    @Published var typeSelected: RealEstateFilterType = .all
    
    // PriceFilter
    @Published var priceFilterIsSelected: Bool = false
    @Published var minPriceString: String = ""
    @Published var maxPriceString: String = ""
    
    //        let defaults = UserDefaults.standard
    //        let globalFilter = GlobalFilter.testGlobalFilter
    //        let encodedGlobalFilter = try NSKeyedArchiver.archivedData(withRootObject: globalFilter, requiringSecureCoding: false)
    //        defaults.set(encodedGlobalFilter, forKey: "GlobalFilter")
    
    func loadGlobalFilter() throws {
        guard let decoded  = UserDefaults.standard.object(forKey: "GlobalFilter") as? Data else {
            return
        }
        let decodedGlobalFilter = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(decoded) as! GlobalFilter
        globalFilter = decodedGlobalFilter
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
        
        switch filterType {
        case .typeFilter:
            globalFilter.typeFilter = TypeFilter.unselectedTypeFilter
        case .priceFilter:
            globalFilter.priceFilter = PriceFilter.unselectedPriceFilter
        }
    }
    
}
