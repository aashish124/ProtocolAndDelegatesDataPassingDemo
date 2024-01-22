//
//  ViewController.swift
//  ProtocolAndDelegatesDataPassingDemo
//
//  Created by Aashish Ahlawat on 31/07/23.
//

import UIKit

class FirstViewController: UIViewController, myDataSendingDelegateProtocol {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configureLabels()
    }

    @IBOutlet weak var nameLabel: UILabel!
    var holaNameLabel : UILabel!
    
    func sendData(data: String) {
        self.nameLabel.text = data
        self.nameLabel.backgroundColor = .systemGreen
    }
    
    @IBAction func getDataButton(_ sender: Any) {
        if let secondVc = storyboard?.instantiateViewController(identifier: "secondVC") as? SecondViewController{
            secondVc.delegate = self
            present(secondVc, animated: true)
        }
    }
    
    
    private func configureLabels() {
        nameLabel.font                      = UIFont.boldSystemFont(ofSize: 20)
        nameLabel.textColor                 = .label
        nameLabel.adjustsFontSizeToFitWidth = true
        nameLabel.minimumScaleFactor        = 0.9
        
        nameLabel.backgroundColor           = .systemTeal
        nameLabel.layer.cornerRadius        = 8.0
        nameLabel.layer.masksToBounds       = true
        nameLabel.layer.borderColor         = UIColor.systemGray.cgColor
        
        nameLabel.lineBreakMode             = .byTruncatingTail
        nameLabel.textAlignment             = .center
        
        nameLabel.text                      = "Wanna see magic? Press Enter."
    }
}

