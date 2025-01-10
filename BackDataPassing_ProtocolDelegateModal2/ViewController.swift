//
//  ViewController.swift
//  BackDataPassing_ProtocolDelegateModal2
//
//  Created by Macintosh on 09/01/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    
    @IBOutlet weak var clgLbl: UILabel!
    
    @IBOutlet weak var rollNoLbl: UILabel!
    
    @IBOutlet weak var addressLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func nextBtn(_ sender: Any) {
        
        let secVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secVC.delegate = self           // 5th Step --> Assign delegate property on SVC to self
        
        self.navigationController?.pushViewController(secVC, animated: true)
        
    }
    
}

extension ViewController : moveDataToBack {         // 4th Step --> Conform to protocol & implement methods of protocol
    func passData(name:String, college:String, rollNo:String, address:String) {
        nameLbl.text = name
        clgLbl.text = college
        addressLbl.text = address
        rollNoLbl.text = rollNo
    }
}
