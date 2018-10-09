//
//  DatabaseManagement.swift
//  Parshot
//
//  Created by hazem on 9/22/18.
//  Copyright © 2018 hazem. All rights reserved.
//
import Foundation
import SQLite
class Design {

    static let shared:Design = Design()
    private let db: Connection?
    private let tblDesign = Table("Design")
    private var id = Expression<Int64>("id")
    private var header_id = Expression<Int64>("header_id")
    private var footer_id = Expression<Int64>("footer_id")
    private var body_id = Expression<Int64>("body_id")
   
    /////// open database and make connection
   ///// creat location to store database in app
    private init() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!

        do {
            db = try Connection("\(path)/ishop.sqlite3")
            createTableDesign()
        } catch {
            db = nil
            print ("Unable to open database")
        }
    }
    /////// creat table
    func createTableDesign() {

        do {
            try db!.run(tblDesign.create(ifNotExists:true) { table in

                table.column(id, primaryKey: true)
                table.column(header_id)
                table.column(footer_id)
                table.column(body_id)

            })

            print("create table successfully")
        } catch {
            print("Unable to create table")
        }
    }
    // insert in table function
        func addDesign(data:[String:Any]) -> Int64? {
            do {
                let insert = tblDesign.insert( header_id <- data["header_id"]! as! Int64,footer_id <- data["footer_id"]! as! Int64 ,body_id <- data["body_id"]!  as! Int64 )
                
                let id = try db!.run(insert)
                print("Insert to tblDesign successfully")
                return id
            } catch {
                print("Cannot insert to database")
                return nil
            }
        }
    
    ////////// update  update table
    func updateDesign(DesignId:Int64  , newDesign : String) -> Bool {
        let tblFilterDesign  = tblDesign.filter(id == DesignId)
        do {
            let update = tblFilterDesign.update([

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
    func deleteDesign (inputId: Int64) -> Bool {
        do {
            let tblFilterDesign = tblDesign.filter(id == inputId)
            try db!.run(tblDesign.delete())
            print("delete sucessfully")
            return true
        } catch {

            print("Delete failed")
        }
        return false
    }

}



    


















