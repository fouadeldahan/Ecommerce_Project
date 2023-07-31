//
//  introduction4.swift
//  xxx
//
//  Created by odc on 22/07/2023.
//

import UIKit

class introduction4: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    //    navigationItem.hidesBackButton=true

    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Hide the back button
            self.navigationItem.hidesBackButton = true
        }
    
    @IBAction func signup(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "6") as!signupvc
        
        
          navigationController?.pushViewController(vb, animated: true)
        
    }
    @IBAction func login(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "5") as!loginvc
        
        
          navigationController?.pushViewController(vb, animated: true)
        
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
