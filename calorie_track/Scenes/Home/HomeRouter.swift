//
//  HomeRouter.swift
//  calorie_track
//
//  Created by Ahmet Dursun Avcı on 20.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol HomeRoutingLogic {
    func routeToSomeWhere()
}

class HomeRouter: NSObject, HomeRoutingLogic {
    weak var viewController: HomeViewController?

    // MARK: Routing Logic
    
    func routeToSomeWhere() {
        
    }
}
