//
//  NetworkingClient+Multipart.swift
//  
//
//  Created by Sacha on 13/03/2020.
//

import Foundation
import Combine

public extension NetworkingClient {
    
    func post(_ route: String, params: Params = Params(), multipartData: MultipartData) -> AnyPublisher<(Data?, Progress), Error> {
        let r = request(.post, route, params: params)
        r.multipartData = multipartData
        return r.uploadPublisher()
    }
    
    func put(_ route: String, params: Params = Params(), multipartData: MultipartData) -> AnyPublisher<(Data?, Progress), Error> {
        let r = request(.put, route, params: params)
        r.multipartData = multipartData
        return r.uploadPublisher()
    }
}
