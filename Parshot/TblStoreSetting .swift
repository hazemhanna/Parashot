//
//  TblStoreSetting .swift
//  Parshot
//
//  Created by hossam ahmed on 10/7/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import SQLite

class StorSetting  {
    
    static let shared:StorSetting = StorSetting()
    private let db: Connection?
    private let TbStorSetting = Table("StorSetting")
    private var id = Expression<Int64>("id")
    private let store_id = Expression<Int64?>("store_id")
    private let payment_id = Expression<Int64?>("payment_id")
    private let design_id = Expression<Int64?>("design_id")
    private let font = Expression<String?>("font")
    private let first_splash = Expression<String?>("first_splash")
    private let second_splash = Expression<String?>("second_splash")
    private let third_splash = Expression<String?>("third_splash")
    private let forth_splash = Expression<String?>("forth_splash")
    private let longitude = Expression<Int64?>("longitude")
    private let latitude = Expression<Int64?>("latitude")
    private let logo = Expression<String?>("logo")
    private let open_time = Expression<String?>("open_time")
    private let close_time = Expression<String?>("close_time")
    private let update_ = Expression<String?>("update_")
    
    private init() {
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        
        do {
            db = try Connection("\(path)/ishop.sqlite3")
            createTableBody()
        } catch {
            db = nil
            print ("Unable to open database")
        }
    }
    
    func createTableBody() {
        
        do {
            try db!.run(TbStorSetting.create(ifNotExists:true) { table in
                table.column(id, primaryKey: true)
                table.column(store_id)
                table.column(payment_id)
                table.column(design_id)
                table.column(font)
                table.column(first_splash)
                table.column(second_splash)
                table.column(third_splash)
                table.column(forth_splash)
                table.column(longitude)
                table.column(latitude)
                table.column(logo)
                table.column(open_time)
                table.column(close_time)
                table.column(update_)
            })
            
            print("create table successfully")
        } catch {
            
            print("Unable to create table")
        }
    }
    func addStore(data:[String:Any]) -> Int64? {
        do {
            let insert = TbStorSetting.insert(store_id <- data["store_id"] as! Int64,payment_id <- data["payment_id"] as! Int64,design_id <- data["design_id"] as! Int64 ,font <- data["font"] as! String,first_splash <- data["first_splash"] as! String,second_splash <- data["second_splash"] as! String,third_splash <- data["third_splash"] as! String,forth_splash <- data["forth_splash"] as! String,longitude <- data["longitude"] as! Int64,latitude <- data["latitude"] as! Int64,logo <- data["logo"] as! String,open_time <- data["open_time"] as! String,close_time <- data["close_time"] as! String,update_ <- data["update_"] as! String)
            
            let id = try db!.run(insert)
            print("Insert to tblStorSetting successfully")
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    ///////// update table
    func updateStore(StoreId:Int64  , newStore : String) -> Bool {
        let tblFilterStore  = TbStorSetting.filter(id == StoreId)
        do {
            let update = tblFilterStore.update([
                
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
    func deleteStore (inputId: Int64) -> Bool {
        do {
            let tblFilterStore = TbStorSetting.filter(id == inputId)
            try db!.run(TbStorSetting.delete())
            print("delete sucessfully")
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }
}
