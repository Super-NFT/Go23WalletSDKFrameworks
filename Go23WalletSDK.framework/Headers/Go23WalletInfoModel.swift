//
//  WalletInfoModel.swift
//  WalletInfoModel
//
//  Created by Taran on 2022/12/9.
//

public struct Go23WalletInfoModel: Codable {
    @DecodableDefault.EmptyString public var name: String
    @DecodableDefault.EmptyString public var address: String
    @DecodableDefault.EmptyString public var avatar: String
    
    enum CodingKeys: String ,CodingKey {
        case name
        case address = "wallet_address"
        case avatar
    }
}
