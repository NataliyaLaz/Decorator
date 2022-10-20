//
//  PanframeRoof.swift
//  Decorator
//
//  Created by Nataliya Lazouskaya on 20.10.22.
//

import Foundation

class PanframeRoof: MercedesDecorator {
    required init(decorator: MerceresProtocol) {
        super.init(decorator: decorator)
    }
    
    override func getTitle() -> String {
        return super.getTitle() + " premium roof"
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 2000
    }
}
