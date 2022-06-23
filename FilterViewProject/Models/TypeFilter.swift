//
//  TypeFilter.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

enum RealEstateFilterType: Codable {
    case homeOnly, appartmentOnly, all
}

struct TypeFilter: Codable {
    var selectedtype: RealEstateFilterType
    var isSelected: Bool
}

extension TypeFilter {
    static let unselectedTypeFilter = TypeFilter(selectedtype: .all, isSelected: false)
}
