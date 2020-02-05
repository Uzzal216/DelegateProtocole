//
//  ViewController.swift
//  DelegetProtocol
//
//  Created by U.M. Hamidul islam on 2/5/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onClickBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc!.data = textName.text!
        vc!.delegate = self
        navigationController?.pushViewController(vc!, animated: true)
        
    }
    
}
extension ViewController: PassDataToVc{
    func passData(str: String) {
        textName.text = str 
    }
}
