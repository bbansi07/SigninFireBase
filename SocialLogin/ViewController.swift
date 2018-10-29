//
//  ViewController.swift
//  SocialLogin
//
//  Created by Zeitech Solutions on 24/10/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var btnGmail : UIButton!
    @IBOutlet var btnFaceBook : UIButton!
    @IBOutlet var btnTwitter : UIButton!
    @IBOutlet var btnSignIn : UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //let handle = Auth.addStateDidChangeListener()
    }

    @IBAction func btnSignInPressed(_ sender : UIButton){
    let signVC = self.storyboard?.instantiateViewController(withIdentifier: "SigninVC") as! SigninVC
        self.present(signVC, animated: true) {
            
        }
    }
    @IBAction func btnGmailPressed(_ sender : UIButton){
        
    }
    @IBAction func btnFacebookPressed(_ sender : UIButton){
        
    }
    @IBAction func btnTwitterPressed(_ sender : UIButton){
        
    }
}

