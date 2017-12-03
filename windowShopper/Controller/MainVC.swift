//
//  ViewController.swift
//  windowShopper
//
//  Created by Ravi Maru on 2017-11-28.
//  Copyright © 2017 Ravi Maru. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var GreetingsLbl: UILabel!
    @IBOutlet weak var ItemPriceTxt: TextField!
    @IBOutlet weak var HourlyWageTxt: TextField!
    
    @IBOutlet weak var HoursLbl: UILabel!
    @IBOutlet weak var resultLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GreetingsLbl.isHidden = true
        resultLbl.isHidden = true
        HoursLbl.isHidden = true
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width , height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        ItemPriceTxt.inputAccessoryView = calcBtn
        HourlyWageTxt.inputAccessoryView = calcBtn
        
    }

    @objc func calculate(){
        if let DataInWage = HourlyWageTxt.text , let DataInItemPrice = ItemPriceTxt.text {
            if let wageNumber = Double(DataInWage), let itemPriceNumber = Double(DataInItemPrice){
                view.endEditing(true)
                resultLbl.isHidden = false
                HoursLbl.isHidden = false
                resultLbl.text = "\(wage.HoursLogic(forwage: wageNumber, forprice: itemPriceNumber))"
                let hours = wage.HoursLogic(forwage: wageNumber, forprice: itemPriceNumber)
                if hours >= 100 {
                    GreetingsLbl.text = "Nothing is Easy. But, NEVER GIVE UP!!"
                    GreetingsLbl.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
                    GreetingsLbl.textAlignment = .center
                    
                    GreetingsLbl.isHidden = false
                    

                }
                
            }
        }
    }
    
    
    
    @IBAction func ClearAllBtnPressed(_ sender: Any) {
        GreetingsLbl.isHidden = true
        HoursLbl.isHidden = true
        resultLbl.isHidden = true
        HourlyWageTxt.text = ""
        ItemPriceTxt.text = ""
        
        
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

