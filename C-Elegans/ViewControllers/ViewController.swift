//
//  ViewController.swift
//  C-Elegans
//
//  Created by Julian Currie on 10/27/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var startDatePicker: UIDatePicker!
    @IBOutlet weak var mainDashboard: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createViewGradientLayer()

    }

    func createViewGradientLayer()
    {
        // make everything look nice(rounds corners)
        mainDashboard.layer.masksToBounds = true
        mainDashboard.layer.cornerRadius = 20
        
        
        // creates a sublayer underneath everything on the main view for background gradient
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.systemGreen.cgColor, UIColor.systemMint.cgColor]
        view.layer.insertSublayer(gradientLayer, below: mainDashboard.layer)
    }

}

