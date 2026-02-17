//
//  ViewController.swift
//  M2Calculator_harrison
//
//  Created by Mesplay, Harrison W. on 1/27/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var operand1TextField: UITextField!
    @IBOutlet weak var operand2TextField: UITextField!
    @IBOutlet weak var selectOperator: UIButton!
    
    @IBAction func operatorButton(_ sender: Any) {
        let actionSheet = UIAlertController(title: nil, message: nil, preferredStyle: .alert)
        
        //plus
        let plusAction = UIAlertAction(title: "+(plus)", style: .default){ _ in
            self.selectOperator.setTitle("+", for: .normal)
        }
        actionSheet.addAction(plusAction)
        
        //minus
        let minusAction = UIAlertAction(title: "-(minus)", style: .default){_ in
            self.selectOperator.setTitle("-", for: .normal)
        }
        actionSheet.addAction(minusAction)
        
        //divide
        let divideAction = UIAlertAction(title: "/(divide)", style: .default){_ in
            self.selectOperator.setTitle("/", for: .normal)
        }
        actionSheet.addAction(divideAction)
        
        //multiply
        let multiplyAction = UIAlertAction(title: "*(multiply)", style: .default){_ in
            self.selectOperator.setTitle("*", for: .normal)
        }
        actionSheet.addAction(multiplyAction)
        
        present(actionSheet, animated: true)
    }
    @IBOutlet weak var resultLabel:UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
        //let op1 = Int(operand1TextField.text!)!
        //let op2 = Int(operand2TextField.text!)!
        //let op = selectOperator.title(for: .normal)!
        
        guard let op1 = Int(operand1TextField.text), let a = Int(op1) else{
            return
        }
        guard let op2 = Int(operand2TextField.text), let b = Int(op2) else{
            return
        }
        guard let op = selectOperator.title(for: .normal) else{
            return
        }
        
        let result = a + b
        resultLabel.text = "\(result)"
            }else if op == "-" {
        let result = a - b
        resultLabel.text = "\(result)"
            }else if op == "*" {
        let result = a * b
        resultLabel.text = "\(result)"
            }else if op == "/" {
        let result = a / b
        resultLabel.text = "\(result)"
            }else {
        //error
    }/*
        if let op1 = Int(operand1TextField.text){
            if let op1 = Int(op1){
                if let op2 = Int(operand2TextField.text){
                    if let op2 = Int(op2){
                        if let op = selectOperator.title(for: .normal){
                            if op == "+" {
                                
                        }
                    }
                }
            }
        }
        */
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

