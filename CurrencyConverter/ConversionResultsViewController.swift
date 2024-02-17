//
//  ConversionResultsViewController.swift
//  CurrencyConverter
//
//  Created by user250623 on 2/16/24.
//

import UIKit

class ConversionResultsViewController: UIViewController {
    
    @IBOutlet weak var labelPeso: UILabel!
    @IBOutlet weak var labelEuro: UILabel!
    @IBOutlet weak var labelPound: UILabel!
    @IBOutlet weak var labelYen: UILabel!
    
    var convertedAmounts: [String: String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        labelPeso.text = convertedAmounts?["peso"] ?? "Not Selected"
        labelEuro.text = convertedAmounts?["euro"] ?? "Not Selected"
        labelPound.text = convertedAmounts?["pound"] ?? "Not Selected"
        labelYen.text = convertedAmounts?["yen"] ?? "Not Selected"
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
