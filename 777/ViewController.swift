//
//  ViewController.swift
//  777
//
//  Created by Ivan Adoniev on 01.02.2022.
//

import UIKit
protocol ViewControllerDelegate {
    func changeLabelName(name: String)
}

class ViewController: UIViewController {

    @IBOutlet weak var vievControllerTF: UITextField!
    
    var delegate:  ViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vievControllerTF.text = "Fuck"
    }

    @IBAction func viewControllerButtoAction(_ sender: UIButton) {
        
        delegate?.changeLabelName(name: vievControllerTF.text ?? "")
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "SecVC") else { return }
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

