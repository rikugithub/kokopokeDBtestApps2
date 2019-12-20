// Reviews

import Firebase

    class Reviews {
        var Companion: String
        var Date: String
        var Evaluation: String
        var GenreID: String
        var Memo: String
        var Photo: String
        
            init(dict:[String:Any]) {
                let Companion = dict["Companion"] as! String
                self.Companion = Companion
                let Date = dict["Date"] as! String
                self.Date = Date
                let Evaluation = dict["Evaluation"] as! String
                self.Evaluation = Evaluation
                let GenreID = dict["GenreID"] as! String
                self.GenreID = GenreID
                let Memo = dict["Memo"] as! String
                self.Memo = Memo
                let Photo = dict["Photo"] as! String
                self.Photo = Photo
        
        }
}

