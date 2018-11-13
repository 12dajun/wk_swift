//
//  MainVC.swift
//  wk_swift
//
//  Created by Leo on 2018/11/8.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit


class MainVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let index = indexVC()
        let indexNav = UINavigationController(rootViewController: index)
        indexNav.tabBarItem.title = "首页"
        indexNav.tabBarItem.image = UIImage(named: "")
        
        let beauty = beautyVC()
        let beautyNav = UINavigationController(rootViewController: beauty)
        beautyNav.tabBarItem.title = "美好"
        beautyNav.tabBarItem.image = UIImage(named: "")
        
        let life = lifeVC()
        let lifeNav = UINavigationController(rootViewController: life)
        lifeNav.tabBarItem.title = "生活"
        lifeNav.tabBarItem.image = UIImage(named: "")
        
        let my = MyVC()
        let myNav = UINavigationController(rootViewController: my)
        myNav.tabBarItem.title = "我的"
        myNav.tabBarItem.image = UIImage(named: "")
        
        self.viewControllers = [indexNav,beautyNav,lifeNav,myNav]
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
