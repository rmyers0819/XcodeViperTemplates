//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//

import UIKit

class ___VARIABLE_moduleName___Router:  ___VARIABLE_moduleName___RouterProtocol {

    weak var viewController: ___VARIABLE_moduleName___ViewController!
    weak var presenter: ___VARIABLE_moduleName___Presenter!
    
    func setupModule() -> UIViewController {
        let storyboard = UIStoryboard(name: "___VARIABLE_moduleName___", bundle: nil)
        /* guard let vc = storyboard.instantiateInitialViewController() as? ___VARIABLE_moduleName___ViewController else { fatalError("___VARIABLE_moduleName___.storyboard must have a ___VARIABLE_moduleName___ViewController as the initial view controller.") } */
        guard let nav = storyboard.instantiateInitialViewController() as? UINavigationController else { fatalError("___VARIABLE_moduleName___.storyboard must have a UINavigationController as the initial view controller.") }
        guard let vc = nav.topViewController as? ___VARIABLE_moduleName___ViewController else { fatalError("___VARIABLE_moduleName___.storyboard must have a ___VARIABLE_moduleName___ViewController as the top viewcontroller of the navigation controller.") }
        
        let presenter = ___VARIABLE_moduleName___Presenter()
        let interactor = ___VARIABLE_moduleName___Interactor()
        self.viewController = vc
        self.presenter = presenter
        viewController.presenter = presenter
        presenter.view = viewController
        presenter.router = self
        presenter.interactor = interactor

        return nav
    }
}

private extension ___VARIABLE_moduleName___Router {
    
    func presentViewController(_ vc: UIViewController) {
        let routedVc = RoutedViewController()
        routedVc.viewController = vc
        routedVc.routedViewDidDisappear = { self.presenter.viewModelNeedsUpdate() }
        viewController.present(routedVc, animated: true)
    }
}
