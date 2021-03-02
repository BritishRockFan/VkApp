//
//  AllFriendsController.swift
//  VkApp
//
//  Created by Никита Смирнов on 01.03.2021.
//

import UIKit

class AllFriendsController: UITableViewController {
    
    var friendList = [User.init(userName: "Jack Knife", userStatus: "All good", userImage: #imageLiteral(resourceName: "Friend1")),
                      User.init(userName: "Jane Doe", userStatus: "Having a good day!", userImage: #imageLiteral(resourceName: "Girl")),
                      User.init(userName: "Sam Brown", userStatus: "Im lonely :(", userImage: #imageLiteral(resourceName: "Friend2")),
                      User.init(userName: "Mick Jagger", userStatus: "Satisfaction!", userImage: #imageLiteral(resourceName: "Mick")),
                      User.init(userName: "Keith Richards", userStatus: "Can't you hear me knocking?", userImage: #imageLiteral(resourceName: "Keith")),
                      User.init(userName: "Howling Wolf", userStatus: "Wooooooaaaah smokestack lightning ", userImage: #imageLiteral(resourceName: "Wolf")),
                      User.init(userName: "Nick Johnshon", userStatus: "Riding with the king", userImage: #imageLiteral(resourceName: "Friend5")),
                      User.init(userName: "Ann Jackson", userStatus: "Writing some songs", userImage: #imageLiteral(resourceName: "Alina")),
                      User.init(userName: "Alex Burov", userStatus: "Extreme vacation", userImage: #imageLiteral(resourceName: "Friend4"))]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friendList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! AllFriendsCell
        let friendName = friendList[indexPath.row].userName
        let friendImage = friendList[indexPath.row].userImage
        cell.friendName.text = friendName
        cell.friendPicture.image = friendImage

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showUser",
           let senderCell = sender as? AllFriendsCell,
           let cellIndexPath = tableView.indexPath(for: senderCell),
           let friendCollectionController = segue.destination as? FriendCollectionController {
            let selectedFriend = friendList[cellIndexPath.row]
            
            friendCollectionController.showedFriend.append(selectedFriend)
        }
    }
}
