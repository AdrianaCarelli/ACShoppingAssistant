//
//  NewProductViewController.swift
//  ACShoppingAssistant
//
//  Created by Adriana Carelli on 29/12/15.
//  Copyright © 2015 Adriana Carelli. All rights reserved.
//

import UIKit
import CoreData

class NewProductViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var textTitle: UITextField!
    
    @IBOutlet weak var textStore: UITextField!
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let tap = UITapGestureRecognizer(target: self, action: "imageTapped")
        imageView.userInteractionEnabled = true
        imageView.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func imageTapped(){
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera){
            let cameraViewCounter = UIImagePickerController()
            
            cameraViewCounter.sourceType = UIImagePickerControllerSourceType.Camera
            cameraViewCounter.delegate = self
            self.presentViewController(cameraViewCounter, animated: true, completion: nil)
        }
        
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        picker .dismissViewControllerAnimated(true, completion: nil)
        imageView.image=info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    

    @IBAction func pressedSave(sender: AnyObject) {
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        
                let product = NSEntityDescription.insertNewObjectForEntityForName("Product", inManagedObjectContext: context) as! Product
        
                product.title = self.textTitle.text
                product.store = self.textStore.text
                product.image = UIImagePNGRepresentation(self.imageView!.image!)
        
                do{
                    try context.save()
                    
                }catch{
                    
                }
        
         self.dismissViewControllerAnimated(true, completion:nil )
        
    }
    
    @IBAction func pressedCancel(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion:nil )
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    
}
