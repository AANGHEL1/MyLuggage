//
//  ViewController.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/8/21.
//

import UIKit

var segueUsed = ""

class ViewController: UIViewController {
    
    @IBOutlet weak var canvas: CanvasView!
    
    override func viewWillAppear(_ animated: Bool) {
        ListOfItems.removeAll()
        canvas.start()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segueUsed = segue.identifier!
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        canvas.stop()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

