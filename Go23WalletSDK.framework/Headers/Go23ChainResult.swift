//
//  Go23ChainResule.swift
//  demo
//
//  Created by Taran on 2022/12/25.
//

import Foundation

enum Go23ChainError: Error {
    case invalidUUID
    case noUserRecord
}

typealias Go23ChainResult = Result<Any, Go23ChainError>
