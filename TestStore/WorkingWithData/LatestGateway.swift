//
//  LatestGateway.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//
import Foundation

class LatestGateway {

    let network: NetworkController

    init (network: NetworkController) {
        self.network = network
    }

    func loadPosts(completion: @escaping ([GoodsModel]) -> Void) {
        let url = URL(string: "https://run.mocky.io/v3/cc0071a1-f06e-48fa-9e90-b1c2a61eaca7")
        guard let url = url else {
            return completion([])
        }

        network.load(request: url) { (model: LatestObjact?) in

            DispatchQueue.main.async {
                guard let model = model
                else {
                    print("Error from LatestGateway")
                    return
                }

                let viewData = model.latest.map{ GoodsModel(from: $0) }
                completion(viewData)
            }
        }
    }
}

