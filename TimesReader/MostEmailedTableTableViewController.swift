//
//  MostEmailedTableTableViewController.swift
//  TimesReader
//
//  Created by Art Karma on 5/27/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit
import Alamofire

class MostEmailedTableTableViewController: UITableViewController {
    
    //    let news = [AF.request(URL(string: "https://api.nytimes.com/svc/mostpopular/v2/emailed/7.json?api-key=2b25fcac-8943-461b-a669-4d1a516686e4")!)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        Alamofire.request("https://httpbin.org/get").responseJSON { response in
        //            print("Request: \(String(describing: response.request))")   // original url request
        //            print("Response: \(String(describing: response.response))") // http url response
        //            print("Result: \(response.result)")                         // response serialization result
        //
        //            if let json = response.result.value {
        //                print("JSON: \(json)") // serialized json response
        //            }
        //
        //            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
        //                print("Data: \(utf8Text)") // original server data as UTF8 string
        //            }
        //        }
        
        let url = URL(string: "https://api.nytimes.com/svc/mostpopular/v2/shared/1/facebook.json?api-key=8wHhAlOhEaUZDdRcCN1DQxNHGcMpFXVA")
        let a = AF.request(url!).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
//            if let json = response.result.value {
//                print("JSON: \(json)") // serialized json response
//            }
//
            if let data = response.data, let utf8Text = String(data: data, encoding: .utf8) {
                print("Data: \(utf8Text)") // original server data as UTF8 string
            }
        }
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    
    /*
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     
     // Configure the cell...
     
     return cell
     }
     */
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
