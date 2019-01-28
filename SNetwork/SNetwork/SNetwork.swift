//
//  SNetwork.swift
//  SNetwork
//
//  Created by Kurtulus Ahmet on 2.01.2019.
//  Copyright © 2019 Kurtulus Ahmet. All rights reserved.
//

import Foundation
import Alamofire

public final class SNetwork {
    
    public static func requestMethod<T: GenericRequest>(requestModel: T, onSuccess success: @escaping (_ result: String) -> Void, onError error: @escaping (_ error: Error) -> Void) {
        guard let requestUrl = requestModel.request.baseUrl?.appendingPathComponent(requestModel.request.path!) else {
            return
        }
        
        Alamofire.request(requestUrl).responseJSON { response in
            if response.result.isSuccess {
                success(response.result.value.debugDescription)
            }else {
                error(response.error!)
            }
            
        }
    }
    
    //object request
    public static func requestMethod<T: GenericRequest,M: Codable>(requestModel: T, responseModelProto: M.Type, onSuccess success: @escaping (_ result: M) -> Void, onError error: @escaping (_ error: Error) -> Void) {
        guard let requestUrl = requestModel.request.baseUrl?.appendingPathComponent(requestModel.request.path!) else {
            return
        }
        
        Alamofire.request(requestUrl).responseJSON { response in
            if response.result.isSuccess {
                do {
                    print(response.result.value!)
                    let jsonData = try JSONSerialization.data(withJSONObject: response.result.value!, options: .prettyPrinted)
                    let jsonResults = try JSONDecoder().decode(responseModelProto, from: jsonData)
                    //success
                    print(jsonResults)
                    success(jsonResults)
                } catch {
                    //Better not dispose errors silently
                    print(error)
                }
            }else {
                error(response.error!)
            }
            
        }
    }
    
    //Array request
    public static func requestArrayMethod<T: GenericRequest,M: Codable>(requestModel: T, responseModelProto: [M].Type, onSuccess success: @escaping (_ result: [M]) -> Void, onError error: @escaping (_ error: Error) -> Void) {
        guard let requestUrl = requestModel.request.baseUrl?.appendingPathComponent(requestModel.request.path!) else {
            return
        }
        
        Alamofire.request(requestUrl).responseJSON { response in
            if response.result.isSuccess {
                do {
                    print(response.result.value!)
                    let jsonData = try JSONSerialization.data(withJSONObject: response.result.value!, options: .prettyPrinted)
                    let jsonResults = try JSONDecoder().decode(responseModelProto, from: jsonData)
                    //success
                    print(jsonResults)
                    success(jsonResults)
                } catch {
                    //Better not dispose errors silently
                    print(error)
                }
            }else {
                error(response.error!)
            }
            
        }
    }
}
