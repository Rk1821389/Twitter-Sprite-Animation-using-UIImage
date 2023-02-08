//
//  ViewController.swift
//  Twitter Animation
//
//  Created by Manoj kumar on 08/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    let imageView: UIImageView = {
        let iv = UIImageView()
        iv.isUserInteractionEnabled = true
        iv.image = UIImage(named: "tile00")
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    var spriteImages = [UIImage]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(imageView)
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.animate)))
        
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalToConstant: 75),
            imageView.widthAnchor.constraint(equalToConstant: 75),
            imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        
        for i in 0..<29 {
            spriteImages.append(UIImage(named: "tile0\(i)")!)
        }
        
    }


    @objc func animate() {
        print("tring to animate image")
        imageView.animationImages = spriteImages
        imageView.animationDuration = 0.6
        imageView.animationRepeatCount = 1
        imageView.startAnimating()
    }
    
}

