//
//  HomeTableViewCell.swift
//  FoodApp
//
//  Created by Aloc SP11602 on 20/03/22.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    static let identifier = "HomeTableViewCell"

    @IBOutlet weak var restaurantImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(with restaurant: Restaurant) {
        restaurantImageView.image = UIImage(named: restaurant.image)
        nameLabel.text = restaurant.name
        categoryLabel.text = restaurant.category
        ratingLabel.text = String(restaurant.rating)
    }
    
}
