//
//  ItemsListViewController.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/9/21.
//

import UIKit

class ItemsListViewController: UIViewController {

    var item: Item?
    
    @IBOutlet weak var ItemsTextView: UITextView!
    
    @IBAction func TapGesture(_ sender: UITapGestureRecognizer) {
        ItemsTextView.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for (key,value) in ListOfItems {
            if value != "0" {
                ItemsTextView.text = ItemsTextView.text + value + "X " + key + "\n"
            }
        }
        
    }
    
    
    

}
