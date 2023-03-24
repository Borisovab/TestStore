//
//  NetworkerProtocol.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation

protocol NetworkerProtocol {
    func load<Model: Decodable> (request: URL, completion: @escaping (Model?) -> Void)
}
