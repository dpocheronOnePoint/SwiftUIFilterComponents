//
//  GroundAreaFilter.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

struct GroundAreaFilter {
    var minArea: Int
    var maxArea: Int
    var isSelected: Bool
}

extension GroundAreaFilter {
    static let unselectedGroundAreaFilter = GroundAreaFilter(minArea: 0, maxArea: 0, isSelected: false)
}
