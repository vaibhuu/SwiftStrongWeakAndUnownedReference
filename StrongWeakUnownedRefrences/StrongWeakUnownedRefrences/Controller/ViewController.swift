//
//  ViewController.swift
//  StrongWeakUnownedRefrences
//
//  Created by Vaibhu Thakkar on 20/06/24.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //MARK: - IBactions
    @IBAction func btnPresentAction(_ sender: Any) {
        if let presentVc = (self.storyboard?.instantiateViewController(identifier: "PresentStrongWeakUnownedRefrencesVC") as? PresentStrongWeakUnownedRefrencesVC) {
            self.present(presentVc, animated: true)
        }
    }
    
}

