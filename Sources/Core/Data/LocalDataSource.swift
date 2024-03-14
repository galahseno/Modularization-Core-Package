//
//  LocalDataSource.swift
//
//
//  Created by Galah Seno on 12/03/24.
//

import Combine

public protocol LocaleDataSource {
    associatedtype Request
    associatedtype Response
    
    func check(request: String?) -> AnyPublisher<Bool, Error>
    func list() -> AnyPublisher<[Response], Error>
    func add(entities: Request) -> AnyPublisher<Bool, Error>
    func delete(entities: Request) -> AnyPublisher<Bool, Error>
}
