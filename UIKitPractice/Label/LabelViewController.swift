//
//  LabelViewController.swift
//  UIKitPractice
//
//  Created by Shahriar Islam Sazid on 19/7/25.
//

import UIKit

class LabelViewController: UIViewController {
    
    private var label = UILabel()
    
    private var subTitle : UILabel = {
        let label = UILabel()
        label.text = "Subtitle of the hello world"
        label.textColor = .secondaryLabel
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = "Hello, World!"
        label.font = .systemFont(ofSize: 36)
        
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 9).isActive = true
        subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

    }
    

}
#Preview {
    LabelViewController()
}
