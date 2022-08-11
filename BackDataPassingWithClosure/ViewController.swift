//
//  ViewController.swift
//  BackDataPassingWithClosure
//
//  Created by AKSHAY NAMDEV BADHE on 08/08/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var middleNameLable: UILabel!
    @IBOutlet weak var lastNameLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func forwordBtn(_ sender: UIButton) {
        guard let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        else { return }
        secondVC.dataFromVC2 = {(name,middleName,lastName) in
            print("Inside the closure")
            self.nameLable.text = name
            self.middleNameLable.text = middleName
            self.lastNameLable.text = lastName
        }
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}
