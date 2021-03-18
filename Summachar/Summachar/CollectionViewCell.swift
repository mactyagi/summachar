//
//  CollectionViewCell.swift
//  container in table
//
//  Created by manukant Tyagi on 16/03/21.
//

import UIKit
import UPCarouselFlowLayout

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView.layer.cornerRadius = 10
        imageView.clipsToBounds = true
        // Initialization code
    }

}
