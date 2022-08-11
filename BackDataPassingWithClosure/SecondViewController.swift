//
//  SecondViewController.swift
//  BackDataPassingWithClosure
//
//  Created by AKSHAY NAMDEV BADHE on 08/08/22.
//

import UIKit
class SecondViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var middleNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    var dataFromVC2 : ((String,String,String)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Second VC"
        self.navigationItem.hidesBackButton = true
}
@IBAction func backBtn(_ sender: UIButton) {
    guard let closure = dataFromVC2 else{
        print("No Data")
        return
    }
    let name = self.nameTextField.text
    let middleName = self.middleNameTextField.text
    let lastName = self.lastNameTextField.text
    dataFromVC2?(name ?? "Akshay", middleName ?? "N", lastName ?? "Badhe")
    self.navigationController?.popViewController(animated: true)
    }
}
