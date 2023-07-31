//
//  signupvc.swift
//  xxx
//
//  Created by odc on 22/07/2023.
//

import UIKit
class signupvc: UIViewController {

    
    
    func validatefields()->String?
    {
        
        if passwordtext.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            confrmpasswordtext.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            emailtext.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            usernametext.text?.trimmingCharacters(in: .whitespacesAndNewlines)==""
        {
            
            return "please enter all the fields"
        }
        
        if passwordtext.text != confrmpasswordtext.text
        {
            return "enter the same password"
        }
      
        return nil
    }
    
    
    @IBAction func signupbtn(_ sender: Any) {
        
    
        let error = validatefields()
        
        if error != nil
        {
            errortext.text=error!
        }
        
        else
        {
            let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "success") as!succesfull
            
            
            navigationController?.pushViewController(vb, animated: true)
            
            let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "profile") as!profile
            
            
            
            if let username = usernametext.text, !username.isEmpty {
                UserDataManager.shared.loggedInUsername = username
                // Proceed to the home page
            }
            if let email = emailtext.text, !email.isEmpty {
                UserDataManager.shared.loggedInEmail = email
                // Proceed to the home page
            }
        }
        
    }
    
    @IBOutlet weak var confrmpasswordtext: UITextField!
    @IBOutlet weak var errortext: UILabel!
    @IBOutlet weak var passwordtext: UITextField!
    @IBOutlet weak var emailtext: UITextField!
    @IBOutlet weak var usernametext: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }
    

    

}
