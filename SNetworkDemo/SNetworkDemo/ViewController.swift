//
//  ViewController.swift
//  SNetworkDemo
//
//  Created by Kurtulus Ahmet on 1.01.2019.
//  Copyright © 2019 Kurtulus Ahmet. All rights reserved.
//

import UIKit
import SNetwork

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let baseUrl = URL(string: "https://randomuser.me") else {
            return
        }
        
        let userRequestModel = RandomUserRequest(baseUrl: baseUrl, path: "/api/")
        SNetwork.requestMethod(requestModel: userRequestModel, responseModelProto: UserResponseModel.self, onSuccess: { (user) in
            print(user.results[0].name.first!)
        }) { (error) in
            print(error.localizedDescription)
        }
    }
}

