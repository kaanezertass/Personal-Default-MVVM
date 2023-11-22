//
//  WebService.swift
//  KaanMVVM
//
//  Created by Kaan Ezerrtaş on 22.11.2023.
//

import Alamofire

protocol ServiceProctocol {
    func fetchFootball(SuccesOn: @escaping (Welcome?) ->(), ErrorOn: @escaping (AFError) -> ())
}

final class Service: ServiceProctocol {
    func fetchFootball(SuccesOn: @escaping (Welcome?) -> (), ErrorOn: @escaping (Alamofire.AFError) -> ()) {
        ServiceManager.shared.fetch(path: Constant.ServicePoint.FootBallServicePoint()) { (response: Welcome) in
        SuccesOn(response)
        } ErrorOn: { error in
            ErrorOn(error)
        }

    }
    
    
}
