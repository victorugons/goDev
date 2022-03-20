import UIKit

class HomeViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    //MARK: Variables Declaration
    private var restaurants: [Restaurant] = []
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        configureTableView()
        fetchRestaurants()
    }
    
    //MARK: Private methods
    private func registerNib() {
        let nib = UINib(nibName: HomeTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func fetchRestaurants() {
        restaurants = [
            .init(name: "McDonalds", category: "Fast Food", rating: 4.6, image: "mcdonalds"),
            .init(name: "Burger King", category: "Fast Food", rating: 4.4, image: "burgerking"),
            .init(name: "Brasileirinho Delivery", category: "Brazilian", rating: 4.5, image: "brasileirinho"),
            .init(name: "Poke Garden", category: "Hawaiian", rating: 4.8, image: "poke"),
            .init(name: "Nobunaga Sushi", category: "Japanese", rating: 4.0, image: "sushi"),
        ]
        
        tableView.reloadData()
    }
}


//MARK: Public methods
extension HomeViewController: UITableViewDelegate {
    
}

extension HomeViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else { return UITableViewCell() }
        let restaurant: Restaurant = restaurants[indexPath.row]
        cell.configureCell(with: restaurant)
        return cell
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }
    
    
}
