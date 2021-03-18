//
//  TableViewCell.swift
//  Summachar

//
//  Created by manukant Tyagi on 16/03/21.
//

import UIKit
import UPCarouselFlowLayout
let imageData = ImageData()



class TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate{
    
    
    var imageArr: [UIImage] = []
  
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("CollectionView noOfItemInSection   \(section)    \(ImageData.section)  \(imageData.arr[ImageData.section].count)")
        imageArr = imageData.arr[ImageData.section]
        
        return imageData.arr[ImageData.section].count
        
    }

    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as? CollectionViewCell
        cell?.imageView.image = imageArr[indexPath.row]
        print("collectionView cellForItemAt   \(indexPath.row)    \(ImageData.section)")
        
        return cell!
    }

    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    
    

    @IBOutlet weak var bookmark: UIButton!
    @IBOutlet weak var heart: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    let layout = UPCarouselFlowLayout()
        override func awakeFromNib() {
        collectionView.delegate = self
        collectionView.dataSource = self
            collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier:  "collectionCell")
        super.awakeFromNib()
            
            
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func bookMarkButtonPressed(_ sender: UIButton) {
        if bookmark.currentImage == UIImage(systemName: "bookmark"){
//            print("bookmark")
            bookmark.setImage(UIImage(systemName: "bookmark.fill"), for: UIControl.State.normal)
            
        } else {
            bookmark.setImage(UIImage(systemName: "bookmark"), for: UIControl.State.normal)
    }
}
    @IBAction func heartButtonPressed(_ sender: UIButton) {
        if heart.currentImage == UIImage(systemName: "heart"){
//            print("heart")
            heart.setImage(UIImage(systemName: "heart.fill"), for: UIControl.State.normal)
            
        } else {
            heart.setImage(UIImage(systemName: "heart"), for: UIControl.State.normal)

        }
    }
    
    
    @IBAction func shareButtonPressed(_ sender: UIButton) {
//        let image = imageData.arr[1][1]

//       let activityController = UIActivityViewController(activityItems: imageArr as [Any], applicationActivities: nil)
//
//       present(activityController, animated: true, completion: nil)
//
        
    }
}


