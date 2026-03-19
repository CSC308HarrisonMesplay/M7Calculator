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
        let action = UIAlertAction(title: "+(plus)", style: .default, handler: {(action: UIAlertAction) ->() in self.selectOperator.setTitle("+", for: .normal) })
        
        
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
    
    func showAlert(message: String, title: String? = "Alert"){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
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
    }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

