//
//  SigninVC.swift
//  SocialLogin
//
//  Created by Zeitech Solutions on 29/10/18.
//

import UIKit
import Firebase
import FirebaseAuth

class SigninVC: UIViewController {

    @IBOutlet weak var txtEmail  :UITextField!
    @IBOutlet weak var txtPwd : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginPressed(_ sender : UIButton){
       
        if txtEmail.text == "" || txtPwd.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please Enter credential", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel) { (alert) in
                
            }
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }
        else
        {
            Auth.auth().signIn(withEmail: txtEmail.text!, password: txtPwd.text!) { (result, err) in
                if err == nil{
                let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                let nav = UINavigationController(rootViewController: home
                )
                self.present(nav, animated: true, completion: nil)
                }else{
                    let alertController = UIAlertController(title: "Error", message: err?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
        }
        }
    }
    @IBAction func createAccount(_ sender : UIButton){
        if txtEmail.text == "" || txtPwd.text == "" {
            let alert = UIAlertController(title: "Alert", message: "Please Enter credential", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .cancel) { (alert) in
                
            }
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
        }else{
            Auth.auth().createUser(withEmail: txtEmail.text!, password: txtPwd.text!) { (result, err) in
                if err == nil {
                    let alert = UIAlertController(title: "", message: "Registered successfully.", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "OK", style: .cancel) { (alert) in
                        self.txtEmail.text = ""
                        self.txtPwd.text = ""
                    }
                    alert.addAction(okAction)
                    self.present(alert, animated: true, completion: nil)
                }else{
                    let alertController = UIAlertController(title: "Error", message: err?.localizedDescription, preferredStyle: .alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    self.present(alertController, animated: true, completion: nil)
                }
                
              
               /* let home = self.storyboard?.instantiateViewController(withIdentifier: "HomeVC") as! HomeVC
                let nav = UINavigationController(rootViewController: home
)
                self.present(nav, animated: true, completion: nil)*/            }
        }
    }
    
    @IBAction func resetPasswordPressed(_ sender : UIButton){
        let resetVC = self.storyboard?.instantiateViewController(withIdentifier: "ResetVC") as! ResetVC
        self.present(resetVC, animated: true, completion: nil)
    }
    @IBAction func backPressed(_ sender : UIButton){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        self.present(vc, animated: true, completion:nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
