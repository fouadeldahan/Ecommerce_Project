//
//  introduction2.swift
//  xxx
//
//  Created by odc on 22/07/2023.
//

import UIKit

class introduction2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Hide the back button
            self.navigationItem.hidesBackButton = true
        }
   
    @IBAction func button(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "3") as!introduction3
        
        
          navigationController?.pushViewController(vb, animated: true)
        
    }
    
}
