//
//  ViewController.swift
//  Raj_tableviewwithcell
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
  
    

    @IBOutlet weak var tableview: UITableView!
    
    var imageArray = ["A","B","C","D","E"]
    var nameArray = ["Burgger","Lachii","Choclet","Biriani","Borhani"]
    var priceArray = ["100$","200$","250$","350$","400$"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        
        cell.cellImage.image = UIImage(named: imageArray[indexPath.row])
        cell.cellName.text = nameArray[indexPath.row]
        cell.cellPrice.text = priceArray[indexPath.row]
        
        return cell
        
      }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

