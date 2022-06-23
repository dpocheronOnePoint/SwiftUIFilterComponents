//
//  AreaFilte.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

struct AreaFilter {
    var minArea: Int
    var maxArea: Int
    var isSelected: Bool
}

extension AreaFilter {
    static let unselectedAreaFilter = AreaFilter(minArea: 0, maxArea: 0, isSelected: false)
}
