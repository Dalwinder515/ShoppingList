//
//  ViewController.swift
//  ShoppingList
//
//  Created by Student on 2019-10-16.
//  Copyright © 2019 CentennialCollege. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var EditListName: UITextField!
    @IBOutlet weak var ListNameLabel: UILabel!
    
    @IBOutlet weak var EnterNewItem: UITextField!
    @IBOutlet weak var EnterQuantity: UITextField!
    
    @IBOutlet weak var item1: UITextField!
    @IBOutlet weak var item2: UITextField!
    @IBOutlet weak var item3: UITextField!
    @IBOutlet weak var item4: UITextField!
    @IBOutlet weak var item5: UITextField!
    @IBOutlet weak var item6: UITextField!
    @IBOutlet weak var item7: UITextField!
    
    @IBOutlet weak var qty1: UILabel!
    @IBOutlet weak var qty2: UILabel!
    @IBOutlet weak var qty3: UILabel!
    @IBOutlet weak var qty4: UILabel!
    @IBOutlet weak var qty5: UILabel!
    @IBOutlet weak var qty6: UILabel!
    @IBOutlet weak var qty7: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBAction func ListNameChanged(_ sender: UITextField) {
        
        ListNameLabel.text=EditListName.text
    }
    
    @IBAction func AddItemButton(_ sender: UIButton) {
        
        if(!(EnterNewItem.text!.isEmpty||EnterQuantity.text!.isEmpty))
        {
            if(count == 0)
            {
                item1.text=EnterNewItem.text
                qty1.text=EnterQuantity.text
            }
            else if(count == 1)
            {
                item2.text=EnterNewItem.text
                qty2.text=EnterQuantity.text
            }
            else if(count == 2)
            {
                item3.text=EnterNewItem.text
                qty3.text=EnterQuantity.text
            }
            if(count == 3)
            {
                item4.text=EnterNewItem.text
                qty4.text=EnterQuantity.text
            }
            if(count == 4)
            {
                item5.text=EnterNewItem.text
                qty5.text=EnterQuantity.text
            }
            if(count == 5)
            {
                item6.text=EnterNewItem.text
                qty6.text=EnterQuantity.text
            }
            if(count == 6)
            {
                item7.text=EnterNewItem.text
                qty7.text=EnterQuantity.text
            }
            count+=1
        }
    }
    
    
    @IBAction func stp1(_ sender: UIStepper) {
        qty1.text=Int(sender.value).description
    }
    @IBAction func stp2(_ sender: UIStepper) {
        qty2.text=Int(sender.value).description
    }
    @IBAction func stp3(_ sender: UIStepper) {
        qty3.text=Int(sender.value).description
    }
    @IBAction func stp4(_ sender: UIStepper) {
        qty4.text=Int(sender.value).description
    }
    @IBAction func stp5(_ sender: UIStepper) {
        qty5.text=Int(sender.value).description
    }
    @IBAction func stp6(_ sender: UIStepper) {
        qty6.text=Int(sender.value).description
    }
    @IBAction func stp7(_ sender: UIStepper) {
        qty7.text=Int(sender.value).description
    }
    

    @IBAction func SaveButton(_ sender: UIButton) {
    }
    
    @IBAction func CancelButton(_ sender: UIButton) {
        
        item1.text=""
        item2.text=""
        item3.text=""
        item4.text=""
        item5.text=""
        item6.text=""
        item7.text=""
        qty1.text="0"
        qty2.text="0"
        qty3.text="0"
        qty4.text="0"
        qty5.text="0"
        qty6.text="0"
        qty7.text="0"
        ListNameLabel.text="Shopping List"
    }
    
}

