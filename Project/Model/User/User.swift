//
//  User.swift
//  finalProject
//
//  Created by Yassine FATIHI on 14/02/2019.
//  Copyright © 2019 Yassine FATIHI. All rights reserved.
//

import Foundation

class User {
    
    var password: String
    var email: String
    
    init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}
