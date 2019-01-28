//
//  RandomUserRequest.swift
//  SNetworkDemo
//
//  Created by Kurtulus Ahmet on 2.01.2019.
//  Copyright © 2019 Kurtulus Ahmet. All rights reserved.
//

import Foundation
import SNetwork

class RandomUserRequest: GenericRequest {
    var request: Request
    
    public init(baseUrl: URL, path: String) {
        var requestData = Request()
        requestData.path = path
        requestData.baseUrl = baseUrl
        self.request = requestData
    }
}
