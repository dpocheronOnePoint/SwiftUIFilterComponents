//
//  TypeFilter.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

enum RealEstateFilterType {
    case homeOnly, appartmentOnly, all
}

struct TypeFilter {
    var selectedtype: RealEstateFilterType
    var isSelected: Bool
}

extension TypeFilter {
    static let unselectedTypeFilter = TypeFilter(selectedtype: .all, isSelected: false)
}
