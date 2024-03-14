//
//  UseCase.swift
//
//
//  Created by Galah Seno on 12/03/24.
//

import Combine

public protocol UseCase {
    associatedtype Request
    associatedtype Response

    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
