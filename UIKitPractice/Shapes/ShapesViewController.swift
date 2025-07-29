//
//  ShapesViewController.swift
//  UIKitPractice
//
//  Created by Shahriar Islam Sazid on 7/29/25.
//

import UIKit

class ShapesViewController: UIViewController {
    
    private var rect: UIView = {
        
        var view = UIView()
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(rect)
        view.translatesAutoresizingMaskIntoConstraints = false
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        // Do any additional setup after loading the view.
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

#Preview{
    ShapesViewController()
}
