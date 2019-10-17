/*
 Test Submission for Midterm Test
 File Name: ShoppingList.xcodeproj
 Name: Dalwinder SIngh
 ID: 301089722
 Date: 16/10/2019
 
 V1.1.5
 Simple Shopping List App
 - User can enter new items and corresponding quantity.
 - Increment, decrement buttons have been added to increase or decrease the count.
 - Cancel Button Clears everything
 
 2 UI designs have been provided in the attached pdf file.
 

 */

import UIKit

class ViewController: UIViewController {

    //UI elements declarations
    @IBOutlet weak var EditListName: UITextField!
    @IBOutlet weak var ListNameLabel: UILabel!
    
    @IBOutlet weak var EnterNewItem: UITextField!
    
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
    
    //variable to keep coiunt of the number of items already entered
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    //function invoked to change list name when EditListName is changed
    @IBAction func ListNameChanged(_ sender: UITextField) {
        
        ListNameLabel.text=EditListName.text
    }
    
    //function to add new item
    @IBAction func AddItemButton(_ sender: UIButton) {
        
        //if user has entered valid values
        if(!(EnterNewItem.text!.isEmpty))
        {
            //then update corresponding item
            if(count == 0)
            {
                item1.text=EnterNewItem.text
            }
            else if(count == 1)
            {
                item2.text=EnterNewItem.text
            }
            else if(count == 2)
            {
                item3.text=EnterNewItem.text
            }
            if(count == 3)
            {
                item4.text=EnterNewItem.text
            }
            if(count == 4)
            {
                item5.text=EnterNewItem.text
            }
            if(count == 5)
            {
                item6.text=EnterNewItem.text
            }
            if(count == 6)
            {
                item7.text=EnterNewItem.text
            }
            //increment item count
            count+=1
        }
    }
    
    //steppers for each item
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
    
    //save button, currently not fucntional
    @IBAction func SaveButton(_ sender: UIButton) {
    }
    
    //Cancel button fucntion, clears everything
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
        count=0
    }
    
}

