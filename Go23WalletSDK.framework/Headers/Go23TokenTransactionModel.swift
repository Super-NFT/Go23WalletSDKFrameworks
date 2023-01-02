//
//  Go23TokenTransactionModel.swift
//  demo
//
//  Created by Taran on 2022/12/25.
//

public struct Go23TokenTransactionModel: Codable {
    @DecodableDefault.False       public var isLendingGas: Bool
    @DecodableDefault.Zero        public var transType: Int
    @DecodableDefault.EmptyString public var platformBalance: String
    @DecodableDefault.ZeroDouble  public var platformBalanceSort: Double
    @DecodableDefault.ZeroDouble  public var platformUPer: Double
    @DecodableDefault.EmptyString public var tokenBalance: String
    @DecodableDefault.ZeroDouble  public var tokenBalanceSort: Double
    @DecodableDefault.ZeroDouble  public var tokenUPer: Double
    @DecodableDefault.EmptyString public var gas: String
    @DecodableDefault.ZeroDouble  public var fee: Double
    @DecodableDefault.Zero        public var decimal: Int
    
    enum CodingKeys: String, CodingKey {
        case isLendingGas = "is_lending_gas"
        case transType = "trans_type"
        case platformBalance = "platform_balance"
        case platformBalanceSort = "platform_balance_sort"
        case platformUPer = "platform_u_per"
        case tokenBalance = "token_balance"
        case tokenBalanceSort = "token_balance_sort"
        case tokenUPer = "token_u_per"
        case gas
        case fee
        case decimal
    }
}

