//
//  ServiceTypeVC.swift
//  AutoDissmiss
//
//  Created by Anup Gupta on 22/01/21.
//

import UIKit

class ServiceTypeVC: UIViewController {

    @IBOutlet var serviceTypeTable: UITableView!
    
    
    let serviceType = ["Painting","Cooking","Cleaning","Traveling","Shopping"]
    
    var delegate: ServiceTypeDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


extension ServiceTypeVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serviceType.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = self.serviceTypeTable.dequeueReusableCell(withIdentifier: "ServiceTypeCell")! as UITableViewCell
        cell.textLabel?.text = serviceType[indexPath.row];
        return cell;
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let name = serviceType[indexPath.row];
    
        delegate?.didSelect(name);
        dismiss(animated: true, completion: nil)
//        navigationController?.popViewController(animated: true);
    }
}




protocol ServiceTypeDelegate {
    
    func didSelect(_ service: String)
    
//    func wasCancelled()
}


struct Service {
    let type : String;
    let id : String;
}
