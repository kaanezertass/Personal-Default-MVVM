//
//  ServiceContant.swift
//  KaanMVVM
//
//  Created by Kaan Ezerrtaş on 22.11.2023.
//https://api.football-data.org/v4/matches


import Foundation

extension Constant {
    
    enum ServicePoint: String {
        case baseURL = "https://www.football-data.org"
        case ApiKey = "3f98211431774a8899153b97450b66ea"
        
        static func FootBallServicePoint() -> String{
            "\(baseURL.rawValue)\(ApiKey.rawValue)"
        }
            
        
    }
}
