//
//  TblHeadel.swift
//  Parshot
//
//  Created by hossam ahmed on 10/7/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import SQLite


class Header {
    
    static let shared:Header = Header()
    private let db: Connection?
    
    private let TbHeader = Table("Header")
    private var id = Expression<Int64>("id")
    private let background = Expression<String?>("background")
    private let red = Expression<Int64?>("red")
    private let green = Expression<Int64?>("green")
    private let blue = Expression<Int64?>("blue")
    private let logo = Expression<String?>("logo")
    private let right_icon = Expression<String?>("right_icon")
    private let left_icon = Expression<String?>("left_icon")
    private var template_id = Expression<Int64>("template_id")
    
    private init() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        do {
            db = try Connection("\(path)/ishop.sqlite3")
            createTableHeader()
        } catch {
            db = nil
            print ("Unable to open database")
        }
    }
    
    func createTableHeader() {
        
        do {
            try db!.run(TbHeader.create(ifNotExists:true) { table in
                
                table.column(id, primaryKey: true)
                table.column(background)
                table.column(red)
                table.column(green)
                table.column(blue)
                table.column(logo)
                table.column(right_icon)
                table.column(left_icon)
                table.column(template_id)
                
            })
            
            print("create table successfully")
        } catch {
            
            print("Unable to create table")
        }
    }
    ////// insert data into header
    
    func addHeader(data:[String:Any]) -> Int64? {
        do {
            let insert = TbHeader.insert(background <- data["background"]! as! String,red <- data["red"]! as! Int64,green <- data["green"]! as! Int64 ,blue <- data["blue"]!  as! Int64  ,logo <- data["logo"]!  as! String ,right_icon <- data["right_icon"]!  as! String ,left_icon <- data["left_icon"]!  as! String ,template_id <- data["template_id"]!  as! Int64 )
            
            let id = try db!.run(insert)
            print("Insert to tblHeader successfully")
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    
    
    ///////// update table
    func updateHeadear(HeaderId:Int64  , newHeader : String) -> Bool {
        let tblFilterHeader  = TbHeader.filter(id == HeaderId)
        do {
            let update = tblFilterHeader.update([
                
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
    
    ////// delet table
    func deleteHeader (inputId: Int64) -> Bool {
        do {
            let tblFilterHeader = TbHeader.filter(id == inputId)
            try db!.run(TbHeader.delete())
            print("delete sucessfully")
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }
    
    
    
}
