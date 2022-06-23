//
//  TypeFilterView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI
import Resolver

struct TypeFilterView: View {
    @InjectedObject private var filterViewModel: FilterViewModel
    
    var body: some View {
        HStack {
            Spacer()
            
            VStack(spacing: 25) {
                TitleText(text: "Type de bien")
                HStack {
                    CheckBox(isActivated: $filterViewModel.globalFilter.typeFilter.appartmentIsSelected, checkoboxTitle: "Appartements")
                    
                    CheckBox(isActivated: $filterViewModel.globalFilter.typeFilter.houseIsSelected, checkoboxTitle: "Maisons")
                }
            }
            Spacer()
            TrashButton() {
                filterViewModel.desactivateFilter(filterType: .typeFilter)
            }
            .padding(.trailing, 20)
        }
    }
}

struct TypeFilterView_Previews: PreviewProvider {
    static var previews: some View {
        TypeFilterView()
    }
}
