//
//  ViewController.swift
//  mateoCafe
//
//  Created by MATEO ACOSTA on 9/14/21.
//

import UIKit

class ViewController: UIViewController {
    var foodStuff : [String:Double] = [:]
    @IBOutlet weak var itemName: UITextField!
    @IBOutlet weak var price: UITextField!
    @IBOutlet weak var list: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodStuff["cheetos"] = 3.50
        foodStuff["pillow"] = 5.00
        foodStuff["table"] = 50.00
        foodStuff["burger"] = 2.50
        foodStuff["diet coke"] = 1.25
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addBut(_ sender: Any) {
        let thePrice = price.text!
        if let iName = itemName.text{
        if let iPrice = Double(thePrice){
            foodStuff = [iName:iPrice]
        }
        else{
            price.text = "type in a price"
        }
        }
        else{
            itemName.text = "type in an item"
        }
        

            
       // list.text = result

}
    @IBAction func menuBut(_ sender: Any) {
        var result = ""
        var prices = foodStuff.values
        var shop = foodStuff.keys
        //for i in shop{
           // result += i + "\n"
            //list.text += String(i)
          //  print(i)
        for (key, value) in foodStuff
        {
            result += "\(key) - $\(value)\n"
        }
        list.text = result
    }
    
}

