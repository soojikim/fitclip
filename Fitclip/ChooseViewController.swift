//
//  ViewController.swift
//  Fitclip
//
//  Created by Sooji Kim on 4/9/17.
//  Copyright © 2017 Sooji & Ulysses. All rights reserved.
//

import UIKit
import Photos
import AVKit
import AVFoundation

class ChooseViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet var VideoLibrary: UICollectionView!
    @IBOutlet var VideoPreview: UIImageView!
    @IBOutlet var VideoThumbnail: UIImageView!

    private let reuseIdentifier = "VideoLibraryCell"
    var imageArray = [UIImage]()
    var selectedVideoIndexPath: Int?
    
    override func viewDidLoad() {
        accessPhotoLibrary()
        self.automaticallyAdjustsScrollViewInsets = false
    }

    // MARK: ACCESS PHOTO LIBRARY
    func accessPhotoLibrary() {
        
        let imageManager = PHImageManager.default()
        
        let requestOptions = PHImageRequestOptions()
        requestOptions.isSynchronous = true
        requestOptions.deliveryMode = .highQualityFormat
        
        // Fetch video data.
        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [NSSortDescriptor(key: "creationDate", ascending: false)]
        
        // Turns fetched video data into videos.
        let fetchResult: PHFetchResult = PHAsset.fetchAssets(with: .image, options: fetchOptions)
            if fetchResult.count > 0 {
                
                // Cycle through all videos.
                for i in 0..<fetchResult.count {
                    
//                    imageManager.requestImage(for: fetchResult.object(at: i) as PHAsset!, targetSize: CGSize(width: 92, height: 92), contentMode: .aspectFill, options: requestOptions, resultHandler: {
//                        image, error in
//                        self.thumbnailArray.append(image!)
//                    })
                    
                    imageManager.requestImage(for: fetchResult.object(at: i) as PHAsset!, targetSize: CGSize(width: 375, height: 375), contentMode: .aspectFit, options: requestOptions, resultHandler: {
                        image, error in
                        self.imageArray.append(image!)
                    })
                    
                }
                
            }
    }
    
    // MARK: DISPLAY SELECTED VIDEO.
    func displaySelectedVideo() {
        let video = imageArray[selectedVideoIndexPath!]
        VideoPreview.image = video
    }
    
    //MARK: REQUIRED FOR COLLECTIONVIEWDELEGATE
    // Only 1 section in Collection View.
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    // Number of Items = Number of Photos
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    // Put images in image array in cells.
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "VideoLibraryCell", for: indexPath)
        
        if (indexPath.item == 0) {
            collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .top)
            cell.alpha = 0.5
            self.selectedVideoIndexPath = indexPath.item
            displaySelectedVideo()
        }
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = imageArray[indexPath.row]
        return cell
    }
    
    //MARK: COLLECTION VIEW SIZING
    
    // Size for items in collection view.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        
        let width = collectionView.frame.width / 4 - 1
        
        return CGSize(width: width, height: width)
    }
    
    // Line spacing between sections.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    // Line spacing between items in section.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 1.0
    }
    
    // MARK: SELECT VIDEO
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let selectedVideo = collectionView.cellForItem(at: indexPath)
        selectedVideo?.alpha = 0.5
        
        self.selectedVideoIndexPath = indexPath.item
        displaySelectedVideo()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let deselectedVideo = collectionView.cellForItem(at: indexPath)
        deselectedVideo?.alpha = 1.0
    }
    
}


