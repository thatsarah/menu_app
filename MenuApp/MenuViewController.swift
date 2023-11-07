//
//  MenuViewController.swift
//  MenuApp
//
//  Created by Sarah Rodrigues on 03/11/23.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func guruButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Screen1", sender: self)
    }
    
    @IBAction func randomNumberButton(_ sender: UIButton) {
        performSegue(withIdentifier: "Screen2", sender: self)

    }
    
    @IBAction func popsicleListNumber(_ sender: UIButton) {
        performSegue(withIdentifier: "Screen3", sender: self)

    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToLogin", sender: self)
    }
    
}
