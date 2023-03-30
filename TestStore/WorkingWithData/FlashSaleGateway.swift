//
//  FlashSaleGateway.swift
//  TestStore
//
//  Created by Александр Борисов on 24.03.2023.
//
import Foundation

class FlashSaleGateway {

    let network: NetworkController

    init (network: NetworkController) {
        self.network = network
    }

    func loadPosts(completion: @escaping ([GoodsModel]) -> Void) {
        let url = URL(string: "https://run.mocky.io/v3/a9ceeb6e-416d-4352-bde6-2203416576ac")
        guard let url = url else {
            return completion([])
        }

        network.load(request: url) { (model: FlashSaleObject?) in

            DispatchQueue.main.async {
                guard let model = model
                else {
                    print("Error from FlashSaleGateway")
                    return
                }

                let viewData = model.flashSale.map{ GoodsModel(from: $0) }
                completion(viewData)
            }
        }
    }
}
