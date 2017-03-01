//
//  ViewController.swift
//  Zing
//
//  Created by Nguyen Cong Toan on 2/28/17.
//  Copyright © 2017 mr.t. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var lb_text: UILabel!
    
    @IBOutlet weak var lb_ten: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        logo!.alpha = 0
        lb_text!.alpha = 0
        lb_ten!.alpha = 0
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIView.animate(withDuration: 4, animations: {
            self.logo!.alpha = 1
        }) {
            (finished) in
            UIView.animate(withDuration: 3, animations: {
                self.lb_text!.center = CGPoint(x: self.logo!.center.x, y: 100)
                self.lb_text!.alpha = 1
                self.lb_ten!.center = CGPoint(x: self.logo!.center.x, y: 450)
                self.lb_ten!.alpha = 1
            })
            
        }
    }
}

