//
//  Utils.swift
//  Test
//
//  Created by Helios on 7/8/18.
//

import UIKit

class Utils: NSObject {
    
    // MARK: - String
    static func getString(_ key: String, _ comment: String) -> String {
        return NSLocalizedString(key, comment: comment)
    }
    static func getString(_ key: String) -> String {
        return NSLocalizedString(key, comment: "")
    }
    
    // MARK: -  Alert
    static func showAlert(title: String?, message: String?, _ viewController: UIViewController) {
        var _title = title
        var _message = message
        
        if let _ = _title {
            _title = Utils.getString(_title!)
        }
        if let _ = _message {
            _message = Utils.getString(_message!)
        }
        let alert = UIAlertController(title: _title, message: _message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: Utils.getString(Constant.OK),
                                         style: .cancel, handler: nil)
        
        alert.addAction(cancelAction)
        viewController.present(alert, animated: true, completion: nil)
    }
    
    static func border(view: UIView) {
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.layer.borderColor = view.backgroundColor?.cgColor
    }
    
}
