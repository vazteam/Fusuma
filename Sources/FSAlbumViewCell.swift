//
//  FSAlbumViewCell.swift
//  Fusuma
//
//  Created by Yuta Akizuki on 2015/11/14.
//  Copyright © 2015年 ytakzk. All rights reserved.
//

import UIKit
import Photos

final class FSAlbumViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var playVideoMark: UIImageView!
    
    var isVideo:Bool = false
    
    var image: UIImage? {
        
        didSet {
            
            self.imageView.image = image            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.selected = false
    }
    
    func setIsVideoMark(isVideo:Bool){
        
        self.isVideo = isVideo
        
        if self.isVideo{
            self.playVideoMark.hidden = false
        }else{
            self.playVideoMark.hidden = true
        }
    }
    
    override var selected : Bool {
        didSet {
            self.layer.borderColor = selected ? fusumaTintColor.CGColor : UIColor.clearColor().CGColor
            self.layer.borderWidth = selected ? 2 : 0
        }
    }
}
