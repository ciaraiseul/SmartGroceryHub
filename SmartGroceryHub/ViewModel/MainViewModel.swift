//
//  MainViewModel.swift
//  SmartGroceryHub
//
//  Created by Phạm Trường Giang on 11/2/25.
//

import SwiftUI

class MainViewModel: ObservableObject {
    static var shared: MainViewModel = MainViewModel()
    
    @Published var txtUsername: String = ""
    @Published var txtEmail: String = ""
    @Published var txtPassword: String = ""
    @Published var isShowPassword: Bool = false

    @Published var showError = false
    @Published var errorMessage = ""
    @Published var isUserLogin: Bool = false
    @Published var userObj: UserModel = UserModel(dict: [:])
    
    
    init() {
        
        #if DEBUG
        txtUsername = "Phạm Trường Giang"
        txtEmail = "giangdeptrai2k2@gmail.com"
        txtPassword = "123456"
        #endif
    }
    
    // ServiceCall
    func serviceCallLogin() {
        
        if(!txtEmail.isValidEmail) {
            self.errorMessage = "vui lòng nhập địa chỉ email hợp lệ"
            self.showError = true
            return
        }
        
        if(txtPassword.isEmpty) {
            self.errorMessage = "vui lòng nhập mật khẩu hợp lệ"
            self.showError = true
            return
        }
        
        ServiceCall.post(parameter: ["email": txtEmail, "password": txtPassword, "dervice_token":""], path: Globs.SV_LOGIN) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
                } else {
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }
    }
    
    func serviceCallSignUp() {
        
        if(txtUsername.isValidEmail) {
            self.errorMessage = "vui lòng nhập tên hợp lệ"
            self.showError = true
            return
        }
        
        if(!txtEmail.isValidEmail) {
            self.errorMessage = "vui lòng nhập địa chỉ email hợp lệ"
            self.showError = true
            return
        }
        
        if(txtPassword.isEmpty) {
            self.errorMessage = "vui lòng nhập mật khẩu hợp lệ"
            self.showError = true
            return
        }
        
        ServiceCall.post(parameter: ["username": txtUsername , "email": txtEmail, "password": txtPassword, "dervice_token":""], path: Globs.SV_SIGN_UP) { responseObj in
            if let response = responseObj as? NSDictionary {
                if response.value(forKey: KKey.status) as? String ?? "" == "1" {
                    self.setUserData(uDict: response.value(forKey: KKey.payload) as? NSDictionary ?? [:])
                } else {
                    self.errorMessage = response.value(forKey: KKey.message) as? String ?? "Fail"
                    self.showError = true
                }
            }
        } failure: { error in
            self.errorMessage = error?.localizedDescription ?? "Fail"
            self.showError = true
        }
    }
    
    func setUserData( uDict: NSDictionary ) {
        
        Utils.UDSET(data: uDict, key: Globs.userPayload)
        Utils.UDSET(data: true, key: Globs.userLogin)
        self.userObj = UserModel(dict: uDict)
        self.isUserLogin = true
        
        self.txtUsername = ""
        self.txtEmail = ""
        self.txtPassword = ""
        self.isShowPassword = false
        
    }
}


