//
//  CompleteFundViewController.swift
//  second-chance
//
//  Created by Afrin Momin on 10/31/21.
//

import UIKit

class CompleteFundViewController: UIViewController {
    
    var previousVC = TableViewController()
    var selectedFund : FundCD?
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var isFavorite: UISwitch!
    @IBOutlet weak var displayImage: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedFund?.name
        descriptionLabel.text = selectedFund?.descrip
        // Do any additional setup after loading the view.
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
