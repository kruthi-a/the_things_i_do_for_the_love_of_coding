//
//  JSONParser.swift
//  Hello World!
//
//  Created by Kruthi Annigeri on 8/12/15.
//  Copyright (c) 2015 Kruthi Annigeri. All rights reserved.
//

import Foundation
class JSONParser {
    func titlesFromJSON(data: NSData) -> [String] {
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
    }
    /*func getJSON(urlToRequest: String) -> NSData{
        return NSData!(contentsOfURL: NSURL(string: urlToRequest)!)
    }
    
    func parseJSON(inputData: NSData) -> NSDictionary{
        var error: NSError?
        var boardsDictionary: NSDictionary = NSJSONSerialization.JSONObjectWithData(inputData, options: NSJSONReadingOptions.MutableContainers, error: &error) as! NSDictionary
        
        return boardsDictionary
    }*/
}