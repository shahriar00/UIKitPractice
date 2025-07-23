//
//  ButtonViewController.swift
//  UIKitPractice
//
//  Created by Shahriar Islam Sazid on 23/7/25.
//

import UIKit

class ButtonViewController: UIViewController {
    
    private var showNameButton : UIButton = {
        let button = UIButton (type: .system)
        button.setTitle( "Show Name", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        button.backgroundColor = .systemBlue
        button.titleLabel?.textAlignment = .center
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private var subTitle : UILabel = {
        let label = UILabel()
        label.text = "Subtitle of the hello world"
        label.textColor = .secondaryLabel
        return label
    }()

    override func viewDidLoad() {
        
        showNameButton.addTarget(self, action: #selector(Selectors), for: .touchUpInside)
        super.viewDidLoad()
        
        view.addSubview(showNameButton)
        showNameButton.widthAnchor.constraint(equalToConstant: 300).isActive = true
        showNameButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        showNameButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        showNameButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        showNameButton.layer.cornerRadius = 25
        showNameButton.backgroundColor = .systemBlue
        
        view.addSubview(subTitle)
        subTitle.translatesAutoresizingMaskIntoConstraints = false
        subTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        subTitle.topAnchor.constraint(equalTo: showNameButton.bottomAnchor, constant: 10).isActive = true

        // Do any additional setup after loading the view.
    }
    
@objc func Selectors(){
    subTitle.isHidden.toggle()
    let title = subTitle.isHidden ? "Show Name" : "Hide Name"
    showNameButton.setTitle(title, for: .normal)
    }

}

#Preview{
    ButtonViewController()
}
