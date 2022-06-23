//
//  TypeFilter.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

struct TypeFilter: Codable {
    var isSelected: Bool
    var houseIsSelected: Bool
    var appartmentIsSelected: Bool
}

extension TypeFilter {
    static let unselectedTypeFilter = TypeFilter(isSelected: false, houseIsSelected: true, appartmentIsSelected: true)
}
