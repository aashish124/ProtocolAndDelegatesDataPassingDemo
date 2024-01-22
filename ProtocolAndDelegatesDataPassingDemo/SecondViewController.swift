//
//  SecondViewController.swift
//  ProtocolAndDelegatesDataPassingDemo
//
//  Created by Aashish Ahlawat on 31/07/23.
//

import UIKit

protocol myDataSendingDelegateProtocol {
    func sendData(data : String)
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        configuretextField()
    }
    
    var delegate : myDataSendingDelegateProtocol?

    @IBOutlet weak var textField: UITextField!
    
    var cancelBarButton : UIButton!
    
    @IBAction func goBackButton(_ sender: Any) {
        if self.delegate != nil && self.textField.text != nil {
            let dataToBeSent = textField.text
            self.delegate?.sendData(data: dataToBeSent!)
            dismiss(animated: true,completion: nil)
        }
    }
    
    
    func configuretextField() {
        textField.layer.cornerRadius    = 8.0
        textField.layer.masksToBounds   = true
        textField.layer.borderColor     = UIColor.systemGray.cgColor
    }
}
