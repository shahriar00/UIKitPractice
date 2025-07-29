//
//  ImagesViewController.swift
//  UIKitPractice
//
//  Created by Shahriar Islam Sazid on 7/29/25.
//

import UIKit

class ImagesViewController: UIViewController {
    
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFit
        
        imageView.clipsToBounds = true
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "star")
        // Do any additional setup after loading the view.
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }
    

}

#Preview{
    ImagesViewController()
}
