//
//  ViewController.swift
//  calculator1
//
//  Created by Yuan on 2/23/20.
//  Copyright © 2020 Yuan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    var num1: String = ""
    var num2: String = ""
    var OP: String!
    var flag:Int=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    @IBOutlet weak var label: UILabel!
    
    @IBAction func Clear(_ sender: UIButton) {
        num1=""
        num2=""
        label.text="0"
        flag=0
    }
    
    @IBAction func ClickZero(_ sender: UIButton) {
        num1.append("0")
        label.text=num1
    }

    @IBAction func ClickOne(_ sender: UIButton) {
        num1.append("1")
        label.text=num1
    }
    
    @IBAction func ClickTwo(_ sender: Any) {
        num1.append("2")
        label.text=num1
    }
    
    @IBAction func three(_ sender: Any) {
        num1.append("3")
        label.text=num1
    }

    @IBAction func four(_ sender: Any) {
        num1.append("4")
        label.text=num1
    }
    
    @IBAction func five(_ sender: Any) {
        num1.append("5")
        label.text=num1
    }
    
    @IBAction func six(_ sender: Any) {
        num1.append("6")
        label.text=num1
    }
    
    @IBAction func seven(_ sender: Any) {
        num1.append("7")
        label.text=num1
    }
    
    @IBAction func eight(_ sender: Any) {
        num1.append("8")
        label.text=num1
    }
    @IBAction func nine(_ sender: Any) {
        num1.append("9")
        label.text=num1
    }
    @IBAction func plus(_ sender: Any) {
        if flag==0
        {
            num2=num1
            num1=""
            label.text=""
            flag=1
            OP="+"
        }
        else
        {
            OP="+"                   //先判断，实现连加
        }

    }
    
    @IBAction func minus(_ sender: Any) {
        if flag==0
        {
            num2=num1
            num1=""
            label.text=""
            flag=1
            OP="-"
        }
        else
        {
            OP="-"
        }
    }

    @IBAction func multiply(_ sender: Any) {
        if flag==0
        {
            num2=num1
            num1=""
            label.text=""
            flag=1
            OP="*"
        }
        else
        {
            OP="*"
        }
    }

    @IBAction func divide(_ sender: Any) {
        if flag==0
        {
            num2=num1
            num1=""
            label.text=""
            flag=1
            OP="/"
        }
        else
        {
            OP="/"
        }
    }

    @IBAction func point(_ sender: Any) {
        num1.append(".")
        label.text=num1
    }
    @IBAction func plusMinus(_ sender: Any) {
        if (num1 != "") {
            if ((num1)[num1.startIndex] == "-") {
                num1.remove(at: num1.startIndex)
            } else {
                num1 = "-" + num1
            }
            label.text = num1
        } else {
            if ((num2)[num2.startIndex] == "-") {
                num2.remove(at: num2.startIndex)
            } else {
                num2 = "-" + num2
            }
            label.text = num2
        }
        
    }
    
    @IBAction func percent(_ sender: Any) {
        var s:Double!=0
        if (num1 != "") {
            print("num1", num1)
            print("num2", num2)
            s = Double(num1)!
            s = s / 100
            num1 = String(format:"%.2f",s)
            label.text = num1
        } else {
            s = Double(num2)!
            s = s / 100
            num2 = String(format:"%.2f",s)
            label.text = num2
        }
        
        
    }

    @IBAction func equal(_ sender: Any) {
        var s:Double!=0
        
        if (flag==1)&&(num1 != "")&&(num2 != "")
        {
            switch OP!
            {
            case "+":
                s=Double(num1)!+Double(num2)!
            case "-":
                s=Double(num2)!-Double(num1)!
            case "*":
                s=Double(num1)!*Double(num2)!
            case "/":
                s=Double(num2)!/Double(num1)!
            default:
                print("=")
            }
            
            label.text=String(format:"%.2f",s)
            num1=""
            num2=label.text!
        }
    }

}

