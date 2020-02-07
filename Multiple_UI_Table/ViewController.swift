//
//  ViewController.swift
//  Multiple_UI_Table
//
//  Created by uxd on 7/2/20.
//  Copyright © 2020 uxd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var dData : [Dhaka] = []
    var cData : [Chittagong] = []
    var kData : [Khulna] = []
    var rData : [Rajshahi] = []
    
    var pi : [UIImage] = [#imageLiteral(resourceName: "a2"), #imageLiteral(resourceName: "a1")]
    
    @IBOutlet weak var viewT: UITableView!
    @IBOutlet weak var seg: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dData = [
         Dhaka(playerName: "Tamim", playerAge: "32", playerFomration: "Batsman"),
         Dhaka(playerName: "Mashrafee", playerAge: "36", playerFomration: "Bowler"),
         Dhaka(playerName: "Thesara", playerAge: "33", playerFomration: "Allrounder"),
         Dhaka(playerName: "Masud", playerAge: "22", playerFomration: "Bowler")
        ]
        
        cData = [
         Chittagong(playerName: "Imrul", playerAge: "31", playerFomration: "Batsman"),
         Chittagong(playerName: "MahmudUllah", playerAge: "33", playerFomration: "Allrounder"),
         Chittagong(playerName: "Chris", playerAge: "37", playerFomration: "Batsman"),
         Chittagong(playerName: "Imad", playerAge: "36", playerFomration: "Allrounder")
        ]
        
        kData = [
        Khulna(playerName: "Shafiul", playerAge: "29", playerFomration: "Bowler"),
        Khulna(playerName: "ABC", playerAge: "29", playerFomration: "Bowler"),
        Khulna(playerName: "Shafiul", playerAge: "29", playerFomration: "Batsman"),
        Khulna(playerName: "Shafiul Islam", playerAge: "29", playerFomration: "Bowler"),
        ]
        
        rData = [
        Rajshahi(playerName: "Shafiul", playerAge: "29", playerFomration: "Bowler"),
        Rajshahi(playerName: "Shafiul", playerAge: "29", playerFomration: "Bowler"),
        Rajshahi(playerName: "Shafiul", playerAge: "29", playerFomration: "Bowler"),
        Rajshahi(playerName: "Shafiul", playerAge: "29", playerFomration: "Bowler")
        ]
        
    }
    
    @IBAction func btn(_ sender: UISegmentedControl) {
        self.viewT.reloadData()
    }
}

extension ViewController : UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var res = 0
        if seg.selectedSegmentIndex == 0{
            res =  dData.count
        }
        else if seg.selectedSegmentIndex == 1{
            
            res = cData.count
        }
        else if seg.selectedSegmentIndex == 2{
            
            res = kData.count
        }
        else{
            res = rData.count
        }
        return res
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! DataTableViewCell
        
        if seg.selectedSegmentIndex == 0{
            cell.dhaka = dData[indexPath.row]
        }
        else if seg.selectedSegmentIndex == 1
        {
            cell.ctg = cData[indexPath.row]
        }
        else if seg.selectedSegmentIndex == 2{
            cell.khulna = kData[indexPath.row]
        }
        else{
            cell.raj = rData[indexPath.row]
        }
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailed = self.storyboard?.instantiateViewController(withIdentifier: "det") as! DetailViewController
        if seg.selectedSegmentIndex == 0{
            detailed.str1 = dData[indexPath.row].playerName
            detailed.str2 = dData[indexPath.row].playerAge
            detailed.str3 = dData[indexPath.row].playerFomration
            detailed.pic = pi[0]
        }
        
        if seg.selectedSegmentIndex == 1{
            detailed.str1 = cData[indexPath.row].playerName
            detailed.str2 = cData[indexPath.row].playerAge
            detailed.str3 = cData[indexPath.row].playerFomration
              detailed.pic = pi[1]
        }
        
        if seg.selectedSegmentIndex == 2{
            detailed.str1 = kData[indexPath.row].playerName
            detailed.str2 = kData[indexPath.row].playerAge
            detailed.str3 = kData[indexPath.row].playerFomration
              detailed.pic = pi[0]
        }
        
        if seg.selectedSegmentIndex == 3{
            detailed.str1 = rData[indexPath.row].playerName
            detailed.str2 = rData[indexPath.row].playerAge
            detailed.str3 = rData[indexPath.row].playerFomration
              detailed.pic = pi[1]
        }
        self.navigationController?.pushViewController(detailed, animated: true)
    }
    
    
    
}
