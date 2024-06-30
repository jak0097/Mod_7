//
//  ViewController.swift
//  Mod_7
//
//  Created by Jeff Kohl on 6/29/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var selected_line = "test"
        
    var stockList = [
        Stocks("AAPL", 210.62),
        Stocks("GOOG", 183.42),
        Stocks("TSLA", 197.88),
        Stocks("NVDA", 123.54),
        Stocks("MSFT", 446.95),
        Stocks("INTC", 30.97),
        Stocks("BRK.A", 612241),
        Stocks("AMZN", 193.25),
        Stocks("NFLX", 674.88),
        Stocks("AMD", 162.21)
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stockList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = stockList[indexPath.row].ticker
        content.secondaryText = String(stockList[indexPath.row].price)
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selected_line = String(self.stockList[indexPath.row].ticker) + " " + String(self.stockList[indexPath.row].price)
        self.performSegue(withIdentifier:
        "toSecondView", sender: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondView" {
            let displayConverter = segue.destination as! secondView
            displayConverter.selected_line = selected_line
        }
    }

}

