//
//  Example2VC.swift
//  AutoDissmiss
//
//  Created by Anup Gupta on 22/01/21.
//

import UIKit

class Example2VC: UIViewController {

    @IBOutlet var serviceTypeLabel: UILabel!
    
    
    var serviceDetails : ServiceTypeVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        serviceDetails?.delegate = self;
        

        // Do any additional setup after loading the view.
    }

    @IBAction func getServiceType(_ sender: Any) {
        
        let story = UIStoryboard.init(name: "Main", bundle: nil);
        let vc = story.instantiateViewController(withIdentifier: "ServiceTypeVCID") as! ServiceTypeVC;
        vc.delegate = self;
        present(vc, animated: true, completion: nil)
        
    }
}



extension Example2VC : ServiceTypeDelegate {
    
    
    func didSelect(_ service: String) {
        serviceTypeLabel.text = service;
    }
    
    
    

    
    
}
