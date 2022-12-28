//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Doğukan Aydemir on 28.12.2022.
//

import Foundation

class RootViewModel {
    
    private var loginStorageService : LoginStorageService
    weak var output : RootViewModelOutput?
    
    init(loginStorageService: LoginStorageService, output: RootViewModelOutput? = nil) {
        self.loginStorageService = loginStorageService
    }
    
    func checkLogin() {
        
        if let accessToken = loginStorageService.getUserAccessToken(), !accessToken.isEmpty {
            output?.showMainApp()
        } else {
            output?.showLogin()
        }
        
    }
}
