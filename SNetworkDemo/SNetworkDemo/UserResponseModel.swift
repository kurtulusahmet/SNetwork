//
//  UserResponseModel.swift
//  SNetworkDemo
//
//  Created by Kurtulus Ahmet on 2.01.2019.
//  Copyright © 2019 Kurtulus Ahmet. All rights reserved.
//

import Foundation

struct UserResponseModel: Codable {
    let results: [Result]
}

struct Result: Codable {
    let gender: String?
    let name: Name
    let email: String?
}

struct Name: Codable {
    let title, first, last: String?
}
