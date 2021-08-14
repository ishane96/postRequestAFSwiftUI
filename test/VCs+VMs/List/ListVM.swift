//
//  ListVM.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-10.
//

import Foundation
import Alamofire

class ListVM {
    
    typealias webServiceResponse = ([Hotel]?, Bool?, Error?) -> Void
    
    var list: [Hotel] = []
    var cuisines: [String] = []
    
    // networkRequest
    func executeNetworkCall(completion: @escaping webServiceResponse) {
        
        let parameters: [String: Any] = [
            "Sector" : "FOOD",
            "NearByCords": [
                79.867769,
                6.900182
            ]
        ]
        let header = ""
        
        let url = "https://demoapi.tmdone.com/api/stores/list"
        
        AF.request(url, method:.post, parameters: parameters, headers: header,encoding: JSONEncoding.default).responseData { (response) in
            
            switch response.result {
            case .failure(let error):
                print(error)
                completion(nil, false, error)
            case .success(let data):
                do {
                    let response = try JSONDecoder().decode(HotelsResponse.self, from: data)
                    //model mapping
                    self.list = response.items ?? []
                    completion(response.items, true, nil)
                } catch let error {
                    print(error)
                    completion(nil, false, error)
                }
            }
        }
    }
}
