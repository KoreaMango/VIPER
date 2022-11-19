//
//  ViewController.swift
//  VIPER
//
//  Created by 강민규 on 2022/11/19.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var label : UILabel = {
        let label = UILabel()
        label.text = "Default"
        return label
    }()
    
    var numbersList : [Number]?

    var presenter : PresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setView()
        presenter?.viewDidLoad()
    }
    
    func setView() {
        self.view.addSubview(label)
        
        label.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}

extension ViewController : ViewProtocol {
    
    func getNumbers(with numbers: [Number]) {
        numbersList = numbers
    }
    
    func showView() {
        let text = numbersList!.first!.text
        label.text = text
    }
}

