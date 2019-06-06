//
//  UIButton+Extension.swift
//  XJUIButtonCategory
//
//  Created by 汤小军 on 2019/6/5.
//  Copyright © 2019 tangxiaojun. All rights reserved.
//

import UIKit


public extension UIButton {
    
    
//MARK: ========================= 图片距离设置
    /// 图片到右边的距离
    ///
    /// - Parameter value: value
    func imageSpaceRightValue(_ value : CGFloat) {
        self.contentHorizontalAlignment = .left
        guard let imageView = self.imageView else {return}
        let imageViewW = imageView.frame.width
        let btnW = self.frame.width
        let marginRight = btnW - imageViewW
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: marginRight - value, bottom: 0, right: 0)
        
    }
    
    
    /// 图片到左边的距离
    ///
    /// - Parameter value: value
    func imageSpaceLeftValue(_ value : CGFloat) {
        self.contentHorizontalAlignment = .left
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: value, bottom: 0, right: 0)
       
    }
    
//MARK: ========================= 文字距离设置
    /// title到右边的距离
    ///
    /// - Parameter value: value
    func titleSpaceRightValue(_ value : CGFloat) {
       
        self.contentHorizontalAlignment = .left
        guard let titleLabel = self.titleLabel else {return}
        titleLabel.sizeToFit()
        let titleLabelW = titleLabel.frame.width
        let imageViewW = self.imageView?.frame.width ?? 0
        
        let btnW = self.frame.width
        let marginRight = btnW - titleLabelW
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: marginRight - (value + imageViewW), bottom: 0, right: 0)
     
        
    }
    
    /// title到左边边的距离
    ///
    /// - Parameter value: value
    func titleSpaceLeftValue(_ value : CGFloat) {
        let imageViewW = self.imageView?.frame.width ?? 0
        self.contentHorizontalAlignment = .left
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: value - imageViewW, bottom: 0, right: 0)
 
    }
    
//MARK: =========================图片和文字设置
    
    ///  文字距离图片的距离 文字在左 图片在右
    ///
    /// - Parameter value: value
    func titleSpaceImageValue(_ value : CGFloat) {
        self.titleLabel?.sizeToFit()
        let imageW = self.imageView?.frame.width ?? 0
        let titleLabelW = self.titleLabel?.frame.width ?? 0
        
        let imageMargin = imageW + value/2.0
        let titleMargin = titleLabelW + value/2.0
        
        self.contentVerticalAlignment = .center
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageMargin, bottom: 0, right: imageMargin)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left:titleMargin, bottom: 0, right: -titleMargin)
        
       
    }
    
    ///  图片距离文字的距离 图片在左 文字在右 默认的
    ///
    /// - Parameter value: value
    func imageSpaceTitleValue(_ value : CGFloat) {
        
        self.contentVerticalAlignment = .center
        self.titleEdgeInsets = UIEdgeInsets(top: 0, left: value/2.0, bottom: 0, right: -value/2.0)
        self.imageEdgeInsets = UIEdgeInsets(top: 0, left: -value/2.0, bottom: 0, right: value/2.0)
        
    }
    
    
    ///   图片在文字下面的间距
    ///
    /// - Parameter value: value
    func imageInBottomSpaceValue(_ value : CGFloat) {
        self.titleLabel?.sizeToFit()
        self.contentVerticalAlignment = .center
        
        let imageW = self.imageView?.frame.width ?? 0
        let imageH = self.imageView?.frame.height ?? 0
        let titleW = self.titleLabel?.frame.width ?? 0
        let titleH = self.titleLabel?.frame.height ?? 0
        
        let titleTopMargin = titleH/2.0 + value/2.0
        let titleLeftMargin = imageW/2.0
        let imageTopMargin = imageH/2.0 + value/2.0
        let imageLeftMargin = titleW/2.0
        
        
        self.titleEdgeInsets = UIEdgeInsets(top: -titleTopMargin, left: -titleLeftMargin, bottom: titleTopMargin, right: titleLeftMargin)
        self.imageEdgeInsets = UIEdgeInsets(top: imageTopMargin, left: imageLeftMargin, bottom: -imageTopMargin, right: -imageLeftMargin)
        
    }
    
    ///   图片在文字上面的间距
    ///
    /// - Parameter value: value
    func titleInBottomSpaceValue(_ value : CGFloat) {
        self.titleLabel?.sizeToFit()
        self.contentVerticalAlignment = .center
        
        let imageW = self.imageView?.frame.width ?? 0
        let imageH = self.imageView?.frame.height ?? 0
        let titleW = self.titleLabel?.frame.width ?? 0
        let titleH = self.titleLabel?.frame.height ?? 0
        
        let titleTopMargin = titleH/2.0 + value/2.0
        let titleLeftMargin = imageW/2.0
        let imageTopMargin = imageH/2.0 + value/2.0
        let imageLeftMargin = titleW/2.0
        
        
        self.titleEdgeInsets = UIEdgeInsets(top: titleTopMargin, left: -titleLeftMargin, bottom: -titleTopMargin, right: titleLeftMargin)
        self.imageEdgeInsets = UIEdgeInsets(top: -imageTopMargin, left: imageLeftMargin, bottom: imageTopMargin, right: -imageLeftMargin)
        
    }
    
}
