//
//  ResultViewController.swift
//  GachaTest
//
//  Created by yuki ishiguro on 2016/02/13.
//  Copyright © 2016年 yuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var haikeiView: UIImageView!
    @IBOutlet var monsterView: UIImageView!
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        let number = Int(rand() % 9)
        monsterArray = [
            UIImage(named: "monster001.png")!,
            UIImage(named: "monster002.png")!,
            UIImage(named: "monster003.png")!,
            UIImage(named: "monster004.png")!,
            UIImage(named: "monster005.png")!,
            UIImage(named: "monster006.png")!,
            UIImage(named: "monster007.png")!,
            UIImage(named: "monster008.png")!,
            UIImage(named: "monster009.png")!,
            UIImage(named: "monster010.png")!
        ]
        monsterView.image = monsterArray[number]
        
        if number == 8 {
            haikeiView.image = UIImage(named: "bg_gold@2x.png")
        } else if number > 6 {
            haikeiView.image = UIImage(named: "bg_blue@2x.png")
        } else {
            haikeiView.image = UIImage(named: "bg_red@2x.png")
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
