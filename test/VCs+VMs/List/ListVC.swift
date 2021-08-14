//
//  ViewController.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-10.
//

import UIKit
import Alamofire

class ListVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let vm = ListVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchData()
        setupTableView()
    }
    
    func fetchData(){
        vm.executeNetworkCall( completion: { (item, success, error)  in
            switch success {
            case true:
                self.tableView.reloadData()
                print("success")
            default:
                print("failed")
            }
        })
    }
    
}

extension ListVC: UITableViewDelegate, UITableViewDataSource{
    
    func setupTableView() {
        self.tableView.separatorStyle = .none
        self.tableView.isMultipleTouchEnabled = false
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vm.list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListTVC") as! ListTVC
        
        if let _cell = cell as? ListTVC{
            _cell.setupCell(hotel: vm.list[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let detailVC = storyBoard.instantiateViewController(withIdentifier: "ViewHotelVC") as! ViewHotelVC
        
        //data parsing
        detailVC.details = vm.list[indexPath.row]
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
    
    
}

