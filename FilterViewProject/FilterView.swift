//
//  ContentView.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import SwiftUI

struct FilterView: View {
    @ObservedObject private var filterViewModel = FilterViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear {
                Task {
                    try filterViewModel.loadGlobalFilter()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FilterView()
    }
}
