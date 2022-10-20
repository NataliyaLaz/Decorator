//
//  ViewController.swift
//  Decorator
//
//  Created by Nataliya Lazouskaya on 20.10.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceLabel: UILabel! {
        didSet {
            priceLabel.text = "Price: " + "\(mercedes.getPrice())" + "$"
        }
    }
    @IBOutlet weak var commentLabel: UILabel! {
        didSet {
            commentLabel.text = mercedes.getTitle()
        }
    }
    
    var mercedes: MerceresProtocol = MercedesCLA()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            mercedes = MercedesCLA()
        case 1:
            mercedes = MercedesCLA()
            mercedes = AlloyWheels(decorator: mercedes)
        case 2:
            mercedes = MercedesCLA()
            mercedes = AlloyWheels(decorator: mercedes)
            mercedes = PanframeRoof(decorator: mercedes)
        default: break
        }
        priceLabel.text = "Price: " + "\(mercedes.getPrice())" + "$"
        commentLabel.text = mercedes.getTitle()
    }
    
}

