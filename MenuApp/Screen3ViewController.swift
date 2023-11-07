//
//  Screen3ViewController.swift
//  MenuApp
//
//  Created by Sarah Rodrigues on 03/11/23.
//

import UIKit

class Screen3ViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func createSwitch () -> UISwitch{
        
        
        let switchControl = UISwitch(frame:CGRectMake(10, 20, 0, 0));
        switchControl.isOn = true
        switchControl.setOn(true, animated: false);
        switchControl.addTarget(self, action: #selector(switchValueDidChange(sender:)), for: .valueChanged)
        return switchControl
        
        
        
    }
    
    @objc func switchValueDidChange(sender:UISwitch!){
        
        print("Switch Value : \(sender.isOn))")
    }
    
    @IBAction func backButton3(_ sender: UIButton) {
        performSegue(withIdentifier: "BackToMenu3", sender: self)
        
    }
    
    @IBAction func flavourList(_ sender: UIButton) {
        performSegue(withIdentifier: "List1", sender: self)
        
    }
    
    @IBAction func favoritesButton(_ sender: UIButton) {
        performSegue(withIdentifier: "favoritesList", sender: self)
    }
    
    
    @IBAction func addNewFlavour(_ sender: UIButton) {
        let alertController = UIAlertController(title: "New Popsicle", message: "Flavour:", preferredStyle: .alert)
        
        alertController.addTextField { (textField) in
            // configure the properties of the text field
            textField.placeholder = "Flavour"
        }
        
        alertController.addTextField { (textField) in
            // configure the properties of the text field
            textField.placeholder = "Price"
        }
        
        let switchControl = createSwitch()
                switchControl.isOn = false
                alertController.view.addSubview(switchControl)
                
                let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
                let saveAction = UIAlertAction(title: "Save", style: .default) { [weak self] _ in
                    if let inputName = alertController.textFields?[0].text,
                       let inputPrice = alertController.textFields?[1].text,
                       let price = Int(inputPrice) {
                        let isFavorite = switchControl.isOn
                        if isFavorite {
                            let newPopsicle = Popsicle(f: inputName, p: price, fav: switchControl.isOn)
                            List.popsicleList.append(newPopsicle) 
                            List.popsivleFavList.append(newPopsicle)
                            
                        } else {
                            let newPopsicle = Popsicle(f: inputName, p: price, fav: !switchControl.isOn)
                            List.popsicleList.append(newPopsicle)
                            
                        } 
                    }
                }
                
                alertController.addAction(cancelAction)
                alertController.addAction(saveAction)
                
                present(alertController, animated: true, completion: nil)
        
        
        
    }
}


