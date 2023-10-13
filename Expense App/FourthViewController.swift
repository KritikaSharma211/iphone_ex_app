//
//  FourthViewController.swift
//  Expense App
//
//  Created by Kritika Sharma on 29/09/23.
//

import UIKit

class FourthViewController: UIViewController,canReceive {
    func passDataBack(data: String) {
        incomeLabel.text = data
    }
    
    
    @IBOutlet weak var incomeLabel: UILabel!
    @IBOutlet weak var expenseButton: UIButton!
    @IBOutlet weak var incomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        incomeButton.addTarget(self, action: #selector(tapOnButton), for: .touchUpInside)
        expenseButton.layer.cornerRadius = 24.0
        incomeButton.layer.cornerRadius = 24.0
        
    }
    @objc func tapOnButton() {
        let story = UIStoryboard(name: "Main", bundle: nil)
        let controller = story.instantiateViewController(withIdentifier: "FifthViewController") as! FifthViewController
        
        self.present(controller, animated: true, completion: nil)
        
        
    }
    
    @IBAction func incomebutton(_ sender: Any) {
        self.performSegue (withIdentifier: "sendDataForwards", sender:
        nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            let secondVC = segue.destination as! FifthViewController
           
            secondVC.delegate = self
        }
    }
    
    
    @IBAction func didTapSegment(segment: UISegmentedControl) {
        
    }
}
