//
//  G023TransactionResult.swift
//  demo
//
//  Created by Taran on 2022/12/25.
//

import Foundation

public enum Go23TransactionError: Error {
    case invalidUUID
    case noUserRecord
}

typealias Go23TransactionResult = Result<Any, Go23TransactionError>
