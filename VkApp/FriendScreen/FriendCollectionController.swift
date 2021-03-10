//
//  FriendCollectionController.swift
//  VkApp
//
//  Created by Никита Смирнов on 01.03.2021.
//

import UIKit

class FriendCollectionController: UICollectionViewController {
    
    var showedFriend = [User]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return showedFriend.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UserCell", for: indexPath) as! FriendPhotoCell
        let userName = showedFriend[indexPath.row].userName
        let userStatus = showedFriend[indexPath.row].userStatus
        let userImage = showedFriend[indexPath.row].userImage
        
        cell.userName.text = userName
        cell.userStatus.text = userStatus
        cell.userAvatar.image = userImage
        
        return cell
    }
}
