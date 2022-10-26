//
//  HomeInteractor.swift
//  calorie_track
//
//  Created by Ahmet Dursun Avcı on 20.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit
import Alamofire

protocol HomeBusinessLogic {
    func handle(request: Home.Fruity.Request)
}

typealias Fruits = [Home.Fruity.Fruit]

class HomeInteractor: HomeBusinessLogic {
    var presenter: HomePresentationLogic?
    
    // MARK: Business Logic

    func handle(request: Home.Fruity.Request) {

        var fruits: Fruits?
        NetworkManager.instance.request(HTTPMethod.get, url: Home.Endpoints.getAll.baseUrl(), requestModel: nil, model: Fruits.self ) { response in
                switch(response)
                {
                    case .success(let model):
                    fruits = model as? Fruits
                    print("EYC --> \(String(describing: fruits))")
                    //
                    case .failure(_):
                    print("Error while initializing!")
                }
            }

        let response = Home.Fruity.Response(fruits: fruits ?? [])
        presenter?.present(response: response)
    }
}
