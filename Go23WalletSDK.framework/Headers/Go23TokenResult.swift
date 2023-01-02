//
//  Go23TokenResult.swift
//  demo
//
//  Created by Taran on 2022/12/25.
//

import Foundation

enum Go23TokenError: Error {
    case invalidUUID
    case noUserRecord
}

typealias Go23TokenResult = Result<Any, Go23TokenError>

