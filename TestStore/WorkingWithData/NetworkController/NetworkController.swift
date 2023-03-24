//
//  NetworkController.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//

import Foundation
import UIKit

class NetworkController: NetworkerProtocol {
    func load<Model: Decodable>(request: URL, completion: @escaping (Model?) -> Void) {
        DispatchQueue.main.async {
            URLSession.shared.dataTask(with: request) { [weak self] data, _, _ in
                let data = data ?? Data()
                let model: Model? = self?.parse(data: data)
                completion(model)
            }.resume()
        }
    }

    private func parse<Model: Decodable>(data: Data) -> Model? {
        return try? JSONDecoder().decode(Model.self, from: data)
    }



}
