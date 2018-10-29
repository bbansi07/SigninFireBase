//
//  HomeVC.swift
//  SocialLogin
//
//  Created by Zeitech Solutions on 29/10/18.
//

import UIKit
import FirebaseUI

class HomeVC: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutPressed(_ sender : UIButton){
       if Auth.auth().currentUser != nil {
        
        do{
                try Auth.auth().signOut()
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController
                self.present(vc, animated: true, completion: nil)
            }catch{
                
            }
        }
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
