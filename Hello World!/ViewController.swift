//
//  ViewController.swift
//  Hello World!
//
//  Created by Kruthi Annigeri on 8/11/15.
//  Copyright (c) 2015 Kruthi Annigeri. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //println("Hello World!")
    }
    //var titles = [String]()
    
    
    var error: NSError?
    let jsonData: NSData = /* get your json data */
    
    let jsonDict = NSJSONSerialization.JSONObjectWithData(jsonData, options: nil, error: &error) as NSDictionary

    /*@IBAction func buttonPressed(sender: AnyObject) {
        let url = NSURL(string: "https://api.meetup.com/2/cities?&sign=true&photo-host=public&page=20")
       
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(NSString(data: data, encoding: NSUTF8StringEncoding))
        }
        
        /*let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
            println(self.titlesFromJSON(data))
        }*/
        
        /*let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) -> Void in
            let parser = JSONParser()
            self.titles = parser.titlesFromJSON(data)
            println(self.titles)
            //success()
        }*/

        
        task.resume()
    }*/
    
    /*func titlesFromJSON(data: NSData) -> [String] {
        var titles = [String]()
        var jsonError: NSError?
        
        if let json = NSJSONSerialization.JSONObjectWithData(data, options: nil, error: &jsonError) as? [String: AnyObject],
            feed = json["feed"] as? [String: AnyObject],
            entries = feed["entry"] as? [[String: AnyObject]]
        {
            for entry in entries {
                if let name = entry["im:name"] as? [String: AnyObject],
                    label = name["label"] as? String {
                        titles.append(label)
                }
            }
        } else {
            if let jsonError = jsonError {
                println("json error: \(jsonError)")
            }
        }
        
        return titles
    }*/
    //let url = NSURL(string: "https://api.meetup.com/2/cities?&sign=true&photo-host=public&page=20")
    
    //import Foundation
    
    /*var error: NSError?
    let jsonData: NSData = NSURL(string: "https://api.meetup.com/2/cities?&sign=true&photo-host=public&page=20")
    
    let jsonDict = NSJSONSerialization.JSONObjectWithData(jsonData, options: nil, error: &error) as NSDictionary*/

    /*var request: NSURLRequest = NSURLRequest(URL: url)
    
    var connection: NSURLConnection = NSURLConnection(request: request, delegate: self, startImmediately: false)
    
    var data: NSMutableData = NSMutableData()
    
    func connection(didReceiveResponse: NSURLConnection!, didReceiveResponse response: NSURLResponse!) {
        // Received a new request, clear out the data object
        self.data = NSMutableData()
    }
    
    func connection(connection: NSURLConnection!, didReceiveData data: NSData!) {
        // Append the received chunk of data to our data object
        self.data.appendData(data)
    }
    
    func connectionDidFinishLoading(connection: NSURLConnection!) {
        // Request complete, self.data should now hold the resulting info
        // Convert the retrieved data in to an object through JSON deserialization
        var err: NSError
        var jsonResult: NSDictionary = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: nil) as! NSDictionary
        
        if jsonResult.count>0 && jsonResult["results"]!.count>0 {
            var results: NSArray = jsonResult["results"] as! NSArray
            self.tableData = results
            self.appsTableView.reloadData()
            
        }
    }*/
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

