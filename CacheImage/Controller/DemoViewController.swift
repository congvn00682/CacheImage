//
//  DemoViewController.swift
//  CacheImage
//
//  Created by Vu Ngoc Cong on 4/16/18.
//  Copyright © 2018 Vu Ngoc Cong. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var filtered: [Meal] = DataServices.shared.meal
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension DemoViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filtered.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MealTableViewCell
        
        if cell.photoView != nil{
            if let url = URL(string: DataServices.shared.meal[indexPath.row].photo) {
                cell.spinner.startAnimating()
                DispatchQueue.global().async {
                    if let data = try? Data(contentsOf: url) {
                        DispatchQueue.main.async {
                            cell.photoView.image = UIImage(data: data)
                            cell.spinner.stopAnimating()
                            cell.spinner.isHidden = true
                        }
                    }
                }
            }
        }
        
        print(filtered[indexPath.row].photo)
        return cell
    }
    
}
