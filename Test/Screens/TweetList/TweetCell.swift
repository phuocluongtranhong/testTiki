//
//  TweetCell.swift
//  Test
//
//  Created by Helios on 7/8/18.
//

import UIKit

class TweetCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func reloadData(_ title: String, _ totalTweets: Int, _ currentTweet: Int) {
        titleLabel.text = "\(currentTweet)/\(totalTweets) \(title)"
    }
    
}
