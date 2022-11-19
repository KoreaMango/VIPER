//
//  Presenter.swift
//  VIPER
//
//  Created by 강민규 on 2022/11/19.
//


class Presenter: PresenterProtocol {
    var view: ViewProtocol?
    var router: RouterProtocol?
    var interactor: InteractorProtocol?
    
    func viewDidLoad() {
        interactor?.retrieveNumberList()
        view?.showView()
        
    }
    
    func didRetrieveNumbers(_ numbers: [Number]) {
        view?.getNumbers(with: numbers)
    }
}
