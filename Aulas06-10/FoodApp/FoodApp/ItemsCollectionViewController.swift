import UIKit

class ItemsCollectionViewController: UIViewController {
    
    static let identifier: String = "ItemsCollectionViewController"
    
    @IBOutlet var collectionView: UICollectionView!
    
    var items: [Item] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        registerNib()
        fetchItems()
    }
    
    func registerNib() {
        let nib = UINib(nibName: ItemsCollectionViewCell.identifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: ItemsCollectionViewCell.identifier)
    }
    func configureView() {
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    func fetchItems() {
        switch title {
        case "McDonalds": items = [
            .init(name: "McChicken", price: 6.00, image: "mcchicken"),
            .init(name: "Big Mac", price: 8.00, image: ""),
            .init(name: "French Fries", price: 5.50, image: ""),
            .init(name: "Coke", price: 5.00, image: ""),
            .init(name: "McNuggets", price: 7.00, image: ""),
            .init(name: "Cheddar McMelt", price: 9.00, image: ""),
            .init(name: "Quarter Pounder", price: 9.99, image: ""),
            .init(name: "Orange Juice", price: 5.00, image: ""),
            .init(name: "Salad", price: 3.99, image: ""),
            .init(name: "Strawberry Smoothie", price: 6.50, image: "")
        ]
        
        case "Burger King": items = [
            .init(name: "Cheeseburger", price: 6.00, image: "cheeseburger"),
            .init(name: "Big King", price: 8.00, image: ""),
            .init(name: "French Fries", price: 5.50, image: ""),
            .init(name: "Coke", price: 5.00, image: ""),
            .init(name: "Whopper", price: 7.00, image: ""),
            .init(name: "Rodeo", price: 9.00, image: ""),
            .init(name: "Mega Stacker", price: 9.99, image: ""),
            .init(name: "Orange Juice", price: 5.00, image: ""),
            .init(name: "Jalapeno Cheddar Bites", price: 3.99, image: ""),
            .init(name: "Milkshake", price: 6.50, image: "")
        ]
            
        case "Brasileirinho Delivery": items = [
            .init(name: "Frango Box", price: 15.00, image: "frangobox"),
            .init(name: "Calabresa Box", price: 15.00, image: ""),
            .init(name: "French Fries", price: 5.50, image: ""),
            .init(name: "Coke", price: 5.00, image: ""),
            .init(name: "Biofit Box", price: 23.00, image: ""),
            .init(name: "Fit Box", price: 25.00, image: ""),
            .init(name: "Yakisoba Box", price: 19.99, image: ""),
            .init(name: "Orange Juice", price: 5.00, image: ""),
            .init(name: "Brazilian Box", price: 22.99, image: ""),
            .init(name: "Galinhada Box", price: 19.50, image: "")
        ]
            
        case "Poke Garden": items = [
            .init(name: "Hawaii Bowl", price: 16.00, image: "hawaiibowl"),
            .init(name: "Rainbow Bowl", price: 18.00, image: ""),
            .init(name: "Volcano Bowl", price: 15.50, image: ""),
            .init(name: "Tuna Lover Bowl", price: 15.00, image: ""),
            .init(name: "Vegetarian Bowl", price: 17.00, image: ""),
            .init(name: "Dragon Bowl", price: 19.00, image: ""),
            .init(name: "Yalah bowl", price: 19.99, image: ""),
            .init(name: "Orange Juice", price: 5.00, image: ""),
            .init(name: "Hawaiian Drink", price: 13.99, image: ""),
            .init(name: "Special Bowl", price: 16.50, image: "")
        ]
            
        case "Nobunaga Sushi": items = [
            .init(name: "Rainbow Temaki", price: 6.00, image: "rainbowtemaki"),
            .init(name: "Philadelphia Temaki", price: 8.00, image: ""),
            .init(name: "Sake Nigiri", price: 5.50, image: ""),
            .init(name: "Maguro Nigiri", price: 5.00, image: ""),
            .init(name: "Suzuki Sashimi", price: 7.00, image: ""),
            .init(name: "Hamachi Sashimi", price: 9.00, image: ""),
            .init(name: "Mega Stacker", price: 9.99, image: ""),
            .init(name: "Orange Juice", price: 5.00, image: ""),
            .init(name: "Lobster Roll", price: 3.99, image: ""),
            .init(name: "Gojira Roll", price: 6.50, image: "")
        ]
            
        case .none: break
        case .some(_): break
        }
        
        collectionView.reloadData()
    }
}

extension ItemsCollectionViewController: UICollectionViewDelegate {
    
}

extension ItemsCollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ItemsCollectionViewCell.identifier, for: indexPath) as? ItemsCollectionViewCell else { return UICollectionViewCell() }
        let item: Item = items[indexPath.row]
        cell.configureCell(with: item)
        return cell
    }
    
    
}
