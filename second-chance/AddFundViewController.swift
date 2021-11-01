//
//  AddFundViewController.swift
//  second-chance
//
//  Created by Afrin Momin on 10/31/21.
//

import UIKit

class AddFundViewController: UIViewController {
    
    var previousVC = TableViewController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var favoriteSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let fund = FundCD(entity : FundCD.entity(), insertInto: context)
            
            if let titleText = titleTextField.text{
                fund.name = titleText
                fund.favorite = favoriteSwitch.isOn
            }
            
            try? context.save()
            
            navigationController?.popViewController(animated: true)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
