//
//  ViewController.swift
//  Raj-search
//
//  Created by apple on 2/17/20.
//  Copyright © 2020 apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    
    

    @IBOutlet weak var searchbar: UISearchBar!
    @IBOutlet weak var tableview: UITableView!
    
    var myArray = ["baten","motin","rahim","billal"]
    var searchArray = [String]()
    var searching = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searching {
            return searchArray.count
        }else{
            return myArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.accessoryType = .disclosureIndicator
        if searching {
            cell?.textLabel?.text = searchArray[indexPath.row]
        }else{
            cell?.textLabel?.text = myArray[indexPath.row]
        }
        
        return cell!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
         searchbar.delegate = self
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchArray = myArray.filter({$0.lowercased().prefix(searchText.count) == searchText.lowercased() })
        searching = true
        tableview.reloadData()
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searching = false
        searchBar.text = ""
        tableview.reloadData()
    }
}

