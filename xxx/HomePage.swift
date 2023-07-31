//
//  HomePage.swift
//  xxx
//
//  Created by odc on 23/07/2023.
//

import UIKit
import Alamofire
import SDWebImage

class HomePage: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate{

    var output:String="all"
    var newproductsArray: [product] = []

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {


        if(output=="women")
        {
            return      woman.count

        }
        else if(output=="electricity")
        {
            return      electronics.count

        }
        else if(output=="jewelery")
        {
            return      jewelery.count
        }
        else if(output=="all")
        {
            return      globalProductsArray.count
        }
        else
        {
            return      men.count

        }
    }


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //print("hghyuj")
        return CGSize(width: self.view.frame.width*0.4, height: self.view.frame.width*0.8)
        //return CGSize(width: 200, height: 300)


    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "details") as! details


          navigationController?.pushViewController(vb, animated: true)


        if(output=="women")
        {
            vb.navigated_product=woman[indexPath.row]

        }
        else if(output=="electricity")
        {
            vb.navigated_product=electronics[indexPath.row]


        }
        else if(output=="jewelery")
        {
            vb.navigated_product=jewelery[indexPath.row]

        }
        else if(output=="all")
        {
            vb.navigated_product=globalProductsArray[indexPath.row]

        }
        else
        {
            vb.navigated_product=men[indexPath.row]


        }




    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {



        var cell=collectionView.dequeueReusableCell(withReuseIdentifier: "500", for: indexPath) as! CollectionViewCell


        if(output=="women")
        {
            cell.Title.text=woman[indexPath.row].title
            cell.image.sd_setImage(with: URL(string:woman[indexPath.row].image)  )
            cell.price.text=String(woman[indexPath.row].price)

        }
        else if(output=="all")
        {
            cell.Title.text=globalProductsArray[indexPath.row].title
            cell.image.sd_setImage(with: URL(string:globalProductsArray[indexPath.row].image)  )
            cell.price.text=String(globalProductsArray[indexPath.row].price)

        }

        else if(output=="electricity")
        {
            cell.Title.text=electronics[indexPath.row].title
            cell.image.sd_setImage(with: URL(string:electronics[indexPath.row].image)  )
            cell.price.text=String(electronics[indexPath.row].price)

        }
        else if(output=="jewelery")
        {
            cell.Title.text=jewelery[indexPath.row].title
            cell.image.sd_setImage(with: URL(string:jewelery[indexPath.row].image)  )
            cell.price.text=String(jewelery[indexPath.row].price)

        }
        else
        {
            cell.Title.text=men[indexPath.row].title
            cell.image.sd_setImage(with: URL(string:men[indexPath.row].image)  )
            cell.price.text=String(men[indexPath.row].price)

        }





        return cell

    }


    @IBAction func all(_ sender: Any) {

       output="all"
        collectionview1.reloadData()

    }
    @IBAction func woman(_ sender: Any) {
       output="women"
        collectionview1.reloadData()
    }

    @IBAction func men1(_ sender: Any) {


       output="men"
        collectionview1.reloadData()
    }

    @IBAction func electric(_ sender: Any) {


        output="electricity"
        collectionview1.reloadData()

    }
    @IBAction func jewelery(_ sender: Any) {

       output="jewelery"
        collectionview1.reloadData()
    }
    
  
    var globalProductsArray : [product] = []
    var men : [product] = []
    var woman : [product] = []
    var electronics : [product] = []
    var jewelery : [product] = []
    
    
    
    func setupRightBarButtonItem() {
           // Create a UIBarButtonItem with a title and set the selector function
           let rightBarButtonItem = UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(rightBarButtonTapped))
           
        
        let attributes: [NSAttributedString.Key: Any] = [
               .font: UIFont.boldSystemFont(ofSize: 21) // Adjust the font size as needed
           ]
           rightBarButtonItem.setTitleTextAttributes(attributes, for: .normal)
        
        rightBarButtonItem.tintColor = UIColor.black // Set your desired color


           navigationItem.rightBarButtonItem = rightBarButtonItem
       }
    
    @objc func rightBarButtonTapped() {
        // Do something when the right bar button is tapped
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "profile") as!profile
        
        navigationController?.pushViewController(vb, animated: true)

        // Call a function to change
    }
    

    @IBAction func Profilebtn(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "profile") as!profile
        
        navigationController?.pushViewController(vb, animated: true)
    }
    @IBAction func Cartbtn(_ sender: Any) {
        let vb = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "cart") as!cart
        
        navigationController?.pushViewController(vb, animated: true)
    }
    @IBAction func Homebtn(_ sender: Any) {
      
    }
    
    @IBOutlet weak var collectionview1: UICollectionView!
    
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            // Hide the back button
            self.navigationItem.hidesBackButton = true
        }
    override func viewDidLoad() {
        

        setupRightBarButtonItem()

    //    navigationItem.hidesBackButton=false

        

       
        super.viewDidLoad()
        getData { [self]  prod in
            //            print(prod?[0].category)
            
            if let pr = prod.self{
                self.globalProductsArray = pr
            }
            for item in self.globalProductsArray
            {
                if(item.category=="jewelery")
                {
                    jewelery.append(item)
                }
                else if(item.category=="women's clothing")
                {
                    woman.append(item)
                }
                else if(item.category=="electronics")
                {
                    electronics.append(item)
                }
                else
                {
                    men.append(item)

                }
            }
            DispatchQueue.main.async
            {
                self.collectionview1.reloadData()

            }
            
           
           
        }

        collectionview1.delegate=self
        collectionview1.dataSource=self
        
    }
    
    func getData(completion : @escaping (_ prod : [product]?) -> Void){
        
        let apiURL = "https://fakestoreapi.com/products" // project API's URL
        
        let request = URLRequest(url: URL(string:apiURL)!)
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        
        let task = session.dataTask(with: request) { [unowned self] (data, response,error) in
            
            if let safeData = data {
                
                guard let safeParsedData = self.ParseJSON(apiData: safeData) else {return}
                
                //print(safeParsedData)
                
                self.globalProductsArray = safeParsedData
                
                
                
                //print(safeParsedData)
                
                completion(self.globalProductsArray)
            }
            
        }
        
        task.resume()
        
        
        
    }
    
    
    func ParseJSON( apiData : Data) -> [product]?{
        let decoder = JSONDecoder()
        
     //   print("before do")
        
        do {
            let decodedData = try decoder.decode([product].self, from: apiData)
            
           
            
            return decodedData
        }
        catch{
            // print(error)
            return nil
        }
        
    }
    
    
}
