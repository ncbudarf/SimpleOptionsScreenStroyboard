//
//  OptionsScreenViewModel.swift
//  SimpleOptionsScreenStoryboard
//
//  Created by Noah budarf on 2020-06-03.
//  Copyright © 2020 Noah budarf. All rights reserved.
//

import Foundation
import UIKit


class OptionsScreenViewModel {
    private let overlayTextureNames = ["calculator-9-64", "crown-5-64", "flag-4-64", "football-2-64", "sun-6-64", "tire-64"]
    
    private let overlayColors = [UIColor.black, UIColor.red, UIColor.blue, UIColor.brown, UIColor.yellow, UIColor.lightGray]
    
    private var defaultOverlayColor:UIColor?
    
    init() {
        defaultOverlayColor = .black
    }
}

extension OptionsScreenViewModel {
    var overlayTextureNamesCount: Int {
        overlayTextureNames.count
    }
    
    var overlayColorsCount: Int {
        overlayColors.count
    }
    
    func updateDefaultOverlayColor(for indexPath: IndexPath) {
        defaultOverlayColor = overlayColors[indexPath.item]
    }
}

extension OptionsScreenViewModel {
    func setupOverlay(toggle: UISwitch) {
        toggle.onTintColor = .black
    }
    
    func setupOverlay(slider: UISlider) {
        slider.value = 0.5
    }
}

extension OptionsScreenViewModel {
    func setupOverlayOptionCell(at indexPath: IndexPath, for collectionView: UICollectionView) -> OverlayOptionCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "OverlayOptionCell", for: indexPath as IndexPath) as! OverlayOptionCell
        cell.overlayOptionImage.image = UIImage(named: self.overlayTextureNames[indexPath.item])
        cell.overlayOptionImage.image = cell.overlayOptionImage.image?.withRenderingMode(.alwaysTemplate)
        cell.overlayOptionImage.tintColor = defaultOverlayColor

        return cell
    }
    
    func setupOverlayColorCell(at indexPath: IndexPath, for collectionView: UICollectionView) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ColorCell", for: indexPath as IndexPath)
        cell.backgroundColor = overlayColors[indexPath.item]
        return cell
    }
}
