//
//  ViewController.swift
//  Zalora_Assignment
//
//  Created by Nexle-LanDT on 10/30/19.
//  Copyright © 2019 Nexle-LanDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var tableView: UITableView!
    
    private var messages = [[String]]()
    private let cellId = "SendMessageTableViewCell"
    
    private var emptyLabel:UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.text = "You're not post any message."
        label.textColor = .black
        label.sizeToFit()
        return label
    }()
    
    //MARK: - View controller life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addNewVC = segue.destination as? AddNewMessageViewController {
            addNewVC.delegate = self
        }
    }
    
    /// Config UI
    private func configUI() {
        emptyLabel.center = view.center
        view.insertSubview(emptyLabel, at: 0)
        
        tableView.register(UINib(nibName: cellId, bundle: nil),
                           forCellReuseIdentifier: cellId)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.estimatedRowHeight = 50
        tableView.rowHeight = UITableView.automaticDimension
    }
}

//MARK: - UITableViewDataSource
extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! SendMessageTableViewCell
        cell.setMessageContent(message: messages[indexPath.section][indexPath.row])
        return cell
    }
}

//MARK: - UITableViewDelegate
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if messages[section].count > 0 {
            return "Message \(section + 1):"
        }
        return nil
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if messages[section].count > 0 {
            return 50
        }
        return 1
    }
}

//MARK: - SendMessageDelegate
extension ViewController: SendMessageDelegate {
    func sendMessages(newMsgs: [String]) {
        self.messages.append(newMsgs)
        let section = messages.count - 1
        let indexPaths = Array(0..<newMsgs.count).map { IndexPath(row: $0, section: section) }
        
        self.tableView.beginUpdates()
        self.tableView.insertSections(IndexSet(arrayLiteral: section), with: .fade)
        self.tableView.insertRows(at: indexPaths, with: .fade)
        self.tableView.endUpdates()
        
        emptyLabel.isHidden = self.messages.count > 0
    }
}
