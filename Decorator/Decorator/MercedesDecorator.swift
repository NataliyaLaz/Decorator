//
//  MercedesDecorator.swift
//  Decorator
//
//  Created by Nataliya Lazouskaya on 20.10.22.
//

import Foundation

class MercedesDecorator: MerceresProtocol {
    private let decoratorType: MerceresProtocol
    
    required init(decorator: MerceresProtocol) {
        self.decoratorType = decorator
    }
    
    func getTitle() -> String {
        return decoratorType.getTitle()
    }
    
    func getPrice() -> Double {
        return decoratorType.getPrice()
    }
}
