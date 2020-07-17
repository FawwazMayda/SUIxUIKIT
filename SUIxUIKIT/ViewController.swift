//
//  ViewController.swift
//  SUIxUIKIT
//
//  Created by Muhammad Fawwaz Mayda on 16/07/20.
//  Copyright © 2020 Muhammad Fawwaz Mayda. All rights reserved.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    let contentView = UIHostingController(rootView: ContentView())
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addChild(contentView)
        view.addSubview(contentView.view)
        setup()
    }
    
    func setup() {
        contentView.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }


}

