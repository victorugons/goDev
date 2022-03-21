import UIKit

class PersonTableViewCell: UITableViewCell {

    static let identifier: String = "PersonTableViewCell"
    
    @IBOutlet var personImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configureCell(with person: Person) {
        personImageView.loadImage(from: person.photo)
        personImageView.makeRounded()
        nameLabel.text = person.name
        companyLabel.text = person.company.name
    }
    
}
