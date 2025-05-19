//
//  SecondViewController.swift
//  BackDataPassing_ProtocolDelegateModal2
//
//  Created by Macintosh on 09/01/25.
//

import UIKit

protocol moveDataToBack {           // 1st Step --> Define a protocol
    func passData(name:String, college:String, rollNo:String, address:String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var clgTextField: UITextField!
    
    @IBOutlet weak var rollNoTextField: UITextField!
    
    @IBOutlet weak var addressTextField: UITextField!
    
    var delegate : moveDataToBack!          // 2nd Step --> Create a delegate variable
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        
        // 3rd Step --> Pass Data
        delegate.passData(name: nameTextField.text!, college: clgTextField.text!, rollNo: rollNoTextField.text!, address: addressTextField.text!)
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
