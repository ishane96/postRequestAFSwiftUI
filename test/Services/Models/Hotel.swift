//
//  Item.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-12.
//

import Foundation


struct Hotel: Codable {
    let id, name, arabicName: String?
    let isFeatured, isOnline, isBusy: Bool?
    let coverURL, logoURL: String?
    let rating: Double?
    let ratedCount, averagePrepTime, deliveryTime: Int?
    let cuisines, attributes: [String]?
    let deliveryFee: Double?
    let isFavourite: Bool?
    let sectorCode: String?
    let contact: Helper?
    let distance: Double?
    let minOrderValue: Int?
    let marketPlaceMinOrderValue: Double?
    let isMarketPlace: Bool?
    let offerName, offerArabicName: Helper?
    let isStoreNew: Bool?
    let marketPlaceZoneInfos: [MarketPlace]?

    enum CodingKeys: String, CodingKey {
        case id = "Id"
        case name = "Name"
        case arabicName = "ArabicName"
        case isFeatured = "IsFeatured"
        case isOnline = "IsOnline"
        case isBusy = "IsBusy"
        case coverURL = "CoverUrl"
        case logoURL = "LogoUrl"
        case rating = "Rating"
        case ratedCount = "RatedCount"
        case averagePrepTime = "AveragePrepTime"
        case deliveryTime = "DeliveryTime"
        case cuisines = "Cuisines"
        case attributes = "Attributes"
        case deliveryFee = "DeliveryFee"
        case isFavourite = "IsFavourite"
        case sectorCode = "SectorCode"
        case contact = "Contact"
        case distance = "Distance"
        case minOrderValue = "MinOrderValue"
        case marketPlaceMinOrderValue = "MarketPlaceMinOrderValue"
        case isMarketPlace = "IsMarketPlace"
        case offerName = "OfferName"
        case offerArabicName = "OfferArabicName"
        case isStoreNew = "IsStoreNew"
        case marketPlaceZoneInfos = "MarketPlaceZoneInfos"
    }
}
