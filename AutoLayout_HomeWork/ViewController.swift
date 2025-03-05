//
//  ViewController.swift
//  AutoLayout_HomeWork
//
//  Created by Aleksandr Zhazhoyan on 06.03.2025.
//

import UIKit

class ViewController: UIViewController {
    
    private let firstLabel = UILabel()
    private let secondLabel = UILabel()
    private let imageView = UIImageView()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        
        view.backgroundColor = .white
        
        firstLabel.text = "First Label!"
        firstLabel.textAlignment = .center
        firstLabel.backgroundColor = .red
        
        firstLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(firstLabel)
        
        
        secondLabel.text = "Second Label!"
        secondLabel.textAlignment = .center
        secondLabel.backgroundColor = .purple
        
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondLabel)
        
        
        imageView.image = UIImage(systemName: "formfitting.gamecontroller")
        imageView.contentMode = .scaleAspectFit
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        
        NSLayoutConstraint.activate([
            
            firstLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            firstLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            firstLabel.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: 0.4),
            firstLabel.heightAnchor.constraint(equalToConstant: 50),
            
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 20),
            secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            secondLabel.heightAnchor.constraint(equalToConstant: 50),
            
            imageView.bottomAnchor.constraint(equalTo: secondLabel.topAnchor, constant: -10),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
    override func viewWillLayoutSubviews() {
        if UIDevice.current.orientation.isLandscape {
            layoutSubviewsForLandscape()
        } else {
            layoutSubviewsForPortrait()
        }
    }
    
    private func layoutSubviewsForPortrait() {
        firstLabel.isHidden = false
        secondLabel.isHidden = false
        imageView.isHidden = false
    }
    
    private func layoutSubviewsForLandscape() {
        firstLabel.isHidden = false
        secondLabel.isHidden = false
        imageView.isHidden = false
        
        
        NSLayoutConstraint.activate([
            firstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            firstLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            
            secondLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            secondLabel.topAnchor.constraint(equalTo: firstLabel.topAnchor),
            
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: firstLabel.topAnchor)
        ])
    }


}


