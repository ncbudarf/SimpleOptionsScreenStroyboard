//
//  OptionsScreenViewController.swift
//  SimpleOptionsScreenStoryboard
//
//  Created by Noah budarf on 2020-06-01.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import UIKit

class OptionsScreenViewController: UIViewController {
    
    let viewModel = OptionsScreenViewModel()
    
    @IBOutlet weak var overlayToggle: UISwitch!
    @IBOutlet weak var overlayOpacity: UISlider!
    @IBOutlet weak var overlayOptionsCollectionView: UICollectionView!
    @IBOutlet weak var overlayColorCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.setupOverlay(toggle: overlayToggle)
        viewModel.setupOverlay(slider: overlayOpacity)
    }
}

extension OptionsScreenViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if overlayOptionsCollectionView == collectionView {
            return viewModel.overlayTextureNamesCount
        } else {
            return viewModel.overlayColorsCount
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if overlayOptionsCollectionView == collectionView {
            return viewModel.setupOverlayOptionCell(at: indexPath, for: overlayOptionsCollectionView)
        } else {
            return viewModel.setupOverlayColorCell(at: indexPath, for: overlayColorCollectionView)
        }
    }
}

extension OptionsScreenViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if overlayColorCollectionView == collectionView {
            viewModel.updateDefaultOverlayColor(for: indexPath)
            overlayOptionsCollectionView.reloadData()
        }
    }
}
