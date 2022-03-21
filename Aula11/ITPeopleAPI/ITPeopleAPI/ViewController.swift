//
//  ViewController.swift
//  ITPeopleAPI
//
//  Created by Aloc SP11602 on 21/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var people: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerNib()
        configureView()
        fetchPeople()
    }

    func registerNib() {
        let nib = UINib(nibName: PersonTableViewCell.identifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: PersonTableViewCell.identifier)
    }
    
    func configureView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func fetchPeople() {
        PersonService.shared.getPeople{result in
            switch result {
            case .success(let res):
                self.people = res
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}

extension ViewController: UITableViewDelegate {}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PersonTableViewCell.identifier, for: indexPath) as? PersonTableViewCell else { return UITableViewCell() }
        let person: Person = people[indexPath.row]
        cell.configureCell(with: person)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        people.count
    }
    
    
}

