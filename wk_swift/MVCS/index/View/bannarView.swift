//
//  bannarView.swift
//  wk_swift
//
//  Created by Leo on 2018/11/12.
//  Copyright © 2018年 Leo. All rights reserved.
//

import UIKit

class bannarView: UIView,UIScrollViewDelegate{
    var scrollV : UIScrollView?
    var number : NSInteger = 0
    var bigNum : NSInteger = 1
    var viewWidth : CGFloat! = screen_width * 2/3 - 30
    let viewHeight : CGFloat! = 260.0
    let space : CGFloat! = 30.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.scrollV = UIScrollView(frame: CGRect(x: 0, y: 0, width: viewWidth, height: self.frame.height));
        self.scrollV?.clipsToBounds = false;
        self.scrollV!.showsHorizontalScrollIndicator = false;
        self.scrollV!.showsVerticalScrollIndicator = false
        self.scrollV!.delegate = self;
        self.scrollV?.isPagingEnabled = true;
        self.addSubview(self.scrollV!);
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configView(_ modelArr:[bannarModel]) {
        var arr = modelArr;
        arr.append(modelArr[0]);
        number = arr.count;
        self.scrollV!.contentSize = CGSize(width: CGFloat(arr.count) * (viewWidth + space)+space, height: viewHeight);
        for (index,model) in arr.enumerated() {
            let detailV = bannarDetailView(frame: CGRect(x: CGFloat(index)*(viewWidth + space)+space, y: 10, width: viewWidth, height: viewHeight));
            detailV.tag = 100+index;
            detailV.configViewWithModel(model);
            self.scrollV!.addSubview(detailV);
        }
    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        let bigV = self.scrollV?.viewWithTag(Int(100+bigNum));
        UIView.animate(withDuration: 1) {
            bigV?.frame = CGRect(x: bigV?.frame.origin.x ?? 0, y: 10, width: self.viewWidth, height: self.viewHeight);
            bigV?.layoutSubviews();
        }
    }
    
    func  scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let num = (scrollView.contentOffset.x - self.space) / (self.viewWidth + self.space);
        
        let idx = lroundf(Float(num));
        if bigNum == idx {
            return;
        }
        bigNum = idx;
    
        self.scrollV!.contentOffset = CGPoint(x: CGFloat(idx)*(self.viewWidth + self.space)+self.space, y: 0);
        
        let view = self.scrollV?.viewWithTag(Int(100+idx));
        UIView.animate(withDuration: 1) {
            var rect = view?.frame;
            rect?.origin.y = 0;
            rect?.size.width = 20 + self.viewWidth;
            rect?.size.height = 20 + self.viewHeight;
            view?.frame = rect!;
            view?.layoutSubviews();
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView){
        
        if scrollView.contentOffset.x > (viewWidth+space) * CGFloat(number-1) {
            scrollV!.contentOffset = CGPoint(x: space, y: 0);
        }
        if scrollView.contentOffset.x < 0 {
            scrollV!.contentOffset = CGPoint(x: CGFloat(number-1)*(viewWidth + space), y: 0)
        }
        
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let view = super.hitTest(point, with: event);
//        if((view?.isEqual(self))!){
            for subV in scrollV!.subviews{
                let offset = CGPoint(x: point.x-scrollV!.frame.origin.x + scrollV!.contentOffset.x-subV.frame.origin.x, y: point.y-scrollV!.frame.origin.y+scrollV!.contentOffset.y-subV.frame.origin.y)
                if(view == subV.hitTest(offset, with: event)){
                    return view
                }
            }
            return scrollV
//        }
//        return view
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
