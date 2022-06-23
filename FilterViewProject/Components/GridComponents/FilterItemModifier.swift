//
//  FilterItemModifier.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

protocol ContainerView: View {
    associatedtype Content
    init(content: @escaping () -> Content, clicked: @escaping () -> Void)
}

extension ContainerView {
    init(@ViewBuilder _ content: @escaping () -> Content, clicked: @escaping () -> Void) {
        self.init(content: content, clicked: clicked)
    }
}

struct FilterItemBuilder<Content: View>: ContainerView {
    var content: () -> Content
    var clicked: () -> Void
    
    var body: some View {
        Grid {
            GridRow {
                Color.clear
                Color.clear
                    .gridCellColumns(1)
                
                
                content()
                .gridCellColumns(5)
                
                Color.clear
                .gridCellColumns(1)
                
                TrashButton() {
                    clicked()
                }
            }
        }
        .frame(height: 100)
    }
}
