//
//  ViewController.swift
//  Calculator
//
//  Created by Pansit Wattana on 1/18/17.
//  Copyright © 2017 Pansit Wattana. All rights reserved.
//

import UIKit

enum Operator {
    case Plus
    case Minus
    case Multi
    case Divide
}

class ViewController: UIViewController {

    @IBOutlet weak var leftInput: UITextField!
    @IBOutlet weak var rightInput: UITextField!
    @IBOutlet weak var resultText: UILabel!
    
    var ops = Operator.Plus
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultText.text = "";
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func OnTextChange(){
        if let text = leftInput.text, let rText = rightInput.text, let value = Int(text), let value2 = Int(rText){
            Calculate(first: value, second: value2)
        }
        else {
            resultText.text = ""
        }
    }
    
    @IBAction func firstNumOnChange(_ sender: Any) {
        OnTextChange()
    }
    
    @IBAction func secondNumOnChange(_ sender: Any) {
        OnTextChange()
    }

    @IBAction func onPlusClick(_ sender: Any) {
        if let text = leftInput.text, let rText = rightInput.text, let value = Int(text), let value2 = Int(rText){
            ops = Operator.Plus
            Calculate(first: value, second: value2)
        }
        else {
            resultText.text = "Please put the correct number to fields"
        }
    }
    
    @IBAction func onMinusClick(_ sender: Any) {
        if let text = leftInput.text, let rText = rightInput.text, let value = Int(text), let value2 = Int(rText){
            ops = Operator.Minus
            Calculate(first: value, second: value2)
        }
        else {
            resultText.text = "Please put the correct number to fields"
        }
    }
    
    @IBAction func onMultiplyClick(_ sender: Any) {
        if let text = leftInput.text, let rText = rightInput.text, let value = Int(text), let value2 = Int(rText){
            ops = Operator.Multi
            Calculate(first: value, second: value2)
        }
        else {
            resultText.text = ""
        }
    }
    @IBAction func onDivideClick(_ sender: Any) {
        if let text = leftInput.text, let rText = rightInput.text, let value = Int(text), let value2 = Int(rText){
            ops = Operator.Divide
            Calculate(first: value, second: value2)
        }
        else {
            resultText.text = ""
        }
    }
    
    func Calculate(first: Int, second: Int){
        switch ops {
        case Operator.Plus:
            resultText.text = String(first + second)
        case Operator.Minus:
            resultText.text = String(first - second)
        case Operator.Multi:
            resultText.text = String(first * second)
        case Operator.Divide:
            resultText.text = String(Double(first) / Double(second))
        }
    }
}

