//
//  Int+Extension.swift
//  HelloSwift
//
//  Created by Aleksandra Generowicz on 10/11/2021.
//

import Foundation

extension Int {
    func times(_ operation: () -> Void) {
        guard self > 0 else { return }
        for _ in 0..<self {
            operation()
        }
    }
}
