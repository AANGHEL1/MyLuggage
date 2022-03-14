//
//  SettingsViewController.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/9/21.
//

import UIKit

var unit = "kg"

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var segmentedOutlet: UISegmentedControl!
    
    
    @IBAction func UnitSegmented(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            unit = "kg"
        }
        else {
            unit = "lbs"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if unit == "kg"{
            segmentedOutlet.selectedSegmentIndex = 0
        }
        else {
            segmentedOutlet.selectedSegmentIndex = 1
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
