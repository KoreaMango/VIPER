//
//  Interactor.swift
//  VIPER
//
//  Created by 강민규 on 2022/11/19.
//


class Interactor : InteractorProtocol{
    
    var presenter: PresenterProtocol?
    var apiService : APIServiceProtocol?
    
    
    func retrieveNumberList(){
        let numbers = apiService?.requestNumbers() ?? []
        
        presenter?.didRetrieveNumbers(numbers)
    }
}

