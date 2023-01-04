//
//  Go23WalletResult.swift
//  Go23WalletSDK
//
//  Created by Taran on 2022/12/25.
//

import Foundation

public typealias Go23ShardString = String

public enum Go23RecoverError: Error {
    case errorPincode
    case cancelRecover
    case forgetPincode
    case shardLostError
    case invalidAccount(String)
}
public typealias Go23RecoverResult = Swift.Result<String, Go23RecoverError>


public enum Go23ReshardError: Error {
    case shardLost
    case errorPincode
    case forgetPincode
    case cancelReshard
    case reshardFailed
    case networkError(String)
    case invalidAccount(String)
}
public typealias Go23ReshardResult = Swift.Result<Go23ShardString, Go23ReshardError>

