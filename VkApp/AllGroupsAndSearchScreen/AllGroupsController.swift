//
//  AllGroupsController.swift
//  VkApp
//
//  Created by Никита Смирнов on 01.03.2021.
//

import UIKit

class AllGroupsController: UITableViewController {
    
    var allGroupList = [Group.init(groupName: "Cars", groupImage: #imageLiteral(resourceName: "Cars")),
                        Group.init(groupName: "Whiskey Lovers", groupImage: #imageLiteral(resourceName: "Whisky")),
                        Group.init(groupName: "Video Games", groupImage: #imageLiteral(resourceName: "VideoGames")),
                        Group.init(groupName: "Planes", groupImage: #imageLiteral(resourceName: "Planes")),
                        Group.init(groupName: "Hot Girls", groupImage: #imageLiteral(resourceName: "Hotgirls")),
                        Group.init(groupName: "WoodWorking", groupImage: #imageLiteral(resourceName: "Woodworking")),
                        Group.init(groupName: "Guitar Playing", groupImage: #imageLiteral(resourceName: "Guitar"))]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allGroupList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupCell", for: indexPath) as! AllGroupsCell
        let group = allGroupList[indexPath.row].groupName
        let image = allGroupList[indexPath.row].groupImage
        cell.allGroupCellName.text = group
        cell.allGroupCellPicture.image = image

        return cell
    }
}
