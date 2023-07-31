//
//  BottomNavigationBar.swift
//  xxx
//
//  Created by odc on 30/07/2023.
//

import Foundation
import UIKit

class BottomNavigationBar: UIView {


    @IBOutlet weak var home: UIButton!

    @IBOutlet weak var profile: UIButton!
    @IBOutlet weak var cart: UIButton!

    @IBAction func HOMEBTN(_ sender: Any) {
        let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "home") as! HomePage
                if let navigationController = self.window?.rootViewController as? UINavigationController {
                    navigationController.pushViewController(homeVC, animated: true)
                }
    }

    @IBAction func CARTBTN(_ sender: Any) {
        let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "cart") as! cart
                if let navigationController = self.window?.rootViewController as? UINavigationController {
                    navigationController.pushViewController(homeVC, animated: true)
                }
    }

    @IBAction func PROFILEBTN(_ sender: Any) {
        let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "profile") as! profile
                if let navigationController = self.window?.rootViewController as? UINavigationController {
                    navigationController.pushViewController(homeVC, animated: true)
                }
    }

//    override init(frame: CGRect) {
//           super.init(frame: frame)
//           commonInit()
//       }
//
//       required init?(coder aDecoder: NSCoder) {
//           super.init(coder: aDecoder)
//           commonInit()
//       }
//
//    private func commonInit() {
//            let nib = UINib(nibName: "BottomNavigationBar", bundle: nil)
//            if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
//                view.frame = self.bounds
//                addSubview(view)
//            }
//        }
}


