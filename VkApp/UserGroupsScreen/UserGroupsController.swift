//
//  AllGroupsController.swift
//  VkApp
//
//  Created by Никита Смирнов on 01.03.2021.
//

import UIKit

class UserGroupsController: UITableViewController {
    
    var activeGroupList = [Group.init(groupName: "Cars", groupImage:#imageLiteral(resourceName: "Cars")),
                           Group.init(groupName: "Whiskey Lovers", groupImage: #imageLiteral(resourceName: "Whisky"))]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return activeGroupList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! UserGroupsCell
        let group = activeGroupList[indexPath.row].groupName
        let image = activeGroupList[indexPath.row].groupImage
        cell.groupPicture.image = image
        cell.groupName.text = group

        return cell
    }
    
    @IBAction func addGroup (segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
            guard let allGroupsController = segue.source as? AllGroupsController else { return }
            if let indexPath = allGroupsController.tableView.indexPathForSelectedRow {
                let group = allGroupsController.allGroupList[indexPath.row]
                if !activeGroupList.contains(group) {
                    activeGroupList.append(group)
                    tableView.reloadData()
                }
            }
        }
    }

    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            activeGroupList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}
