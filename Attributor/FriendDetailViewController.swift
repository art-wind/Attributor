//
//  FriendDetailViewController.swift
//  Attributor
//
//  Created by 许Bill on 15-2-10.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import UIKit

class FriendDetailViewController: UIViewController {
   
    @IBOutlet var galaryView: UICollectionView!
    
    var pictures = [GalleryPicture]()
    override func viewDidLoad() {
        super.viewDidLoad()
        var gp0:GalleryPicture = GalleryPicture()
        gp0.setAtttribute(imageIcon: "default", attachedText: "1", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp0)
    
        var gp1:GalleryPicture = GalleryPicture()
        gp0.setAtttribute(imageIcon: "default", attachedText: "1", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp1)
        var gp2:GalleryPicture = GalleryPicture()
        gp0.setAtttribute(imageIcon: "default", attachedText: "1", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp2)
        var gp3:GalleryPicture = GalleryPicture()
        gp0.setAtttribute(imageIcon: "default", attachedText: "1", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp3)
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    func popOut() {
        self.navigationController?.popViewControllerAnimated(true)
    }
   
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
    }
    

}
