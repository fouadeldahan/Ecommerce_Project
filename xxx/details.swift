//
//  details.swift
//  xxx
//
//  Created by odc on 29/07/2023.
//

import UIKit

class details: UIViewController {

    var navigated_product=product()
    var newproductsArray: [product] = []
    override func viewDidLoad() {
        
      //  navigationItem.hidesBackButton=false
        super.viewDidLoad()
        view1()
     

    }
  
    
   
    @IBAction func ADD_cart(_ sender: Any) {
        
    
        
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "cart") as! cart
        
        navigationController?.pushViewController(vb, animated: true)

        newproductsArray.append(navigated_product)
        vb.productsArray=newproductsArray
        
    }
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var descriptlabel: UILabel!
    
    @IBOutlet weak var titlelabel: UILabel!
    
  func  view1(){
        titlelabel.text=navigated_product.title
        image.sd_setImage(with: URL(string:navigated_product.image))
         descriptlabel.text=navigated_product.description
    }
   
}
