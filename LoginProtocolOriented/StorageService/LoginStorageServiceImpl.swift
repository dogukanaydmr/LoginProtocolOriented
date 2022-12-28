//
//  LoginStorageServiceImpl.swift
//  LoginProtocolOriented
//
//  Created by Doğukan Aydemir on 28.12.2022.
//

import Foundation

class LoginStorageServiceImpl : LoginStorageService {
    
    private let storage = UserDefaults.standard
    
    
    var userAccessTokenKey: String {
        return "ACCESS_TOKEN"
    }
    
    func setUserAccessToken(token: String) {
        storage.set(token, forKey: userAccessTokenKey)
    }
    
    func getUserAccessToken() -> String? {
        storage.string(forKey: userAccessTokenKey)
    }
    
    
    
}
