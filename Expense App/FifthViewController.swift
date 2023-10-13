//
//  FifthViewController.swift
//  Expense App
//
//  Created by Kritika Sharma on 10/10/23.
//

import UIKit

protocol canReceive {
    func passDataBack(data: String)
}

class FifthViewController: UIViewController {
 //   UITableViewDataSource
    var delegate: canReceive?
    
    @IBOutlet weak var amountTextfield: UITextField!
    @IBOutlet weak var datePicker: UIButton!
    
    @IBOutlet weak var DoneButton: UIButton!
    /*
    private let tableView: UITableView = {
        let table = UITableView()
        table.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return table
    }()

    let datePicker: UIDatePicker = {
        let datePicker = UIDatePicker()
        datePicker.locale = .current
        datePicker.datePickerMode = .date
        datePicker.preferredDatePickerStyle = .compact
        datePicker.tintColor = .systemGray
        return datePicker
    }()
     
     
 */
    override func viewDidLoad() {
        super.viewDidLoad()
     //   view.addSubview(datePicker)
     //   view.addSubview(tableView)
       // tableView.dataSource = self
       // datePicker.center = view.center
   //     customizeButtonNotSelected()
        DoneButton.layer.cornerRadius = 24.0
    }
    
    @IBAction func done(_ sender: Any) {
        
        delegate?.passDataBack(data: amountTextfield.text!)
        dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        let datePicker = UIDatePicker()
           datePicker.datePickerMode = .dateAndTime // You can change the mode as needed
           datePicker.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
           
           let alertController = UIAlertController(title: "Select a Date", message: nil, preferredStyle: .alert)
           alertController.view.addSubview(datePicker)
           
           let doneAction = UIAlertAction(title: "Done", style: .default, handler: nil)
           alertController.addAction(doneAction)
           
           present(alertController, animated: true, completion: nil)
       }

       @objc func datePickerValueChanged(sender: UIDatePicker) {
           let selectedDate = sender.date
           // Handle the selected date here
       
    }
    
    /*
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        return cell
    }
     */
}
