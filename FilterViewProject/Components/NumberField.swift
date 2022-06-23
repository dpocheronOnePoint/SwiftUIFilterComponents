//
//  NumberTextField.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct NumberField: View {
    let placeholder: String
    
    @Binding var text: String
    
    var editingChangeAction: (() -> Void)?
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            TextField(placeholder, text: $text, onEditingChanged: { editingChanged in
                if(editingChanged) {
                    if(editingChangeAction != nil) {
                        editingChangeAction!()
                    }
                }
            })
            .underlineTextField()
            .font(.footnote)
            .keyboardType(.numberPad)
        }
    }
}
