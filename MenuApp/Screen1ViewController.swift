//
//  Screen1ViewController.swift
//  MenuApp
//
//  Created by Sarah Rodrigues on 03/11/23.
//

import UIKit

class Screen1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var answerLabel: UILabel!
    
    let answers = ["YES", "NO", "MAYBE", "TRY AGAIN"]
    
    @IBAction func backButton1(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToMenu1", sender: self)

    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        
        answerLabel.textColor = UIColor.purple
        
        answerLabel.text = answers.randomElement()
        
        

    }
    


}
