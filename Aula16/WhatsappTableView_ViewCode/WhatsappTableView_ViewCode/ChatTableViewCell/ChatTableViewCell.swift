import UIKit
import Kingfisher

class ChatTableViewCell: UITableViewCell {
    
    static let identifier: String = "ChatTableViewCell"

    lazy var pictureImageView: UIImageView = {
        let picture = UIImageView()
        picture.contentMode = .scaleAspectFit
        picture.translatesAutoresizingMaskIntoConstraints = false
        return picture
    }()
    
    lazy var contentStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.alignment = .top
        stack.spacing = 10
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var topContentStack: UIStackView = {
       let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var latestTimestampLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 18)
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var lastMessageLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 16)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(pictureImageView)
        
        NSLayoutConstraint.activate([
            pictureImageView.widthAnchor.constraint(equalToConstant: 70),
            pictureImageView.heightAnchor.constraint(equalToConstant: 70),
            pictureImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            pictureImageView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
        addSubview(contentStack)
        
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            contentStack.leadingAnchor.constraint(equalTo: pictureImageView.trailingAnchor, constant: 16),
            contentStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -16),
            contentStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
        
        
        topContentStack.addArrangedSubview(nameLabel)
        topContentStack.addArrangedSubview(latestTimestampLabel)
        
        contentStack.addArrangedSubview(topContentStack)
        contentStack.addArrangedSubview(lastMessageLabel)
        
        NSLayoutConstraint.activate([
            nameLabel.widthAnchor.constraint(equalToConstant: 180)
        ])
        
        NSLayoutConstraint.activate([
            latestTimestampLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            lastMessageLabel.widthAnchor.constraint(equalToConstant: 290)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getCellData(with chat: Chat) {
        let url = URL(string: chat.picture)
        pictureImageView.kf.setImage(with: url)
        pictureImageView.makeRounded()
        nameLabel.text = chat.name
        latestTimestampLabel.text = chat.latestTimestamp
        lastMessageLabel.text = chat.lastMessage
        accessoryType = AccessoryType.disclosureIndicator
    }




}
