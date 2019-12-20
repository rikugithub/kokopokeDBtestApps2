 //  GroupData.swift
 //  kokopokePJ
 //
//  Created by 金濱利来 on 2019/12/19.
//  Created by 金濱利来 on 2019/12/12.
//  Copyright © 2019 Saki Nakayama. All rights reserved.
//
 
import Foundation
import Firebase

class GroupData {

    var accountID: String
    var age: Int
    var gender: String
    var locationInfo : LocationInfo
    var name: String
    var reportCount: Int
    var reviews : Reviews
    var wantGoPlace : WantGoPlace
    
    
    init? (dict:[String:Any]) {
        let accountID = dict["AccountID"] as? String
        self.accountID = accountID!
        
        let age = dict["Age"] as? Int
        self.age = age!
        
        let gender = dict["Gender"] as? String
        self.gender = gender!
        
        let locationInfo = dict["LocationInfo"] as? [String:Any]
        self.locationInfo = LocationInfo(dict: locationInfo!)
        
        let name = dict["Name"] as? String
        self.name = name!
        
        let reportCount = dict["ReportCount"] as? Int
        self.reportCount = reportCount!
        
        let reviews = dict["Reviews"] as? [String:Any]
        self.reviews = Reviews(dict: reviews!)
        
        let wantGoPlace = dict["WantGoPlace"] as? [String:Any]
        self.wantGoPlace = WantGoPlace(dict: wantGoPlace! as! [String : String])
    }
}

