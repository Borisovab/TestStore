//
//  Dynamic.swift
//  TestStore
//
//  Created by Александр Борисов on 26.03.2023.
//

import Foundation


class Dynamic<T> {

    typealias Listener = (T) -> Void

    private var listener: Listener?

    func bind(_ listener: Listener?) {
        self.listener = listener
    }

    var value: T {
        didSet {
            listener?(value)
        }
    }

    init(_ v: T) {
        value = v
    }
}
