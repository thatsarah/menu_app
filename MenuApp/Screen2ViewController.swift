//
//  Screen2ViewController.swift
//  MenuApp
//
//  Created by Sarah Rodrigues on 03/11/23.
//

import UIKit

class Screen2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func backButton2(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToMenu2", sender: self)
    }
   
    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!

    @IBAction func generateButton(_ sender: UIButton) {
        let firstNumber = Int(number1.text!)
        let secondNumber = Int(number2.text!)
        resultLabel.textColor = UIColor.darkGray
        if number1.text == String(firstNumber!) {
            if number2.text == String(secondNumber!) {
                resultLabel.text = String(Int.random(in: firstNumber!...secondNumber!))
            }
                
        }

    }
   
}
