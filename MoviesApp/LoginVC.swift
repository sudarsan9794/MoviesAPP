//
//  LoginVC.swift
//  MoviesApp
//
//  Created by sudarsan on 11/17/17.
//  Copyright © 2017 sudarsan. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var UserTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
            }

    @IBAction func loginBtn(_ sender: Any) {

        if UserTextField.text!.isEmpty{
            let alert = UIAlertController(title: "Please Check", message: "Username cannot be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (UIAlertAction) in

            }))

            self.present(alert, animated: true, completion: nil)


        }else if UserTextField.text!.characters.count < 6 {
            let alert = UIAlertController(title: "Please Check", message: "Enter a Vaild Username, username should be more then  6 letters", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (UIAlertAction) in

            }))

            self.present(alert, animated: true, completion: nil)


        }else if PasswordTextField.text!.isEmpty{
            let alert = UIAlertController(title: "Please Check", message: "Password cannot be empty", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (UIAlertAction) in

            }))

            self.present(alert, animated: true, completion: nil)

        }else if PasswordTextField.text!.characters.count < 6{
        let alert = UIAlertController(title: "Plaese Check", message: "Enter a Vaild Password, password should be more then  6 letters", preferredStyle: .alert)


            alert.addAction(UIAlertAction(title: "ok", style: .default, handler: { (UIAlertAction) in

            }))

            self.present(alert, animated: true, completion: nil)
            

        } else if UserTextField.text!.characters.count > 6 , PasswordTextField.text!.characters.count > 6{


            performSegue(withIdentifier: "MoviesVC", sender: nil)
                }

    }
        
    }

   
