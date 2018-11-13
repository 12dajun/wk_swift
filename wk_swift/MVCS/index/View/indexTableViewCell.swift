//
//  indexTableViewCell.swift
//  wk_swift
//
//  Created by Leo on 2018/11/13.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

class indexTableViewCell: UITableViewCell {
    var scrollV :UIScrollView?
    var label : UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        loadSubView();
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func loadSubView() {
        let line = UILabel(frame: CGRect(x: 10, y: 0, width: screen_width-20, height: 1))
        self.addSubview(line)
        line.backgroundColor = colorWithString(0xe9e9e9)
        
        label = UILabel(frame: CGRect(x: 10, y: 20, width: screen_width, height: 30))
        self.addSubview(label!)
        scrollV = UIScrollView()
        self.addSubview(scrollV!)
    }

    func configActivityView(_ listArr:[bannarModel]) {
         label?.isHidden = false;
        let width = screen_width*2/3-10
        scrollV?.frame = CGRect(x: 0, y: 60, width: screen_width, height: 100);
        scrollV?.contentSize = CGSize(width: width*CGFloat(listArr.count), height: 100)
        label?.text = "热门活动"
        for (index,model) in listArr.enumerated() {
            let but = UIButton(type: .custom)
            but.frame = CGRect(x: CGFloat(index)*width+10, y: 0, width: width-10, height: 100)
            but.setBackgroundImage(UIImage(named: "index-eg"), for: .normal)
            but.layer.masksToBounds = true
            but.layer.cornerRadius = 5
            scrollV?.addSubview(but)
        }
    }
    
    func configWenkorView(_ listArr:[wenkorModel]) {
         label?.isHidden = false;
        label?.text = "文投精选"
        let width = screen_width/3 + 20
        scrollV?.frame = CGRect(x: 0, y: 60, width: screen_width, height: 200);
        scrollV?.contentSize = CGSize(width: width*CGFloat(listArr.count), height: 200)
        for (index,model) in listArr.enumerated() {
           let wkView = wenkorView(frame: CGRect(x: CGFloat(index)*width, y: 0, width: width, height: 200))
            scrollV?.addSubview(wkView)
            wkView.configSubView(model: model)
        }
    }
    
    func configListView(){
        label?.isHidden = true;
        let width = 80
        scrollV?.frame = CGRect(x: 0, y: 20, width: screen_width, height: 40);
        scrollV?.contentSize = CGSize(width: width*6, height: 40)
        let arr = ["文客推荐","演艺演出","文博展览","亲子教育","艺术体验","文投精选"]
        for index in 0...5 {
            let but = UIButton(frame: CGRect(x: index*width, y: 0, width: width-10, height: 40))
            scrollV?.addSubview(but)
            but.titleLabel?.font = UIFont.systemFont(ofSize: 14)
            but.setTitle(arr[index], for: .normal)
            but.setTitleColor(UIColor.gray, for: .normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
