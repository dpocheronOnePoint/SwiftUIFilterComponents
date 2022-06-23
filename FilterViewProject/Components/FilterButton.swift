//
//  FilterButton.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct FilterButton: View {
    let imageString: String
    let buttonTitle: String
    var clicked: (() -> Void)
    
    var body: some View {
        
        Button(action: {
            clicked()
        }, label: {
            HStack {
                
                Text(buttonTitle)
                    .foregroundColor(.primary)
                    .font(.title3)
                    .fontWeight(.semibold)
                
                Image(systemName: imageString)
                    .imageScale(.large)
            } //: HSTACK
        })
        .buttonStyle(.borderedProminent)
        .controlSize(.large)
    }
}

struct FilterButton_Previews: PreviewProvider {
    static var previews: some View {
        FilterButton(imageString: "arrow.triangle.2.circlepath.circle.fill", buttonTitle: "Réessayer") {
            print("Test")
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
