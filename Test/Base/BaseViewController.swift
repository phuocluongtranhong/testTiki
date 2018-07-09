//
//  BaseViewController.swift
//  Test
//
//  Created by Helios on 7/7/18.
//

import UIKit
import MBProgressHUD

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func showProgressHUD(_ isShow: Bool) {
        if isShow {
            MBProgressHUD.showAdded(to: view, animated: true)
        } else {
            MBProgressHUD.hide(for: view, animated: true)
        }
    }
}
