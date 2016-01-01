//
//  SettingTVC.swift
//  StaticCell0101
//
//  Created by 劉坤昶 on 2016/1/1.
//  Copyright © 2016年 劉坤昶 Johnny. All rights reserved.
//

import UIKit

class SettingTVC: UITableViewController {

    var oneCell = UITableViewCell()
    var twoCell = UITableViewCell()
    var threeCell = UITableViewCell()
    var fourCell = UITableViewCell()
    var fiveCell = UITableViewCell()
    var sixCell = UITableViewCell()
    var sevenCell = UITableViewCell()
    var eightCell = UITableViewCell()
    var nineCell = UITableViewCell()
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.title = "設定"
        self.tableView = UITableView(frame: self.tableView.frame, style: .Grouped)
        
        
        oneCell.textLabel?.text = "我的帳號"
        oneCell.imageView?.image = UIImage(named: "001")
        oneCell.accessoryType = .DisclosureIndicator
        
        
        twoCell.textLabel?.text = "隱私設定"
        twoCell.imageView?.image = UIImage(named: "002")
        twoCell.accessoryType = .DisclosureIndicator
        
        threeCell.textLabel?.text = "常見問題"
        threeCell.imageView?.image = UIImage(named: "003")
        threeCell.accessoryType = .DisclosureIndicator
        
        fourCell.textLabel?.text = "貼圖"
        fourCell.imageView?.image = UIImage(named: "004")
        fourCell.accessoryType = .DisclosureIndicator
        
        fiveCell.textLabel?.text = "提醒"
        fiveCell.imageView?.image = UIImage(named: "005")
        fiveCell.accessoryType = .DisclosureIndicator
        
        sixCell.textLabel?.text = "聊天、語音通話"
        sixCell.imageView?.image = UIImage(named: "006")
        sixCell.accessoryType = .DisclosureIndicator
        
        sevenCell.textLabel?.text = "關於LINE"
        sevenCell.imageView?.image = UIImage(named: "007")
        sevenCell.accessoryType = .DisclosureIndicator
        
        eightCell.textLabel?.text = "個人資料"
        eightCell.imageView?.image = UIImage(named: "008")
        eightCell.accessoryType = .DisclosureIndicator
        
        nineCell.textLabel?.text = "其他設定"
        nineCell.imageView?.image = UIImage(named: "009")
        nineCell.accessoryType = .DisclosureIndicator
    }
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 3
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        switch section
        {
        case 0: return 2
        case 1: return 4
        case 2: return 3
        default: return 0
        }
    }

    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        switch section
        {
        case 0: return "帳號設定"
        case 1: return "一般設定"
        case 2: return "其他設定"
        default: return ""
        }
    
    
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
              
        switch indexPath.section
      {
        case 0:
            switch indexPath.row
            {
            case 0: return oneCell
            case 1: return twoCell
            default:fatalError()
            }
        case 1:
            switch indexPath.row
            {
            case 0: return threeCell
            case 1: return fourCell
            case 2: return fiveCell
            case 3: return sixCell
            default:fatalError()
            }
        case 2:
            switch indexPath.row
            {
            case 0: return sevenCell
            case 1: return eightCell
            case 2: return nineCell
            default:fatalError()
                
            }
        
      default:fatalError()
      }
    
    
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
