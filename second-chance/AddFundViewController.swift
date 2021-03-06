//
//  AddFundViewController.swift
//  second-chance
//
//  Created by Afrin Momin on 10/31/21.
//

import UIKit

class AddFundViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var previousVC = TableViewController()
    var imagePicker = UIImagePickerController()
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var descriptionTitleTextField: UITextField!
    @IBOutlet weak var imageDisplay: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageDisplay.image = selectedImage
        }
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func uploadImageTapped(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func addTapped(_ sender: Any) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let fund = FundCD(entity : FundCD.entity(), insertInto: context)
            
            if let titleText = titleTextField.text{
                fund.name = titleText
                fund.descrip = descriptionTitleTextField.text
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
