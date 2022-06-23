//
//  TypeFilterGridView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI
import Resolver

struct TypeFilterGridView: View {
    @InjectedObject private var filterViewModel: FilterViewModel
    
    var body: some View {
        FilterItemBuilder {
            VStack(spacing: 20) {
                TitleText(text: "Type de bien")
                HStack {
                    CheckBox(isActivated: $filterViewModel.globalFilter.typeFilter.appartmentIsSelected, checkoboxTitle: "Appartements")
                    
                    CheckBox(isActivated: $filterViewModel.globalFilter.typeFilter.houseIsSelected, checkoboxTitle: "Maisons")
                }
            }
        } clicked: {
            print("Test")
        }
    }
}

struct TypeFilterGridView_Previews: PreviewProvider {
    static var previews: some View {
        TypeFilterGridView()
    }
}
