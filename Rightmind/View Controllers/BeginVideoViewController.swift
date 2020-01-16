//
//  BeginVideoViewController.swift
//  Rightmind
//
//  Created by Jerry LaGore on 8/18/19.
//  Copyright © 2019 Jerry LaGore. All rights reserved.
//

import UIKit
import SafariServices

class BeginVideoViewController: UIViewController {

    @IBAction func watchButtonTapped(_ sender: UIButton) {
        showSafariVC(for: "https://youtu.be/g9bkQ7OiEdQ")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func showSafariVC(for url: String) {
        guard let url = URL(string: url) else {
            // Show an invalid URL error alert
            return
        }
        
        let safariVC = SFSafariViewController(url: url)
        present(safariVC, animated: true)
    }

}
