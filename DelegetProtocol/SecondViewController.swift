//
//  SecondViewController.swift
//  DelegetProtocol
//
//  Created by U.M. Hamidul islam on 2/5/20.
//  Copyright © 2020 U.M. Hamidul islam. All rights reserved.
//

import UIKit

protocol PassDataToVc {
    func passData(str:String)
}


class SecondViewController: UIViewController {

    var data = ""
    var delegate: PassDataToVc!
    
    @IBOutlet weak var textNewNamw: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textNewNamw.text = data

        // Do any additional setup after loading the view.
    }

    @IBAction func onClickBack(_ sender: Any) {
        delegate.passData(str: textNewNamw.text!)
        navigationController?.popViewController(animated: true)
    }
    
}
