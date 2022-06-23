//
//  GlobalFilter.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

struct GlobalFilter: Codable {
    var typeFilter: TypeFilter
    var priceFilter: PriceFilter
    var areaFilter: AreaFilter
    var groundAreaFilter: GroundAreaFilter
}

extension GlobalFilter {
    static let unselectedGlobalFilter = GlobalFilter(
        typeFilter: TypeFilter.unselectedTypeFilter,
        priceFilter: PriceFilter.unselectedPriceFilter,
        areaFilter: AreaFilter.unselectedAreaFilter,
        groundAreaFilter: GroundAreaFilter.unselectedGroundAreaFilter
    )

    static let testGlobalFilter = GlobalFilter(typeFilter: TypeFilter(selectedtype: .appartmentOnly, isSelected: true), priceFilter: PriceFilter.unselectedPriceFilter, areaFilter: AreaFilter.unselectedAreaFilter, groundAreaFilter: GroundAreaFilter.unselectedGroundAreaFilter)
}
