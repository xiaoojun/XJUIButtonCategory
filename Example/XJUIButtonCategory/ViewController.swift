//
//  ViewController.swift
//  XJUIButtonCategory
//
//  Created by 汤小军 on 2019/6/5.
//  Copyright © 2019 tangxiaojun. All rights reserved.
//

import UIKit
import XJUIButtonCategory

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //正常的
        let btn0 = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 30))
        btn0.setImage(UIImage(named: "download_icon"), for: .normal)
        btn0.backgroundColor = UIColor.red
        self.view.addSubview(btn0)

        let btn1 = UIButton(frame: CGRect(x: 200, y: 100, width: 50, height: 30))
        btn1.setImage(UIImage(named: "download_icon"), for: .normal)
        btn1.backgroundColor = UIColor.red
        self.view.addSubview(btn1)
       
        btn1.imageSpaceRightValue(10)

        let btn2 = UIButton(frame: CGRect(x: 300, y: 100, width: 50, height: 30))
        btn2.setImage(UIImage(named: "download_icon"), for: .normal)
        btn2.backgroundColor = UIColor.red
        self.view.addSubview(btn2)
        btn2.imageSpaceLeftValue(10)

        //正常的
        let btn3 = UIButton(frame: CGRect(x: 10, y: 200, width: 100, height: 30))
        btn3.setTitle("btn3", for: .normal)
        btn3.backgroundColor = UIColor.red
        btn3.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn3)

        let btn4 = UIButton(frame: CGRect(x: 150, y: 200, width: 100, height: 30))
        btn4.setTitle("btn4", for: .normal)
        btn4.backgroundColor = UIColor.red
        self.view.addSubview(btn4)
        btn4.titleLabel?.backgroundColor = .orange
        btn4.titleSpaceRightValue(10)

        let btn5 = UIButton(frame: CGRect(x: 260, y: 200, width: 100, height: 30))
        btn5.setTitle("btn5", for: .normal)
        btn5.backgroundColor = UIColor.red
        btn5.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn5)
        btn5.titleSpaceLeftValue(10)

        let  view = UIView()
        view.backgroundColor = .green
        view.frame = CGRect(x: 260, y: 230, width: 10, height: 30)
        self.view.addSubview(view)


        //正常的 文字和图片都有的时候
        let btn6 = UIButton(frame: CGRect(x: 10, y: 300, width: 100, height: 30))
        btn6.setTitle("Btn6", for: .normal)
        btn6.setImage(UIImage(named: "download_icon"), for: .normal)
        btn6.backgroundColor = UIColor.red
        btn6.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn6)
        btn6.imageSpaceTitleValue(10)

        let btn61 = UIButton(frame: CGRect(x: 10, y: 400, width: 100, height: 30))
        btn61.setTitle("Btn61", for: .normal)
        btn61.setImage(UIImage(named: "download_icon"), for: .normal)
        btn61.backgroundColor = UIColor.red
        btn61.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn61)
        btn61.titleSpaceImageValue(10)

        let btn62 = UIButton(frame: CGRect(x: 150, y: 400, width: 100, height: 70))
        btn62.setTitle("Btn62", for: .normal)
        btn62.setImage(UIImage(named: "download_icon"), for: .normal)
        btn62.backgroundColor = UIColor.red
        btn62.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn62)
        btn62.imageInBottomSpaceValue(10)

        let btn63 = UIButton(frame: CGRect(x: 260, y: 400, width: 100, height: 70))
        btn63.setTitle("Btn63", for: .normal)
        btn63.setImage(UIImage(named: "download_icon"), for: .normal)
        btn63.backgroundColor = UIColor.red
        btn63.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn63)
        btn63.titleInBottomSpaceValue(10)

        let btn7 = UIButton(frame: CGRect(x: 150, y: 300, width: 100, height: 30))
        btn7.setTitle("btn7", for: .normal)
        btn7.setImage(UIImage(named: "download_icon"), for: .normal)
        btn7.backgroundColor = UIColor.red
        self.view.addSubview(btn7)
        btn7.titleLabel?.backgroundColor = .orange
        btn7.imageView?.backgroundColor = .green
        btn7.imageSpaceLeftValue(30)
        btn7.titleSpaceLeftValue(50)

        let btn8 = UIButton(frame: CGRect(x: 260, y: 300, width: 100, height: 30))
        btn8.setTitle("btn8", for: .normal)
        btn8.setImage(UIImage(named: "download_icon"), for: .normal)
        btn8.backgroundColor = UIColor.red
        btn8.titleLabel?.backgroundColor = .orange
        self.view.addSubview(btn8)

        btn8.imageSpaceRightValue(0)
        btn8.titleSpaceLeftValue(0)

 
        // Do any additional setup after loading the view.
    }


}

