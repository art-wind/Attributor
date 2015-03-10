//
//  GalaryVC.swift
//  Attributor
//
//  Created by 许Bill on 15-2-11.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import UIKit

let reuseIdentifier = "Galary Cell"
let NibName = "GalaryPicCell"
class GalaryVC: UICollectionViewController {
    var pictures = [GalleryPicture]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var gp0:GalleryPicture = GalleryPicture()
        gp0.setAtttribute(imageIcon: "window", attachedText: "中国窗花艺术", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp0)
        
        var gp1:GalleryPicture = GalleryPicture()
        gp1.setAtttribute(imageIcon: "running", attachedText: "美国跑步文化", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp1)
        var gp2:GalleryPicture = GalleryPicture()
        gp2.setAtttribute(imageIcon: "buddy", attachedText: "Buddy Programme", establishedTime: "2014-8-18", state: gp0.liveState)
        pictures.append(gp2)
        
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        
        self.collectionView!.registerClass(GalaryPicCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
       self.collectionView!.registerNib(UINib(nibName: NibName, bundle: nil), forCellWithReuseIdentifier: reuseIdentifier)
    
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//
//
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return self.pictures.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        var cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as GalaryPicCell
        println("Find the cell")
        
        let pic = pictures [indexPath.row]
        cell.galaryPicture.image  = UIImage(named:pic.image)
        println("Picyture:: \(pic.image)")
        cell.attachedComment.text = pic.comment
        return cell
    }
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
        return false
    }

    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */

}
