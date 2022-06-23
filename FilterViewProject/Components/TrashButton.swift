//
//  TrashButton.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct TrashButton: View {
    var clicked: (() -> Void)
    
    var body: some View {
        Button {
            clicked()
        }label: {
            Image(systemName: "trash")
                .padding(.trailing, 10)
                .foregroundColor(.primary)
                .imageScale(.large)
        }
    }
}
