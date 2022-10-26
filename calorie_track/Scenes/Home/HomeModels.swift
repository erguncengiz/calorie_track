//
//  HomeModels.swift
//  calorie_track
//
//  Created by Ahmet Dursun Avcı on 20.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

enum Home {
    
    // MARK: Endpoints
    enum Endpoints {
        case getAll
        
        func baseUrl() -> String {
            switch self {
            case .getAll:
                return "https://www.fruityvice.com/api/fruit/all"
            }
        }
    }
    
    // MARK: Use cases
    enum Fruity {
        struct Request : Codable {
            // empty
        }
        struct Response : Codable {
            let fruits : Fruits
        }
        
        struct Fruit : Codable {
            let genus: String
            let name: String
            let id: Int
            let family: String
            let order: String
            let nutritions: Nutrition
        }
        
        struct Nutrition : Codable {
            let carbohydrates: Double
            let protein: Double
            let fat: Double
            let calories: Double
            let sugar: Double
        }

        struct ViewModel {
        }
    }
    
    typealias Fruits = [Fruity.Fruit]
}
