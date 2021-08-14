//
//  MarketPlace.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-12.
//

import Foundation

struct MarketPlace: Codable {
    let zoneID, zoneName: String
    let deliveryFee, minOrderValue: Double
    let isBusy: Bool

    enum CodingKeys: String, CodingKey {
        case zoneID = "ZoneId"
        case zoneName = "ZoneName"
        case deliveryFee = "DeliveryFee"
        case minOrderValue = "MinOrderValue"
        case isBusy = "IsBusy"
    }
}
