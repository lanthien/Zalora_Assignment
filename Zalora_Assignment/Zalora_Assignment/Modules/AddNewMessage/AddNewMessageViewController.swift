//
//  AddNewMessageViewController.swift
//  Zalora_Assignment
//
//  Created by Nexle-LanDT on 10/30/19.
//  Copyright © 2019 Nexle-LanDT. All rights reserved.
//

import UIKit

protocol SendMessageDelegate:class {
    func sendMessages(messages:[String])
}

class AddNewMessageViewController: UIViewController {
    @IBOutlet weak var tvMessage:UITextView!
    
    weak var delegate: SendMessageDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendMessage(_ sender: Any) {
        if tvMessage.text.count > 0 {
            do {
                let messages = try Utilities.splitMessage(tvMessage.text)
                if let delegate = self.delegate {
                    delegate.sendMessages(messages: messages)
                }
            }
            catch SplitMessageError.NotHaveSpaceCharactor {
                presentAlert(title: "Warning", message: "Your message have a word more than 50 characters.")
            }
            catch {
                presentAlert(title: "Error", message: "Something wrong. Please try again.")
            }
        }
        else {
            presentAlert(title: "Warning", message: "Your message is empty.")
        }
    }
    
    private func presentAlert(title:String?, message:String?) {
        let alertVC = UIAlertController(title: title,
                                        message: message,
                                        preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .destructive, handler: { (action) in
            alertVC.dismiss(animated: true, completion: nil)
        }))
        self.present(alertVC, animated: true, completion: nil)
    }
}
