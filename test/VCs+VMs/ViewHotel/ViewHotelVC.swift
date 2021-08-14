//
//  ViewHotelVC.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-12.
//

import UIKit

class ViewHotelVC: UIViewController {
    
    @IBOutlet weak var coverImg: UIImageView!
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var cuisine: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var feeLbl: UILabel!
    @IBOutlet weak var minOrderLbl: UILabel!
    
    var details: Hotel?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func setupUI(){
        
        logoImg.layer.cornerRadius = logoImg.frame.height/2
        logoImg.clipsToBounds = true
        setData()
    }
    
    func setData(){
        coverImg?.imageFromURL(urlString: self.details?.coverURL ?? "")
        logoImg?.imageFromURL(urlString: self.details?.logoURL ?? "")
        nameLbl.text = details?.name
        cuisine.text = ""
        for i in 0..<(details?.cuisines?.count ?? 0){
            if i == 0 {
                cuisine.text = "\(cuisine.text ?? "") \(details?.cuisines?[i] ?? "")"
            } else{
                cuisine.text = "\(cuisine.text ?? ""), \(details?.cuisines?[i] ?? "")"
            }
        }
        ratingLbl.text = "\(details?.rating ?? 0.0)"
       timeLbl.text = "\(details?.deliveryTime ?? 0)"
        feeLbl.text = "\(details?.deliveryFee ?? 0)"
        minOrderLbl.text = "\(details?.minOrderValue ?? 0)"
    }

}
