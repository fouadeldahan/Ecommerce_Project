//
//  ViewController.swift
//  xxx
//
//  Created by odc on 21/07/2023.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    @IBAction func button_getstarted(_ sender: Any) {
        
        
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "1") as!introduction1
        
        
          navigationController?.pushViewController(vb, animated: true)
        
    }
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   navigationController?.navigationBar.isHidden = true
       
    }


}

