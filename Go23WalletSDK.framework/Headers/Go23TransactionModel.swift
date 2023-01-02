//
//  Go23WalletTransactionModel.swift
//  Go23WalletSDK
//
//  Created by Taran on 2022/12/7.
//

import Foundation

public struct Go23SendTransactionModel {
    var type: Int
    var rpc: String
    var chainId: Int
    var fromAddr: String
    var toAddr: String
    var transType: Int
    var contractAddress: String
    var tokenId: String
    var value: String
    var middleContractAddress: String
    var decimal: Int
    
    var nftName: String
    var tokenIcon: Data?
    var chainName: String
}
