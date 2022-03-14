//
//  WeightViewController.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/9/21.
//

import UIKit

class WeightViewController: UIViewController {

    
    @IBOutlet weak var HaveFunLabel: UILabel!
    
    @IBOutlet weak var FitsLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        var weight = 0.0
        for (key,value) in ListOfItems{
            for i in 0..<items.count{
                if items[i].name == key{
                    let doublevalue = Double (value)!
                    weight = weight + (doublevalue * items[i].weight)
                }
            }
        }
        if unit == "kg"{
            weightLabel.text = String (format: "%0.2f",weight) + " kg"
        }
        else {
            weightLabel.text = String (format: "%0.2f",weight * 2.205) + " lbs"
        }
        
        if weight < 23 {
            FitsLabel.text = "It fits in the plane!"
            FitsLabel.textColor = UIColor.magenta
        }
        else {
            FitsLabel.text = "It doesn't fit in the plane! Get some items out."
            FitsLabel.textColor = UIColor.red
        }
        
        
        
        if (segueUsed == "beach"){
            HaveFunLabel.text = "Have fun on you beach trip!"
        }
        else {
            HaveFunLabel.text = "Have fun on you mountain trip!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
