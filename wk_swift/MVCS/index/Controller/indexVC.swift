//
//  indexVC.swift
//  wk_swift
//
//  Created by Leo on 2018/11/8.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

class indexVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var tableV : UITableView?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.navigationController?.isNavigationBarHidden = true

        
        loadSubView()
    }
    
    func loadSubView() -> () {
        self.tableV = UITableView(frame: CGRect.init(origin: CGPoint.init(x: 0, y: 0), size: CGSize.init(width: screen_width, height: screen_height)), style: .plain)
        self.tableV?.delegate = self
        self.tableV?.dataSource = self
        self.tableV?.bounces = false
        self.tableV?.tableHeaderView = indexHaderView(frame: CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: screen_width, height: 500)))
        tableV?.register(indexTableViewCell.self, forCellReuseIdentifier: "indexCell")
        self.view.addSubview(self.tableV!)
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 190
        }else if indexPath.section == 1 {
            return 290
        }else{
            return 70
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 0.1
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0.1
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:indexTableViewCell = tableView.dequeueReusableCell(withIdentifier: "indexCell") as! indexTableViewCell

        if indexPath.section == 0 {
            let model = bannarModel()
            cell.configActivityView([model,model,model])
        }else if indexPath.section == 1{
            let model = wenkorModel()
            model.type = 1;
            model.title = "ssss"
            cell.configWenkorView([model,model,model,model])
        }else{
            cell.configListView()
        }
        return cell;
    }

}
