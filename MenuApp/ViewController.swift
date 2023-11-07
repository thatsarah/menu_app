//
//  ViewController.swift
//  MenuApp
//
//  Created by Sarah Rodrigues on 03/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if (usernameField.text == "Sarah" && passwordField.text == "8514") {
            performSegue(withIdentifier: "Menu", sender: self)
        } else if (usernameField.text == "Goiano" && passwordField.text == "196405") {
            performSegue(withIdentifier: "Menu", sender: self)
        } else if (usernameField.text == "Taisa" && passwordField.text == "4585") {
            performSegue(withIdentifier: "Menu", sender: self)
        } else {
            let alert = UIAlertController(title: "Alert", message: "Erro no login/senha", preferredStyle: UIAlertController.Style.alert);alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}


