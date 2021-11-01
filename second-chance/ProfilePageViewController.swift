//
//  ProfilePageViewController.swift
//  second-chance
//
//  Created by Afrin Momin on 11/1/21.
//

import UIKit

class ProfilePageViewController: UIViewController {

    @IBOutlet weak var circularImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circularImageView.layer.cornerRadius = circularImageView.frame.size.width/2
        circularImageView.clipsToBounds = true
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
