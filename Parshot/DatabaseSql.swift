//
//  DatabaseManagement.swift
//  Parshot
//
//  Created by hazem on 9/22/18.
//  Copyright © 2018 hazem. All rights reserved.
//
import Foundation
import SQLite
class DatabaseManagement {
    
    static let shared:DatabaseManagement = DatabaseManagement()
    private let db: Connection?

    private let tblFooter = Table("footer")
    private var id = Expression<Int64>("id")
    private let border = Expression<Bool?>("border")
    private let shadow = Expression<Bool?>("shadow")
    private let background = Expression<String?>("background")
    private let red = Expression<Int64?>("red")
    private let green = Expression<Int64?>("green")
    private let blue = Expression<Int64?>("blue")
    private let first_icon = Expression<String?>("first_icon")
    private let first_label = Expression<String?>("first_label")
    private let second_icon = Expression<String?>("second_icon")
    private let second_label = Expression<String?>("second_label")
    private let third_icon = Expression<String?>("third_icon")
    private let third_label = Expression<String?>("third_label")
    private let forth_icon = Expression<String?>("forth_icon")
    private let forth_label = Expression<String?>("forth_label")
    private let fifth_icon = Expression<String?>("fifth_icon")
    private let fifth_label = Expression<String?>("fifth_label")
    private var template_id = Expression<Int64>("template_id")
    private var font_color = Expression<String>("font_color")
    private var font_red = Expression<Int64>("font_red")
    private var font_green = Expression<Int64>("font_green")
    private var font_blue = Expression<Int64>("font_blue")
    /////// open database and make connection
   ///// creat location to store database in app
    private init() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        do {
            db = try Connection("\(path)/ishop.sqlite3")
            createTablefooter()
        } catch {
            db = nil
            print ("Unable to open database")
        }
    }
    /////// creat table 
    func createTablefooter() {

        do {
            try db!.run(tblFooter.create(ifNotExists:true) { table in
                
                table.column(id, primaryKey: true)
                //             table.column(phone, unique: true)
                table.column(border)
                table.column(shadow)
                table.column(background)
                
                table.column(red)
                table.column(green)
                table.column(blue)
                
                table.column(first_icon)
                table.column(first_label)
                
                table.column(second_icon)
                table.column(second_label)
                
                table.column(third_icon)
                table.column(third_label)
                
                table.column(forth_icon)
                table.column(forth_label)

                table.column(fifth_icon)
                table.column(fifth_label)
            
                table.column(template_id)
                
                table.column(font_color)
                table.column(font_red)
                table.column(font_green)
                table.column(font_blue)
                
            })
            
            print("create table successfully")
        } catch {
            print("Unable to create table")
        }
    }
    ////// insert in table function 
    
    func addFooter(data:[String:Any]) -> Int64? {
        do {
            // print(dictionary["title_message"] as! String)
            let insert = tblProduct.insert(border <- data["border"]! as! Bool,shadow <- data["shadow"]! as! Bool,background <- data["background"]! as! String,red <- data["red"]! as! Int64,green <- data["green"]! as! Int64,blue <- data["blue"]!  as! Int64,first_icon <- data["first_icon"]! as! String,first_label <- data["first_label"]! as! String,second_icon <- data["second_icon"]! as! String,second_label <- data["second_label"]! as! String,third_icon <- data["third_icon"]! as! String,third_label <- data["third_label"], forth_icon <- data["forth_icon"],forth_label <- data["forth_label"],fifth_icon <- data["fifth_icon"],fifth_label <- data["fifth_label"],template_id <- data["template_id"],font_color <- data["font_color"],font_red <- data["font_red"], font_green <- data["font_green"],font_blue <- data["font_blue"])
            let id = try db!.run(insert)
            print("Insert to tblFooter successfully")
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    
   
    
    
    
    
    
    ////////// update
    func updateFooter(footerId:Int64  , newFooter : String) -> Bool {
        let tblFilterFooter  = tblFooter.filter(id == footerId)
        do {
            let update = tblFilterFooter.update([

                ])
            if try db!.run(update) > 0 {
                print("Update contact successfully")
                return true
            }
        } catch {
            print("Update failed: \(error)")
        }
        
        return false
    }
    
    ////// delet
    func deleteFooter (inputId: Int64) -> Bool {
        do {
            let tblFilterFooter = tblFooter.filter(id == inputId)
            try db!.run(tblFooter.delete())
            print("delete sucessfully")
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }



}
