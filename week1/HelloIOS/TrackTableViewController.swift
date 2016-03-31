//
//  TrackTableViewController.swift
//  HelloIOS
//
//  Created by Meg Grasse on 3/30/16.
//  Copyright © 2016 Meg Grasse. All rights reserved.
//

import UIKit

class TrackTableViewController: UITableViewController {
    
    var tracks = [Track]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path1 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("01", ofType: "mp3")!)
        let track1 = Track(name: "Ultralight Beam", url: path1, photo_filename: "chance")
        tracks.append(track1)
        let path2 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("02", ofType: "mp3")!)
        let track2 = Track(name: "Father Stretch My Hands Pt. 1", url: path2, photo_filename: "kid-cudi")
        tracks.append(track2)
        let path3 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("03", ofType: "mp3")!)
        let track3 = Track(name: "Pt. 2", url: path3, photo_filename: "desiigner")
        tracks.append(track3)
        let path4 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("04", ofType: "mp3")!)
        let track4 = Track(name: "Famous", url: path4, photo_filename: "rihanna")
        tracks.append(track4)
        let path5 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("05", ofType: "mp3")!)
        let track5 = Track(name: "Feedback", url: path5, photo_filename: nil)
        tracks.append(track5)
        let path6 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("06", ofType: "mp3")!)
        let track6 = Track(name: "Low Lights", url: path6, photo_filename: nil)
        tracks.append(track6)
        let path7 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("07", ofType: "mp3")!)
        let track7 = Track(name: "High Lights", url: path7, photo_filename: "young-thug")
        tracks.append(track7)
        let path8 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("08", ofType: "mp3")!)
        let track8 = Track(name: "Freestyle 4", url: path8, photo_filename: "desiigner")
        tracks.append(track8)
        let path9 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("09", ofType: "mp3")!)
        let track9 = Track(name: "I Love Kanye", url: path9, photo_filename: nil)
        tracks.append(track9)
        let path10 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("10", ofType: "mp3")!)
        let track10 = Track(name: "Waves", url: path10, photo_filename: "chris-brown")
        tracks.append(track10)
        let path11 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("11", ofType: "mp3")!)
        let track11 = Track(name: "FML", url: path11, photo_filename: "the-weeknd")
        tracks.append(track11)
        let path12 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("12", ofType: "mp3")!)
        let track12 = Track(name: "Real Friends", url: path12, photo_filename: "ty-dolla-sign")
        tracks.append(track12)
        let path13 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("13", ofType: "mp3")!)
        let track13 = Track(name: "Wolves", url: path13, photo_filename: "sia")
        tracks.append(track13)
        let path14 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("14", ofType: "mp3")!)
        let track14 = Track(name: "Silver Surfer Intermission", url: path14, photo_filename: nil)
        tracks.append(track14)
        let path15 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("15", ofType: "mp3")!)
        let track15 = Track(name: "30 Hours", url: path15, photo_filename: "andre-3000")
        tracks.append(track15)
        let path16 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("16", ofType: "mp3")!)
        let track16 = Track(name: "No More Parties in LA", url: path16, photo_filename: "kendrick")
        tracks.append(track16)
        let path17 = NSURL(fileURLWithPath:NSBundle.mainBundle().pathForResource("17", ofType: "mp3")!)
        let track17 = Track(name: "Facts (Charlie Heat Version)", url: path17, photo_filename: "nil")
        tracks.append(track17)
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tracks.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("trackIdentifier", forIndexPath: indexPath)

        // Configure the cell...
        
        let currentTrack = tracks[indexPath.row]
        cell.textLabel?.text = currentTrack.name

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
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
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let nextScene = segue.destinationViewController as! TrackControlViewController
        if let indexPath = self.tableView.indexPathForSelectedRow {
            let thisTrack = tracks[indexPath.row]
            nextScene.currentTrack = thisTrack
        }
    }

}
