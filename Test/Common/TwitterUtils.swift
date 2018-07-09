//
//  TwitterUtils.swift
//  Test
//
//  Created by Helios on 7/8/18.
//

import UIKit

class TwitterUtils: NSObject {
    static let kMaxLength = 50
    
    static func checkValid(comment: String) -> Bool {
        var _comment = comment.replacingOccurrences(of: "\n", with: " ")
        _comment = _comment.trimmingCharacters(in: .whitespacesAndNewlines)
        if (_comment.count <= kMaxLength) {
            return true
        }
        
        let subStringList = _getSubStringListBySpace(comment: comment)
        for subString in subStringList {
            if (subString.count > kMaxLength) {
                return false
            }
        }
        return true
    }
    
    private static func _getSubStringListBySpace(comment: String) -> [String] {
        let _comment = comment.replacingOccurrences(of: "\n", with: " ")
        let subStringList = _comment.split(separator: " ")
        
        return subStringList.map({ item in
            item.trimmingCharacters(in: .whitespacesAndNewlines)
        })
    }
    
    static func getValidSubStringList(comment: String) -> [String] {
        var validList = [String]()
        var _comment = comment.replacingOccurrences(of: "\n", with: " ")
        _comment = _comment.trimmingCharacters(in: .whitespacesAndNewlines)
        
        
        if (_comment.count <= kMaxLength) {
            validList.append(_comment)
            return validList
        }
        
        var temp = [String]()
        let subStringList = _getSubStringListBySpace(comment: comment)
        
        for i in 0..<subStringList.count {
            let sub = subStringList[i]
        
            let string = temp.joined(separator: " ")
            if string.count < kMaxLength {
                temp.append(sub)
                
                if (i == subStringList.count - 1) {
                    let validString = temp.joined(separator: " ")
                    validList.append(validString)
                }
            }
            if string.count > kMaxLength {
                let lastItem = temp.removeLast()
                let validString = temp.joined(separator: " ")
                validList.append(validString)
                
                temp.removeAll()
                temp.append(lastItem)
            }
        }
        return validList
    }
}
