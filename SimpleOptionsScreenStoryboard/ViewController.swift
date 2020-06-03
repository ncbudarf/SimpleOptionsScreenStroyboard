//
//  ViewController.swift
//  SimpleOptionsScreenStoryboard
//
//  Created by Noah budarf on 2020-06-01.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let controller = UIStoryboard(name: "OptionsScreen", bundle: nil).instantiateViewController(withIdentifier: "OptionsScreenViewController")
        self.present(controller, animated: true, completion: nil)
    }
}

