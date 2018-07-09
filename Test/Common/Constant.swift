//
//  Constant.swift
//  Test
//
//  Created by Helios on 7/7/18.
//

import UIKit


public typealias ObjectCallback = (Any?, Error?) -> ()
public typealias BoolCallback = (Bool) -> ()

let kAppDelegate = UIApplication.shared.delegate as! AppDelegate


class Constant {
    static let InvalidInput = "Invalid input"
    
    static let Done = "Done"
    static let InputTheTweet = "Input the tweet"
    static let Tweets = "Tweets"
    static let OK = "OK"
}
