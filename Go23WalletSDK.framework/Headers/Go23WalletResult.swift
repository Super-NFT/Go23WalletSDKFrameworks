//
//  Go23WalletResult.swift
//  demo
//
//  Created by Taran on 2022/12/25.
//

import Foundation

public enum Go23WalletError: Error {
    case invalidUUID
    case noUserRecord
}

public typealias Go23ShardString = String

// MARK: Key generate
public enum Go23KeygenError: Error {
    case keygenFailed(String)
    case invalidAccount(String)
    case keyStoreFailed(String)
}
public typealias Go23KeygenResult = Result<Go23ShardString, Go23KeygenError>

// MARK: Go23RecoverResult
public enum Go23RecoverError: Error {
    case errorPincode
    case cancelRecover
    case forgetPincode
    case shardLostError
    case invalidAccount(String)
}
public typealias Go23RecoverResult = Result<String, Go23RecoverError>

// MARK: Go23ReshardResult
public enum Go23ReshardError: Error {
    case errorPincode
    case cancelReshard
    case pairShardError
    case keyStoreFailed
    case vendorShardLost
    case forgetPincode
    case suplierShardLost
    case keygenShardFailed
    case invalidAccount(String)
}
public typealias Go23ReshardResult = Result<Go23ShardString, Go23ReshardError>

