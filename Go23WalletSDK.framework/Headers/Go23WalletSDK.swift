//
//  GO23WalletSDK.swift
//  Go23WalletSDK
//
//  Created by Taran on 2022/11/13.
//

import Foundation

public class Go23WalletSDK: NSObject {
    
    public static var shared: Go23WalletSDK!
    
    private override init() {
        super.init()
    }
    
    public override func copy() -> Any {
        return self
    }
        
    public override func mutableCopy() -> Any {
        return self
    }
    
    public static func auth(appkey: String,
                            secretKey: String,
                            completion: @escaping ((Bool) -> Void)) {
        Go23SDKManager.auth(appkey: appkey,
                            secretKey: secretKey) { result in
                            if result {
                                shared = Go23WalletSDK()
                                completion(true)
                            } else {
                                completion(false)
                            }
        }
    }
}

extension Go23WalletSDK {
    
    public func generateWallet(completion: @escaping ((Go23KeygenResult) -> Void)) {
        Go23SDKManager.shared.generateWallet(completion: completion)
    }
    
    public func fetchUserWallet(completion: @escaping ((Go23WalletStatus) -> Void)) {
        Go23SDKManager.shared.fetchUserWallet(completion: completion)
    }
}

extension Go23WalletSDK {
    
    public func sendVerifyCode(for type: Go23VerifyCodeType,
                               completion: @escaping ((Bool) -> Void)) {
        Go23SDKManager.shared.sendVerifyCode(for: type,
                                             completion: completion)
    }
}

extension Go23WalletSDK {
    
    // Verify code only used to user forget passowrd reshard.
    public func reshardWallet(with address: String,
                              shard: String,
                              completion: @escaping ((Go23ReshardResult) -> Void)) {
        Go23SDKManager.shared.reshardWallet(with: address,
                                            shard: shard,
                                            completion: completion)
    }
    
    public func forgetShardPincode(with address: String,
                                   shard: String,
                                   verifyCode code: String,
                                   completion: @escaping ((Go23ReshardResult) -> Void)) {
        Go23SDKManager.shared.forgetShardPincode(with: address,
                                                 shard: shard,
                                                 verifyCode: code,
                                                 completion: completion)
    }
    
    public func recoverWallet(with addr: String,
                              verifyCode code: String,
                              completion: @escaping ((Go23RecoverResult) -> Void)) {
        Go23SDKManager.shared.recoverWallet(with: addr,
                                            verifyCode: code,
                                            completion: completion)
    }
}

