//
//  Go23WalletSDKAccount.swift
//  demo
//
//  Created by Taran on 2022/12/20.
//

import UIKit

extension Go23WalletSDK {
    
    public func registerUser(with uniqueId: String,
                             email: String,
                             phone: String,
                             completion: @escaping ((UserInfoModel?) -> Void)) {
        Go23SDKManager.shared.registerUser(with: uniqueId,
                                           email: email,
                                           phone: phone,
                                           completion: completion)
    }
    
    public func connectAccount(with uuid: String,
                               completion: @escaping ((Bool) -> Void)) {
        Go23SDKManager.shared.connectAccount(with: uuid,
                                             completion: completion)
    }
}
