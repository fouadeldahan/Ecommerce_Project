//
//  succesfull.swift
//  xxx
//
//  Created by odc on 27/07/2023.
//

import UIKit

class succesfull: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "profile") as!profile

        //navigationItem.hidesBackButton=true
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Hide the back button
            self.navigationItem.hidesBackButton = true
        }
    
    @IBAction func buttn(_ sender: Any) {
        
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "home") as!HomePage
        
        
          navigationController?.pushViewController(vb, animated: true)
        
    }
    
  

}
