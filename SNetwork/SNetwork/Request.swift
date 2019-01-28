//
//  Request.swift
//  SNetwork
//
//  Created by Kurtulus Ahmet on 2.01.2019.
//  Copyright © 2019 Kurtulus Ahmet. All rights reserved.
//

import Foundation

public struct Request {
    public var baseUrl: URL?
    public var path: String?
    public var method: HTTPMethod?
    public var params: [String: Any?]?
    public var headers: [String: String]?
    
    public init () {}
    
    public init (
        baseUrl: URL,
        path: String,
        method: HTTPMethod = .get,
        params: [String: Any?]? = nil,
        headers: [String: String]? = nil
        ) {
        self.baseUrl = baseUrl
        self.path = path
        self.method = method
        self.params = params
        self.headers = headers
    }
}
