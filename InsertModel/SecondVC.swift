//
//  SecondVC.swift
//  InsertModel
//
//  Created by FC on 17/3/26.
//  Copyright © 2017年 FC. All rights reserved.
//

import UIKit

class SecondVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var secondTab = UITableView()
    var namefiled = UITextField()
    var phonefiled = UITextField()
    let first = ViewController()
    
    var permodel = PersonModel()
    
    var backblock : ((_ str:String,_ phone:Int)->())?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        secondTab.frame=CGRect(x: 0, y: 100, width: view.frame.width, height: view.frame.height-100)
        self.secondTab.register(UITableViewCell.self, forCellReuseIdentifier: "cellid")
        secondTab.delegate=self
        secondTab.dataSource=self
        view.addSubview(secondTab)
        
        let titlearr=["返回","添加"]
        for i in 0..<2{
            let btn = UIButton(titlename: titlearr[i], frame: CGRect(x: 50+120*i, y: 50, width: 100, height: 30))
            btn.tag=990+i
//            btn.addTarget(self, action: #selector(btnc) for: UIControlEventTouchUpInside)
//            btn.addTarget(self, action: #selector(btnc), for: UIControlEvents.touchUpInside)
            view.addSubview(btn)
        }
        
    }
//    func btnc(sender:UIButton) {
//        guard let backblock=backblock else {
//            return
//        }
//    permodel.name=namefiled.text
//    permodel.phoneNum=phonefiled.text
//        if sender.tag == 990{
//        backblock(permodel.name!,permodel.phoneNum)
//        }else{
//            backblock(permodel.name!,permodel.phoneNum)
//        }
//        
//        self.dismiss(animated: true, completion: nil)
//    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let backblock=backblock else {
            return
        }
        permodel.name=namefiled.text
        permodel.phoneNum=Int(phonefiled.text!)!
        if indexPath.row == 2{
            backblock(permodel.name!,permodel.phoneNum)
        }else{
            backblock(permodel.name!,permodel.phoneNum)
        }
        
        self.dismiss(animated: true, completion: nil)

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cellid")

        switch indexPath.row {
        case 0:
            namefiled = UITextField(placeholder: "请输入名字", frame: CGRect(x: 20, y: 5, width: 100, height: 30), font:UIFont.systemFont(ofSize: 13));
            namefiled.text=permodel.name
            cell.addSubview(namefiled)
        case 1:
                phonefiled = UITextField(placeholder: "请输入电话", frame: CGRect(x: 20, y: 5, width: 100, height: 30), font: UIFont.systemFont(ofSize: 13));
                phonefiled.text="\(permodel.phoneNum)"
                cell.addSubview(phonefiled)

        default:
            break
        }
        
        
        return cell
    }

}
