//
//  ServiceManager.swift
//  KaanMVVM
//
//  Created by Kaan Ezerrtaş on 22.11.2023.
//

import Alamofire

final class ServiceManager {
    static let shared: ServiceManager = ServiceManager()
}


extension ServiceManager{
    func fetch<A>(path: String, SuccesOn: @escaping (A) -> (), ErrorOn: (AFError) -> ()) where A: Codable{
        AF.request(path, encoding: JSONEncoding.default).validate().responseDecodable(of: A.self) { response in
            guard let model = response.value
            else {print(response.error as Any)
                return
            }
            SuccesOn(model)
        }
    }
}
