//
//  indexHaderView.swift
//  wk_swift
//
//  Created by Leo on 2018/11/8.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit
import SnapKit

class indexHaderView: UIView {
    
    var searchView : CustomTextField!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.white
        loadSubView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadSubView() -> Void {
        let bgImg = UIImageView.init(frame: CGRect.init(origin: CGPoint.zero, size: CGSize.init(width: screen_width, height: 300)))
        bgImg.image = UIImage(named: "banner_bg");
        self.addSubview(bgImg);
        
        loadNavView();
        loadBannarView()
        loadTypeView();
    }
    
    func loadNavView() -> Void {
        self.searchView = CustomTextField(frame:CGRect(x: 15, y: 15, width: screen_width-30, height: 40));
        self.searchView.layer.cornerRadius = 5;
        self.searchView.backgroundColor = UIColor.white
        self.searchView.placeholder = "遇见美好生活";
        let leftview = UIImageView(image: UIImage(named: "search"))
        leftview.frame = CGRect.init(x: 10, y: 13, width: 14, height: 14)
        self.searchView.leftViewMode = UITextFieldViewMode.always
        self.searchView.leftView = leftview;
        self.addSubview(self.searchView)
    
        let rightBut = UIButton(type: UIButtonType.custom)
//        rightBut.frame = CGRect.init(x: 0, y: 0, width: 40, height: 20)
        self.addSubview(rightBut)
        rightBut.snp.makeConstraints { (make) in
            make.width.equalTo(50)
            make.height.equalTo(30)
            make.right.equalToSuperview().offset(-25)
            make.top.equalToSuperview().offset(20)
        }
        rightBut.setTitle("搜索", for: UIControlState.normal)
        rightBut.setTitleColor(themeColor, for: UIControlState.normal)
        
    }
    
    func loadBannarView() -> Void {
        let bannarV = bannarView(frame: CGRect(x: 0, y: 80, width: screen_width, height: 300))
        let model = bannarModel();
        model.bannarId = 100;
        model.dayStr = "20181112";
        model.title = "1111111";
        model.summary = "slwkjdsc";
        let model2 = bannarModel();
        model2.bannarId = 100;
        model2.dayStr = "20181112";
        model2.title = "222222";
        model2.summary = "slwkjdsc";
        let model3 = bannarModel();
        model3.bannarId = 100;
        model3.dayStr = "20181112";
        model3.title = "33333";
        model3.summary = "slwkjdsc";
        let model4 = bannarModel();
        model4.bannarId = 100;
        model4.dayStr = "20181112";
        model4.title = "444444";
        model4.summary = "slwkjdsc";
        bannarV.configView([model,model2,model3,model4]);
        self.addSubview(bannarV);
    }
    func loadTypeView(){
        let nameArr = ["演艺演出","文博展览","亲子教育","艺术体验","文投i精选"]
        for idx in 0...4 {
            let view = UIView(frame: CGRect(x:CGFloat(idx) * screen_width/5, y: 380, width: screen_width/5, height: 80))
            self.addSubview(view)
            let imgV = UIImageView(image: UIImage(named: "index-icon"))
            imgV.backgroundColor = themeColor;
            view.addSubview(imgV);
            imgV.snp.makeConstraints { (make) in
                make.top.equalToSuperview().offset(5);
                make.left.equalToSuperview().offset(15);
                make.right.equalToSuperview().offset(-15);
                make.height.equalTo(imgV.snp.width);
            }
           
            imgV.layer.masksToBounds = true
            imgV.layer.cornerRadius = imgV.frame.width/2
            
            let label = UILabel();
            label.font = UIFont.systemFont(ofSize: 12)
            view.addSubview(label);
            label.textAlignment = .center
            label.snp.makeConstraints { (make) in
                make.top.equalTo(imgV.snp.bottom).offset(5)
                make.left.equalToSuperview().offset(10);
                make.right.equalToSuperview().offset(-10);
                make.height.equalTo(20)
            }
            label.text = nameArr[idx];
            let but = UIButton(type: UIButtonType.custom)
            view.addSubview(but)
            but.snp.makeConstraints { (make) in
                make.bottom.right.top.left.equalToSuperview().offset(0)
            }
            but.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        }
    }
    @objc private func buttonClick() {
        
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
 


}
