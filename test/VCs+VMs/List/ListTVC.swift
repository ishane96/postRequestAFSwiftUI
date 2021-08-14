//
//  ListCell.swift
//  test
//
//  Created by Achintha Kahawalage on 2021-06-10.
//

import UIKit

class ListTVC: UITableViewCell {
    
    @IBOutlet weak var displayImg: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var deliveryTime: UILabel!
    @IBOutlet weak var feeLbl: UILabel!
    @IBOutlet weak var minLbl: UILabel!
    @IBOutlet weak var view: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupUI()
    }
    
    // setting up UI cell
    func setupUI(){
        displayImg.layer.cornerRadius = displayImg.frame.height/2
        displayImg.clipsToBounds = true
        
        displayImg.layer.borderWidth = 1
        displayImg.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        
        view.layer.cornerRadius = 12.0
        view.clipsToBounds = true
    }
    
    // setting up data tp cell
    func setupCell(hotel: Hotel){
        
        titleLbl.text = hotel.name
        categoryLbl.text = ""
        for i in 0..<(hotel.cuisines?.count ?? 0){
            if i == 0 {
                categoryLbl.text = "\(categoryLbl.text ?? "") \(hotel.cuisines?[i] ?? "")"
            } else{
                categoryLbl.text = "\(categoryLbl.text ?? ""), \(hotel.cuisines?[i] ?? "")"
            }
        }
        
        ratingLbl.text = "\(hotel.rating ?? 0.0)"
        deliveryTime.text = "\(hotel.deliveryTime ?? 0)"
        feeLbl.text = "Delivery Fee:\(hotel.deliveryFee ?? 0)"
        minLbl.text = "Min:\(hotel.minOrderValue ?? 0)"
        
        displayImg?.imageFromURL(urlString: hotel.logoURL ?? "")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}
