//
//  IsHiddenBinding.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI
extension View {
    @ViewBuilder func isHidden(_ hidden: Bool, remove: Bool = true) -> some View {
        if hidden {
            if !remove {
                self.hidden()
            }
        } else {
            self
        }
    }
}

