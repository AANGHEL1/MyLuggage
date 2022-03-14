//
//  TableViewCell.swift
//  aanghel-MyLuggage
//
//  Created by Ana Anghel on 3/10/21.
//

import UIKit

class TableViewCell: UITableViewCell {
    
  
    @IBOutlet weak var amountLabel: UILabel!
    @IBOutlet weak var amountStepper: UIStepper!
    
    @IBOutlet weak var ItemImage: UIImageView!
    @IBOutlet weak var ItemLabel: UILabel!
    
    
    
    
    
    @IBAction func Stepper(_ sender: UIStepper) {
        amountLabel.text = String (Int (sender.value))
        var i = 0
        
        if ListOfItems.count==0 {
            ListOfItems[ItemLabel.text!] = amountLabel.text
        }
        
        while i<ListOfItems.count{
            for (key,values) in ListOfItems {
                if ItemLabel.text == key {
                    ListOfItems[key] = amountLabel.text
                }
                else {
                    ListOfItems[ItemLabel.text!] = amountLabel.text
                }
            }
            i = i+1
        }
    }
    
    func UpdateCellView(item: Item){
        ItemImage.image = UIImage(named: item.type.rawValue)
        ItemLabel.text = item.name
        item.amount = amountLabel.text!
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
