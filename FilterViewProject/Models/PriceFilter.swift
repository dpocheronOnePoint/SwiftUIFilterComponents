//
//  PriceFilter.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

struct PriceFilter {
    var minPrice: Int
    var maxPrice: Int
    var isSelected: Bool
}

extension PriceFilter {
    static let unselectedPriceFilter = PriceFilter(minPrice: 0, maxPrice: 0, isSelected: false)
}
