//
//  loginvc.swift
//  xxx
//
//  Created by odc on 22/07/2023.
//

import UIKit

class loginvc: UIViewController {

   
    
    @IBOutlet weak var emailtext: UITextField!
    
    @IBOutlet weak var passwordtext: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       navigationController?.navigationBar.tintColor = UIColor.black

     //   navigationController?.navigationBar.isHidden = false


    }
    
    func validatefields()->String?
    {
        
        if passwordtext.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" ||
            
            emailtext.text?.trimmingCharacters(in: .whitespacesAndNewlines)=="" {
            
            
            return "please enter all the fields"
           }
        
       
      
        return nil
    }
    
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "6") as!signupvc
    
    
    @IBOutlet weak var errortext: UILabel!
    
    @IBAction func loginbtn(_ sender: Any) {
        
        
        
        
            let error = validatefields()
            
            if error != nil
            {
                errortext.text=error!
            }
            
        else if(emailtext.text=="fouad@gmail.com"&&passwordtext.text==String(12345))
            {
                
                let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "success") as!succesfull
                
                
                  navigationController?.pushViewController(vb, animated: true)
           
        }
        
        else
        {
            errortext.text = "Wrong Email or Password"
        }
      
    }
    
}
