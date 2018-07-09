//
//  TweetListViewController.swift
//  Test
//
//  Created by Helios on 7/8/18.
//

import UIKit

class TweetListViewController: BaseViewController {

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var headerContentTextView: UITextView!
    @IBOutlet var headerView: UIView!
    var text: String!
    var data: [String]?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = Utils.getString(Constant.Tweets)
        
        headerContentTextView.text = text
        _initUI()
        _parseData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

extension TweetListViewController {
    private func _initUI() {
        tableView.tableHeaderView = headerView
        tableView.tableFooterView = UIView()
    }
    
    private func _parseData() {
        if (!TwitterUtils.checkValid(comment: text)) {
            Utils.showAlert(title: nil, message: Utils.getString(Constant.InvalidInput), self)
            return
        }
        data = TwitterUtils.getValidSubStringList(comment: text)
        tableView.reloadData()
    }
}

extension TweetListViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "TweetCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier) as? TweetCell
        if cell == nil {
            cell = TweetCell.loadNib() as TweetCell
        }
        cell?.reloadData(data![indexPath.row], data!.count, indexPath.row + 1)
        return cell!
    }
}
