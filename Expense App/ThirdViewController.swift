//
//  ThirdViewController.swift
//  Expense App
//
//  Created by Kritika Sharma on 28/09/23.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var firstBottomCostraint: NSLayoutConstraint!
    @IBOutlet weak var secondBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var thirdBottomCostraint: NSLayoutConstraint!
    @IBOutlet weak var fourthBottomConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
        
    @IBAction func firstTabClicked(_ sender: Any) {
        view1.isHidden = false
        view2.isHidden = true
       
        
        firstBottomCostraint.constant = 5.0
        secondBottomConstraint.constant = 0
    }
    
    @IBAction func secondTabClicked(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = false
        
        firstBottomCostraint.constant = 0
        secondBottomConstraint.constant = 5.0
      
    }
    
    @IBAction func thirdTabClicked(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = true
       
    }
    
    @IBAction func fourthTabClicked(_ sender: Any) {
        view1.isHidden = true
        view2.isHidden = true
       
    }
    
}
