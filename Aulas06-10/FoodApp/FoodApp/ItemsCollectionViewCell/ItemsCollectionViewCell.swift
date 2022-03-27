import UIKit

class ItemsCollectionViewCell: UICollectionViewCell {

    static let identifier: String = "ItemsCollectionViewCell"
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(with item: Item) {
        if item.image != ""{
            itemImageView.image = UIImage(named: item.image)
        }
        nameLabel.text = item.name
        priceLabel.text = "$\(item.price)"
    }
}
