//
//  HomeViewController.swift
//  calorie_track
//
//  Created by Ahmet Dursun Avcı on 20.10.2022.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol HomeDisplayLogic: AnyObject {
    func display(viewModel: Home.Fruity.ViewModel)
}

class HomeViewController: UIViewController, HomeDisplayLogic {
    var interactor: HomeBusinessLogic?
    var router: (NSObjectProtocol & HomeRoutingLogic)?

    // TODO: Move this function to ViewControllerFactory
    
    func makeHome() -> UIViewController {
        let viewController = HomeViewController(nibName: "HomeView", bundle: nil)
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        let router = HomeRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        return viewController
    }

    // MARK: View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = Home.Fruity.Request()
        interactor?.handle(request: request)
    }

    // MARK: Requests

    func display(viewModel: Home.Fruity.ViewModel) {
        //
    }
}
