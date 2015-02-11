//
//  FriendViewController.swift
//  Attributor
//
//  Created by 许Bill on 15-2-10.
//  Copyright (c) 2015年 Fudan.SS. All rights reserved.
//

import UIKit

class FriendViewController: UITableViewController {
    
    var persons = [Person]();
    let cellIdentifier:String = "Friend Cell"
    let NibClassName:String = "FriendTableCell"
    
    var headerCharArray = [Character]()
    var nameMapping = [Character : [Person]]()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        var tmpPersons = [Person]()
        var person0 = Person(personName: "曹旭阳",sortedString:"caoxuyang",gender: "Male", imageIcon: "icon0", registerTime: NSDate())
        tmpPersons.append(person0)
        
        var person1 = Person(personName: "曹畅",sortedString:"caochang", gender: "Male", imageIcon:"ic1", registerTime: NSDate())
        tmpPersons.append(person1)
        
        
        
        var person2 = Person(personName: "许衎",sortedString:"xukan", gender: "Male", imageIcon:"schwarz", registerTime: NSDate())
        tmpPersons.append(person2)
        var person3 = Person(personName: "封江涛",sortedString:"fengjiangtao", gender: "Male", imageIcon:"ic4", registerTime: NSDate())
        tmpPersons.append(person3)
        var person4 = Person(personName: "李孟桐",sortedString:"limengtong", gender: "Male", imageIcon:"ic2", registerTime: NSDate())
        tmpPersons.append(person4)
        
    
        persons = tmpPersons.sorted{$0.sortedString<$1.sortedString}
        var headerChar:Character = "A"
        
        for person in persons {
            var handlingChar:Character =  Array(person.sortedString.uppercaseString)[0]
            println("HandlingCharater: \(handlingChar)")
            
            if handlingChar == headerChar  {
               nameMapping[handlingChar]!.append(person)
            }
            else{
                var personArray = [Person]()
                personArray.append(person)
                nameMapping[handlingChar] = personArray
                headerCharArray.append(handlingChar)
            }
            headerChar = handlingChar
        }
        
//        tableView.registerNib(UINib(nibName: NibClassName,bundle:nil), forCellReuseIdentifier: cellIdentifier)
        

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    func compareCharacter (char1:Character ,char2:Character)->Bool{
        return false;
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let headerCharater = headerCharArray[section]
        return String(headerCharater)
    }
    
    
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
      
        return headerCharArray.count
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let header = headerCharArray[section]
        return  nameMapping[header]!.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as FriendTableCell
       
        let row = indexPath.row
        let section = indexPath.section
        
        let headerChar:Character = self.headerCharArray[section]
        let p:Person = self.nameMapping[headerChar]![row]
        
        cell.nameLabel.text = p.personName
        cell.imageIcon.image = UIImage(named:p.imageIcon)
       
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as FriendTableCell
//        let cell = tableView.cellForRowAtIndexPath(indexPath) as FriendTableCell
        return 50
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        println("Prep over")
        if segue.identifier == "DisplayFriendDetail" {
            
        }
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    

}
