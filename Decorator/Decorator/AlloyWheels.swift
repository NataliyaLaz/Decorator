//
//  AlloyWheels.swift
//  Decorator
//
//  Created by Nataliya Lazouskaya on 20.10.22.
//

import Foundation

class AlloyWheels: MercedesDecorator {
    required init(decorator: MerceresProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + " premium wheels"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 1500
    }
}
