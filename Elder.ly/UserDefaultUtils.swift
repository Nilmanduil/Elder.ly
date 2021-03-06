//
//  UserDefaultUtils.swift
//  Elder.ly
//
//  Created by Arnaud on 28/11/2017.
//  Copyright © 2017 Old Mojito. All rights reserved.
//

import Foundation

extension UserDefaults {
    func getUserPhoneNumber () -> String {
        return (UserDefaults.standard.value(forKey: "userPhoneNumber") as? String) ?? ""
    }
    func setUserPhoneNumber (phone: String) {
        UserDefaults.standard.set(phone, forKey: "userPhoneNumber")
    }
    func deleteUserPhoneNumber () {
        UserDefaults.standard.removeObject(forKey: "userPhoneNumber")
    }
    func isAuth () -> Bool {
        return (UserDefaults.standard.value(forKey: "isAuth") as? Bool) ?? false
    }
    func setAuth () {
        UserDefaults.standard.set(true, forKey: "isAuth")
    }
    func unsetAuth () {
        UserDefaults.standard.set(false, forKey: "isAuth")
    }
    func getLoggedPhoneNumber () -> String {
        return (UserDefaults.standard.value(forKey: "loggedPhoneNumber") as? String) ?? ""
    }
    func setLoggedPhoneNumber (phone: String) {
        UserDefaults.standard.set(phone, forKey: "loggedPhoneNumber")
    }
    func deleteLoggedPhoneNumber () {
        UserDefaults.standard.removeObject(forKey: "loggedPhoneNumber")
    }
    func isFirstLogin () -> Bool {
        return (UserDefaults.standard.value(forKey: "isFirstLogin") as? Bool) ?? true
    }
    func setFirstLogin () {
        UserDefaults.standard.set(true, forKey: "isFirstLogin")
    }
    func unsetFirstLogin () {
        UserDefaults.standard.set(false, forKey: "isFirstLogin")
    }
}
