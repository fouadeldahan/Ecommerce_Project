//
//  profile.swift
//  xxx
//
//  Created by odc on 27/07/2023.
//

import UIKit

class profile: UIViewController {
    var text1:String="fouad@gmail.com"
    var text2:String="Fouad Samy"
    override func viewDidLoad() {
        super.viewDidLoad()
        email.text=text1
        username.text=text2
        
        
        if let loggedInUsername = UserDataManager.shared.loggedInUsername {
            username.text = loggedInUsername
            // Do any additional setup after loading the view.
            
        }
        if let loggedInemail = UserDataManager.shared.loggedInEmail {
            email.text = loggedInemail
            // Do any additional setup after loading the view.
            
        }
    }
  
    
   
    @IBOutlet weak var email: UILabel!
    
    @IBOutlet weak var username: UILabel!
    
    @IBAction func LogOut(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "4") as!introduction4
        
        navigationController?.pushViewController(vb, animated: true)
        
    }
    @IBAction func profile(_ sender: Any) {
       
    }
    
    @IBAction func cart(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "cart") as!cart
        
        navigationController?.pushViewController(vb, animated: true)
    }
    @IBAction func home(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "home") as!HomePage
        
        navigationController?.pushViewController(vb, animated: true)
    }
    

}
