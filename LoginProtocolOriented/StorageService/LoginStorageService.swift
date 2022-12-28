//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Doğukan Aydemir on 28.12.2022.
//

import Foundation

protocol LoginStorageService {
    
    var userAccessTokenKey: String { get }
    
    func setUserAccessToken(token: String)
    
    func getUserAccessToken() -> String?
}
