//
//  secondView.swift
//  Mod_7
//
//  Created by Jeff Kohl on 6/29/24.
//

import UIKit

class secondView: UIViewController {
    
    var selected_line = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        selectedLabel.text = selected_line

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBOutlet weak var selectedLabel: UILabel!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
