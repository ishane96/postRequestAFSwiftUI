//
//  Hotels.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-10.
//

import Foundation

struct HotelsResponse: Codable {
    let totalItemCount: Int?
    let pageCount, pageNumber, pageSize: Int?
    let items: [Hotel]?

    enum CodingKeys: String, CodingKey {
        case totalItemCount = "TotalItemCount"
        case pageCount = "PageCount"
        case pageNumber = "PageNumber"
        case pageSize = "PageSize"
        case items = "Items"
    }
}
