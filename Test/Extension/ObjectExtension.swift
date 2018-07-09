//
//  ObjectExtension.swift
//  Test
//
//  Created by Helios on 7/8/18.
//

import UIKit

extension NSObject {
    
    class func loadNib<T>() -> T {
        let name = String(describing: T.self)
        return Bundle.main.loadNibNamed(name, owner: self, options: nil)!.first as! T
    }
}
