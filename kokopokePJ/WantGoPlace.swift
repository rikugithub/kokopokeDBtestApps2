// WantGoPlace

import Firebase

    class WantGoPlace {

        var LocationID: String
        var ID : String

        init(dict:[String:Any]) {
                let LocationID = dict["LocationID"] as! String
                self.LocationID = LocationID
                let ID = dict["ID"] as! String
                self.ID = ID
        }
}

