//
//  ViewController.swift
//  InsertModel
//
//  Created by FC on 17/3/26.
//  Copyright © 2017年 FC. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
    let table = UITableView()
    var listarr = [PersonModel]()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadData(url: "www.baidu.com") { (array) in
            self.listarr = array as! [PersonModel]
            table.reloadData()
        }
        
            setUI()
    
    
    }

    func setUI(){
        table.frame=self.view.bounds
        table.delegate=self
        table.dataSource=self
        table.register(UITableViewCell.self, forCellReuseIdentifier: "CellID")
        view.addSubview(table)
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listarr.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "CellID")
        cell.textLabel?.text=self.listarr[indexPath.row].name
        cell.detailTextLabel?.text="\(self.listarr[indexPath.row].phoneNum)"
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondvc = SecondVC()
        secondvc.permodel=listarr[indexPath.row]//as?PersonModel
        self.present(secondvc, animated: true, completion: nil)
        secondvc.backblock={(str:String,phone:Int) in
//            self.table.reloadRows(at: [indexPath], with: .automatic)
            
            self.listarr.insert(secondvc.permodel, at: 0)
            self.table.reloadData()
        }

        
    }



}

