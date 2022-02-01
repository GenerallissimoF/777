//
//  SecondViewController.swift
//  777
//
//  Created by Ivan Adoniev on 01.02.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var firstVc = ViewController()
    
    @IBOutlet weak var secondVcLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let name = firstVc.vievControllerTF.text ?? ""
        changeLabelName(name: name)
        
    }
    
}
extension SecondViewController: ViewControllerDelegate {
    func changeLabelName(name: String) {
        secondVcLabel.text = name
    }
    
}
