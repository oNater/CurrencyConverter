//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user250623 on 2/16/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textFieldUSD: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var switchPeso: UISwitch!
    @IBOutlet weak var switchEuro: UISwitch!
    @IBOutlet weak var switchPound: UISwitch!
    @IBOutlet weak var switchYen: UISwitch!
    
    let currencyConverter = CurrencyConverter()
    
    var convertedPeso: String?
    var convertedEuro: String?
    var convertedPound: String?
    var convertedYen: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldUSD.keyboardType = .numberPad
        errorLabel.text = ""
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        guard let text = textFieldUSD.text, let dollars = Int(text) else {
            errorLabel.text = "Invalid input. Please enter a valid amount."
            return
        }
        
        errorLabel.text = ""
        
        let convertedValues = currencyConverter.convert(dollars: dollars)
        
        convertedPeso = switchPeso.isOn ? currencyConverter.format(currencyValue: convertedValues.pesos) : nil
        convertedEuro = switchEuro.isOn ? currencyConverter.format(currencyValue: convertedValues.euros) : nil
        convertedPound = switchPound.isOn ? currencyConverter.format(currencyValue: convertedValues.pounds) : nil
        convertedYen = switchYen.isOn ? currencyConverter.format(currencyValue: convertedValues.yen) : nil
        
        performSegue(withIdentifier: "showConversionSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showConversionSegue" {
            if let destinationVC = segue.destination as? ConversionResultsViewController {
                destinationVC.convertedAmounts = [
                    "peso": convertedPeso,
                    "euro": convertedEuro,
                    "pound": convertedPound,
                    "yen": convertedYen
                ].compactMapValues { $0 }
            }
        }
    }
}
   

