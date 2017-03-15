//
//  ViewController.swift
//  Rainbow-Road
//
//  Created by Nishant Patel on 3/14/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let cellsize = 6
    let cellColor = [UIColor.red,UIColor.orange,UIColor.yellow, UIColor.green,UIColor.blue, UIColor.purple]

    @IBOutlet weak var tableView: UITableView!    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 120;
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellsize
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.contentView.backgroundColor = cellColor[indexPath.row]            
        return cell
    }
    
}
