//
//  cart.swift
//  xxx
//
//  Created by odc on 29/07/2023.
//

import UIKit
import SDWebImage
class cart: UIViewController ,UITableViewDelegate,UITableViewDataSource {
    
    var productsArray: [product] = []
    var totalprice:Double=0
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return productsArray.count
        
        
    }
    
   
    
    
    @IBAction func profilebtn(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "profile") as!profile
        
        navigationController?.pushViewController(vb, animated: true)
    }
    
    @IBAction func Cartbtn(_ sender: Any) {
       
    }
    @IBAction func Homebtn(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "home") as!HomePage
        
        navigationController?.pushViewController(vb, animated: true)
    }
    
    @IBOutlet weak var tableview1: UITableView!
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell=tableview1.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.title1.text=productsArray[indexPath.row].title
        cell.category1.text=productsArray[indexPath.row].category
        cell.price1.text=String(productsArray[indexPath.row].price)
        
        cell.image1.sd_setImage(with: URL(string:productsArray[indexPath.row].image))
        
        return cell
    }
    
    
   
    @IBOutlet weak var price: UILabel!
    //var productsArray = product()
 
    override func viewDidLoad() {
        tableview1.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
    
        
        tableview1.delegate=self
        tableview1.dataSource=self
        
        super.viewDidLoad()
        
        
        for item in productsArray
        {
            totalprice=totalprice+item.price
        }
        price.text=String(totalprice)
    }
    


}
