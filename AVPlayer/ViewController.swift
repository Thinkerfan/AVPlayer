//
//  ViewController.swift
//  AVPlayer
//
//  Created by Tony on 2017/7/20.
//  Copyright © 2017年 Tony. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let btn = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 80))
        btn.backgroundColor = .systemRed
        btn.setTitle("进入视频页", for: .normal)
        self.view.addSubview(btn)
        btn.center = self.view.center
        btn.addTarget(self, action: #selector(ViewController.jumpBtnClicked), for: .touchUpInside)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func jumpBtnClicked(_ sender: UIButton) {
        let vc = TestController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }

}

