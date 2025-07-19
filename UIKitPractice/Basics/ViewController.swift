//
//  ViewController.swift
//  UIKitPractice
//
//  Created by Shahriar Islam Sazid on 19/7/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemBackground
        
        namePrint("Hello!")
    }
    
    func namePrint(_ name: String){
        label.text = name
    }
    
    
    @IBAction func primaryButton(_ sender: Any) {
        print("Button Tapped")
    }
    
    

 }

