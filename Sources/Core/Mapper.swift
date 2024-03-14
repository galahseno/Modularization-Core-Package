//
//  Mapper.swift
//
//
//  Created by Galah Seno on 12/03/24.
//

import Foundation

public protocol Mapper {
    associatedtype Response
    associatedtype Entity
    associatedtype Domain

    func transformResponseToDomain(response: Response) -> Domain
    func transformDomainToEntity(domain: Domain) -> Entity
    func transformEntityToDomain(entity: Entity) -> Domain
}
