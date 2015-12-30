//
//  ProductDetailViewController.swift
//  ACShoppingAssistant
//
//  Created by Adriana Carelli on 29/12/15.
//  Copyright © 2015 Adriana Carelli. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {

    @IBOutlet weak var labelTitle: UILabel!
    
    @IBOutlet weak var labelStore: UILabel!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    var product : Product? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.labelTitle.text = self.product!.title
        self.labelStore.text = self.product!.store
        self.imageView.image = UIImage(data: self.product!.image!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
