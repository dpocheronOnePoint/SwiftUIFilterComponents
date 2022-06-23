//
//  App+Injection.swift
//  FilterViewProject
//
//  Created by Dimitri POCHERON on 23/06/2022.
//

import Resolver

extension Resolver: ResolverRegistering {
    public static func registerAllServices() {
        register { FilterViewModel() }
            .implements(FilterViewModelProtocol.self)
            .scope(.application)
    }
}
