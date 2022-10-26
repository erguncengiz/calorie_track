//
//  HomePresenter.swift
//  calorie_track
//
//  Created by Ahmet Dursun Avcı on 20.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol HomePresentationLogic {
    func present(response: Home.Fruity.Response)
}

class HomePresenter: HomePresentationLogic {
    weak var viewController: HomeDisplayLogic?

    // MARK: Presentation Logic
    
    func present(response: Home.Fruity.Response) {
        let viewModel = Home.Fruity.ViewModel()
        viewController?.display(viewModel: viewModel)
    }
}
