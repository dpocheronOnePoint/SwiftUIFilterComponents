//
//  SelectFilterButton.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct SelectFilterButton: View {
    let imageString: String
    let buttonTitle: String
    var clicked: (() -> Void)
    
    var body: some View {
        
        Button(action: {
            clicked()
        }, label: {
            HStack {
                
                Image(systemName: imageString)
                    .imageScale(.large)
                Text(buttonTitle)
                    .font(.system(.title3))
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
            } //: HSTACK
            .frame(minWidth: 160, minHeight: 30)
        })
        .buttonStyle(.bordered)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
    }
}

struct SelectFilterButton_Previews: PreviewProvider {
    static var previews: some View {
        SelectFilterButton(imageString: "arrow.triangle.2.circlepath.circle.fill", buttonTitle: "Réessayer") {
            print("Test")
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
