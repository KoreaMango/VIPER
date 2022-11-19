//
//  Router.swift
//  VIPER
//
//  Created by 강민규 on 2022/11/19.
//

import Foundation
import UIKit

class Router: RouterProtocol {
    
    class func createModule() -> UIViewController {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "ViewController")
        
        if let view = viewController as? ViewController {
            var presenter : PresenterProtocol = Presenter()
            let router : RouterProtocol = Router()
            var interactor : InteractorProtocol = Interactor()
            var apiService : APIServiceProtocol = APIService()
            
            view.presenter = presenter
            presenter.view = view
            presenter.router = router
            presenter.interactor = interactor
            interactor.presenter = presenter
            interactor.apiService = apiService
            return viewController
        }
        
        return UIViewController()
    }
    
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    
    
}
