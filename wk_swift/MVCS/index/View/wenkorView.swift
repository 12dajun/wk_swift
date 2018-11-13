//
//  wenkorView.swift
//  wk_swift
//
//  Created by Leo on 2018/11/13.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

class wenkorView: UIView {
    var titleLab :UILabel?
    var descLab :UILabel?
    var imageV : UIImageView?
    var but : UIButton?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadSubView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    func loadSubView() {
        titleLab = UILabel();
        self.addSubview(titleLab!)
        titleLab?.snp.makeConstraints({ (make) in
            make.left.top.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(20)
        })
        titleLab?.textColor = themeColor
        
        descLab = UILabel()
        self.addSubview(descLab!)
        descLab?.snp.makeConstraints({ (make) in
            make.top.equalTo((titleLab?.snp.bottom)!).offset(5)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.height.equalTo(20)
        })
        descLab?.font = UIFont.systemFont(ofSize: 11)
        imageV = UIImageView()
        self.addSubview(imageV!)
        imageV?.snp.makeConstraints({ (make) in
            make.top.equalTo((descLab?.snp.bottom)!).offset(5)
            make.left.equalToSuperview().offset(10)
            make.right.equalToSuperview().offset(-10)
            make.bottom.equalToSuperview().offset(0)
        })
        imageV?.layer.masksToBounds = true
        imageV?.layer.cornerRadius = 5
        
        
    }
    
    func configSubView(model:wenkorModel){
        titleLab?.text = (model.type == 1) ? "HOT" : "NEW"
        descLab?.text = model.title! as String
        imageV?.image = UIImage(named: "bannarImg");
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
