//
//  ChannelVC.swift
//  Smack
//
//  Created by Влад on 7/26/19.
//  Copyright © 2019 Vlad. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
        // Do any additional setup after loading the view.
    }


}
