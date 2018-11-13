//
//  bannarDetailView.swift
//  wk_swift
//
//  Created by Leo on 2018/11/9.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit
import SnapKit


class bannarDetailView: UIView {
    
    var yearLab :UILabel!
    var dayLab :UILabel!
    var weekLab :UILabel!
    var dateLab :UILabel!
    var nameLab :UILabel!
    var descLab :UILabel!
    var imageV : UIImageView!
    var leftWith : CGFloat?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white;
        self.leftWith = frame.size.width/3
//        self.layer.masksToBounds = true;
        self.layer.cornerRadius = 5;
        loadSubView()
        self.layer.shadowColor = UIColor.init(red: 170/255, green: 177 / 255, blue:170/255, alpha: 1.0).cgColor
        self.layer.shadowOpacity = 0.8//不透明度
        self.layer.shadowRadius = 5.0//设置阴影所照射的范围
        self.layer.shadowOffset = CGSize.init(width: 0, height: 0)// 设置阴影的偏移量
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadSubView() -> Void {
        
        self.yearLab = UILabel()
        self.yearLab.font = UIFont.systemFont(ofSize: 10)
        self.yearLab.text = "2018.11"
        self.yearLab.textAlignment = NSTextAlignment.center;
        self.addSubview(self.yearLab);
        self.yearLab.snp.makeConstraints{(make) in
            make.width.equalTo(self.leftWith!)
            make.height.equalTo(20)
            make.left.equalToSuperview().offset(0)
            make.top.equalToSuperview().offset(20)
        }
        
        self.dayLab = UILabel()
        self.dayLab.font = UIFont.systemFont(ofSize: 20)
        self.dayLab.text = "09"
        self.dayLab.textAlignment = NSTextAlignment.center;
        self.addSubview(self.dayLab);
        self.dayLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.yearLab.snp.bottom).offset(10)
            make.width.equalTo(self.leftWith!)
            make.height.equalTo(30)
            make.left.equalToSuperview().offset(0)
        }
        
        self.weekLab = UILabel()
        self.weekLab.font = UIFont.systemFont(ofSize: 10)
        self.weekLab.text = "星期五"
        self.weekLab.textAlignment = NSTextAlignment.center;
        self.addSubview(self.weekLab);
        self.weekLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.dayLab.snp.bottom).offset(10)
            make.height.equalTo(20)
            make.width.equalTo(self.leftWith!)
            make.left.equalToSuperview().offset(0)
        }
        
        self.dateLab = UILabel()
        self.dateLab.font = UIFont.systemFont(ofSize: 10)
        self.dateLab.text = "十月初二"
        self.dateLab.textAlignment = NSTextAlignment.center;
        self.addSubview(self.dateLab);
        self.dateLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.weekLab.snp.bottom).offset(10)
            make.height.equalTo(20)
            make.width.equalTo(self.leftWith!)
            make.left.equalToSuperview().offset(0)
        }
        
        self.imageV = UIImageView();
        self.addSubview(self.imageV)
        self.imageV.snp.makeConstraints { (make) in
            make.width.equalToSuperview().multipliedBy(0.6)
            make.right.equalToSuperview().offset(0)
            make.top.equalToSuperview().offset(0)
            make.height.equalTo(180)
        }
        
        self.nameLab = UILabel()
        self.nameLab.font = UIFont.systemFont(ofSize: 20)
        self.nameLab.text = "aaaaaaaa"
        self.nameLab.textAlignment = NSTextAlignment.center;
        self.addSubview(self.nameLab);
        self.nameLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.imageV.snp.bottom).offset(10)
            make.height.equalTo(30)
            make.width.equalTo(self.frame.size.width)
            make.left.equalToSuperview().offset(0)
        }
        self.descLab = UILabel()
        self.descLab.font = UIFont.systemFont(ofSize: 20)
        self.descLab.text = "aaaaaaaa"
        self.descLab.textAlignment = NSTextAlignment.center;
        self.addSubview(self.descLab);
        self.descLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.nameLab.snp.bottom).offset(10)
            make.height.equalTo(30)
            make.width.equalTo(self.frame.size.width)
            make.left.equalToSuperview().offset(0)
        }
        
    }
    
    func configViewWithModel(_ model:bannarModel) -> Void {
        self.yearLab.text = model.dayStr! as String;
        self.nameLab.text = model.title! as String;
        self.descLab.text = model.summary! as String;
//        self.imageV.setImageWithString(model.url!);
        self.imageV.image = UIImage(named: "bannarImg");
    }
    

}
