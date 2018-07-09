//
//  MainViewController.swift
//  Test
//
//  Created by Helios on 7/7/18.
//

import UIKit

class MainViewController: BaseViewController {

    @IBOutlet weak var tweetTextView: UITextView!
    @IBOutlet weak var doneButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        title = Utils.getString(Constant.InputTheTweet)
        _initUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func doneAction(_ sender: Any) {
        let tweetListScreen = TweetListViewController()
        tweetListScreen.text = tweetTextView.text
        navigationController?.pushViewController(tweetListScreen, animated: true)
    }
}

extension MainViewController {
    private func _initUI() {
        doneButton.setTitle(Utils.getString(Constant.Done), for: .normal)
        
        Utils.border(view: doneButton)
        Utils.border(view: tweetTextView)
    }
}
