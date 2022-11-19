//
//  Network.swift
//  VIPER
//
//  Created by 강민규 on 2022/11/19.
//


class APIService : APIServiceProtocol {
    func requestNumbers() -> [Number] {
        let numbers : [Number] =
        [Number(text: "1", textInt: 1),
         Number(text: "2", textInt: 2),
         Number(text: "3", textInt: 3),
         Number(text: "4", textInt: 4),
         Number(text: "5", textInt: 5),
         Number(text: "6", textInt: 6),
         Number(text: "7", textInt: 7),
         Number(text: "8", textInt: 8),
         Number(text: "9", textInt: 9),
        ]
        
        return numbers
    }
}
