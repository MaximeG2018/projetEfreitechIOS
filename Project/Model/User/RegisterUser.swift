//
//  RegisterUser.swift
//  finalProject
//
//  Created by Yassine FATIHI on 14/02/2019.
//  Copyright © 2019 Yassine FATIHI. All rights reserved.
//

class RegisterUser {

    static var instance: User?
    
    static func register (user: User){
        self.instance = user
    }
}
