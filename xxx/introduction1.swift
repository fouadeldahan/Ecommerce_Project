//
//  introduction1.swift
//  xxx
//
//  Created by odc on 22/07/2023.
//

import UIKit

class introduction1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Hide the back button
            self.navigationItem.hidesBackButton = true
        }
    
    
    @IBAction func button(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "2") as!introduction2
        
        
          navigationController?.pushViewController(vb, animated: true)
        
    }
    
}
