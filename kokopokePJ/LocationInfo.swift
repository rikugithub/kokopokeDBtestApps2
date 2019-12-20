// LocationInfo.swift

import Firebase

class LocationInfo {
    var Latitude: Int
    var Longitude: Int
    var LocationInfo: String
    var Time:Int
    
    init(dict:[String:Any]) {
        let Latitude = dict["Latitude"] as! Int
        self.Latitude = Latitude
        let Longitude = dict["Longitude"] as! Int
        self.Longitude = Longitude
        let LocationInfo = dict["LocationInfo"] as! String
        self.LocationInfo = LocationInfo
        let Time = dict["Time"] as! Int
        self.Time = Time
    }
}

