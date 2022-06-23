//
//  FilterViewModel.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Foundation

class FilterViewModel: ObservableObject {
    @Published var globalFilter: GlobalFilter = GlobalFilter.unselectedGlobalFilter
    
//        let defaults = UserDefaults.standard
//        let globalFilter = GlobalFilter.testGlobalFilter
//        let encodedGlobalFilter = try NSKeyedArchiver.archivedData(withRootObject: globalFilter, requiringSecureCoding: false)
//        defaults.set(encodedGlobalFilter, forKey: "GlobalFilter")
 
    func loadGlobalFilter() throws {
        guard let decoded  = UserDefaults.standard.object(forKey: "GlobalFilter") as? Data else {
            return
        }
        let decodedGlobalFilter = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(decoded) as! GlobalFilter
        self.globalFilter = decodedGlobalFilter
    }
    
}
