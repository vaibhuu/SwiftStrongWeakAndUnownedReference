//
//  PresentStrongWeakUnownedRefrencesVC.swift
//  StrongWeakUnownedRefrences
//
//  Created by Vaibhu Thakkar on 20/06/24.
//

import UIKit

class PresentStrongWeakUnownedRefrencesVC: UIViewController {

    //MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print("\(self) allocated")
        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("\(self) deallocated")
    }
    
    //MARK: - IBactions
    @IBAction func btnDismissAction(_ sender: Any) {
        self.dismiss(animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
          
        })
    }
    
    @IBAction func btnDismissStronAction(_ sender: Any) {
        self.dismiss(animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.observer()
        })
    }
    
    @IBAction func btnDismissWeakAction(_ sender: Any) {
        self.dismiss(animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: { [weak self] in
            self?.observer() //Weak can be optional so "self?"
        })
    }
    
    @IBAction func btnDismissUnownedAction(_ sender: Any) {
        self.dismiss(animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: { [unowned self] in
            self.observer() //Unowned can not be optional so can not be "?" self
            //Here unowned is weak reference so memory gets deallocated but it will crash as self will be nil at the time self.observer is executed
        })
    }
    
    //MARK: - Custom function
    func observer() {
        
    }

}
