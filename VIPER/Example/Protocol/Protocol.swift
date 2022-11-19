//
//  Protocol.swift
//  VIPER
//
//  Created by 강민규 on 2022/11/20.
//

import UIKit

// Network
protocol APIServiceProtocol {
    func requestNumbers() -> [Number]
}

// View
protocol ViewProtocol {
    var presenter : PresenterProtocol? { get set }
    
    // Presenter -> View
    func showView()
    func getNumbers(with numbers: [Number])
}

// Interactor
protocol InteractorProtocol {
    var presenter : PresenterProtocol? { get set }
    var apiService : APIServiceProtocol? { get set }

    func retrieveNumberList()
}

// Presenter
protocol PresenterProtocol {
    var view : ViewProtocol? { get set }
    var router : RouterProtocol? { get set }
    var interactor : InteractorProtocol? { get set }
    
    // View -> Presenter
    func viewDidLoad()
    func didRetrieveNumbers(_ numbers: [Number])
}

// Router
protocol RouterProtocol {
    static func createModule() -> UIViewController
}
