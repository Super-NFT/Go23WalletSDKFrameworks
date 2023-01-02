//
//  Go23NFTResult.swift
//  demo
//
//  Created by Taran on 2022/12/25.
//

import Foundation

public enum Go23NFTError: Error {
    case invalidUUID
    case noUserRecord
}

typealias Go23NFTResult = Result<Any, Go23NFTError>
