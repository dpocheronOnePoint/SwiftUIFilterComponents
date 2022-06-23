//
//  CheckBox.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct CheckBox: View {
    @Binding var isActivated: Bool
    let checkoboxTitle: LocalizedStringKey
    
    var body: some View {
        Toggle(isOn: $isActivated) {
            Text(checkoboxTitle)
                .font(.system(.footnote))
                .foregroundColor(Color.secondary)
                .padding(.vertical, 12)
        } //: TOGGLE
        .toggleStyle(CheckBoxStyle())
    }
}

struct CheckBox_Previews: PreviewProvider {
    struct PreviewWrapper: View {
        @State(initialValue: true) var isActivated: Bool
        
        var body: some View {
            CheckBox(isActivated: $isActivated, checkoboxTitle: "Activé")
        }
    }
    
    static var previews: some View {
        PreviewWrapper()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
