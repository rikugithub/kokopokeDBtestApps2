// ViewController.swift

import UIKit
import Firebase
 
 class ViewController: UIViewController {
     
    @IBOutlet weak var topImage: UIImageView!
    var ref: DatabaseReference!
    var a: GroupData!
    
     override func viewDidLoad() {
         super.viewDidLoad()
        //kokopokeロゴ画像設定
        let image = UIImage(named: "whiteLogo")
        topImage.image = image
         
        //起動画面の表示タイマーを2秒に設定
        let _ : Timer = Timer.scheduledTimer(timeInterval:2, target: self, selector: #selector(pageTransition), userInfo: nil, repeats: false)
        ref = Database.database().reference().child("AccountInfo1")
         
    }

    
    //top画面へ遷移
    @objc func pageTransition(timer : Timer) {
        performSegue(withIdentifier: "splashToTopSegue", sender: self)
                
        ref.observe(.value, with: { snapshot in
            if let values = snapshot.value as? [String:Any]? {
                let groupData = GroupData(dict: values!)
    
                let data = ["AccountID": "c"]
                self.ref.child("AccountInfo3").updateChildValues(data) //(データの追加（元データ保持）)
                
                self.a = groupData
            }
            
        })
    }
}
