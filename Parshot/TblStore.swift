//
//  TblStore.swift
//  Parshot
//
//  Created by hossam ahmed on 10/7/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import SQLite

class Store  {
    
    static let shared:Store = Store()
    private let db: Connection?
    private let TblStore = Table("Store")
    private var id = Expression<Int64>("id")
    private let name = Expression<String?>("name")
    private let bank_accounts = Expression<String?>("bank_accounts")
    private let phone = Expression<String?>("phone")
    private let alternative_phone = Expression<String?>("alternative_phone")
    private let commercial_register_photo = Expression<String?>("commercial_register_photo")
    private let commercial_register_number = Expression<Int64?>("commercial_register_number")
    private let link = Expression<String?>("link")
    private let description = Expression<String?>("description")
    private let birthdate = Expression<String?>("birthdate")
    private let city_id = Expression<Int64?>("city_id")
    private let branches = Expression<Int64?>("branches")
    private let subcat_id = Expression<Int64?>("subcat_id")
    private let logodesign_id = Expression<Int64?>("logodesign_id")
    private let visible = Expression<String?>("visible")
    private let user_id = Expression<Int64?>("user_id")
    private let design_id = Expression<Int64?>("design_id")
    private let template_id = Expression<Int64?>("template_id")
    private let store = Expression<StoreModel>("store")

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
            try db!.run(TblStore.create(ifNotExists:true) { table in
                table.column(id, primaryKey: true)
                table.column(name)
                table.column(bank_accounts)
                table.column(phone)
                table.column(alternative_phone)
                table.column(commercial_register_photo)
                table.column(commercial_register_number)
                table.column(link)
                table.column(description)
                table.column(city_id)
                table.column(branches)
                table.column(subcat_id)
                table.column(logodesign_id)
                table.column(visible)
                table.column(user_id)
                table.column(design_id)
                table.column(template_id)

                
            })
            
            print("create table successfully")
        } catch {
            
            print("Unable to create table")
        }
    }
    func addStore(data:StoreModel) -> Int64? {
        do {
            let insert = TblStore.insert(name <- data.name)
            
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
        let tblFilterStore  = TblStore.filter(id == StoreId)
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
            let tblFilterStore = TblStore.filter(id == inputId)
            try db!.run(TblStore.delete())
            print("delete sucessfully")
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }
}
