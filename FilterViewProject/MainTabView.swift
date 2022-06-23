//
//  MainTabView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            FilterView()
                .tabItem {
                    Image(systemName: "slider.horizontal.3")
                    Text("Mes Filtres")
                }
            
            ResultListView()
                .tabItem {
                    Image(systemName: "list.bullet.circle.fill")
                    Text("Liste des résultats")
                }
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
