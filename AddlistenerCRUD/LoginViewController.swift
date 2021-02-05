//
//  LoginViewController.swift
//  AddlistenerCRUD
//
//  Created by Janarthan Subburaj on 05/02/21.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    @IBOutlet weak var Pasaword: UITextField!
    @IBOutlet weak var Username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func LoginAction(_ sender: Any) {
        Auth.auth().signIn(withEmail: Username.text!, password: Pasaword.text!){[self] (Login,error) in
            if let error = error {
                let Alert = UIAlertController(title: "Alert", message: "Check UserName and Password", preferredStyle: .alert)
                Alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
                present(Alert, animated: true, completion: nil)
            }else{
                performSegue(withIdentifier: "LoginTo", sender: self)
            }
        }
        print("Login Button Tapped")

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "LoginTo"{
            
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    

}
