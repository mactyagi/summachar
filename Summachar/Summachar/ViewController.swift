//
//  ViewController.swift
//  container in table
//
//  Created by manukant Tyagi on 16/03/21.
//

import UIKit

class ViewController: UIViewController {
    let tableViewClass = TableViewCell()
    let imageData = ImageData()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "appIcon"))
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell")
       
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("tableView NoOfRowsInSection   \(section)")
        print("\(section)")
        return imageData.arr.count
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath) as? TableViewCell
        print("TableView CellForRowAt   \(indexPath.row)")
        ImageData.section = indexPath.row
        
        return tableCell!
    }
    
    

    
}


