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
    private var id = Expression<Int>("id")
    private let name = Expression<String?>("name")
    private let bank_accounts = Expression<String?>("bank_accounts")
    private let phone = Expression<String?>("phone")
    private let alternative_phone = Expression<String?>("alternative_phone")
    private let commercial_register_photo = Expression<String?>("commercial_register_photo")
    private let commercial_register_number = Expression<Int?>("commercial_register_number")
    private let link = Expression<String?>("link")
    private let description = Expression<String?>("description")
    private let birthdate = Expression<String?>("birthdate")
    private let city_id = Expression<Int?>("city_id")
    private let branches = Expression<Int?>("branches")
    private let subcat_id = Expression<Int?>("subcat_id")
    private let logodesign_id = Expression<Int?>("logodesign_id")
    private let visible = Expression<String?>("visible")
    private let user_id = Expression<Int?>("user_id")
    private let design_id = Expression<Int?>("design_id")
    private let template_id = Expression<Int?>("template_id")
    
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
                table.column(birthdate)

                
            })
            
            print("create table successfully")
        } catch {
            
            print("Unable to create table")
        }
    }

    
    func addStore (data:StoreModel) -> Int64? {
        do {
            let insert = TblStore.insert( name <- data.name, bank_accounts <- data.bank_accounts,phone <- data.phone,alternative_phone <- data.alternative_phone,commercial_register_photo <- data.commercial_register_photo,commercial_register_number <- data.commercial_register_number, link <- data.link, description <- data.description,city_id <- data.city_id , branches <- data.branches, subcat_id <- data.subcat_id , logodesign_id <- data.logodesign_id,visible <- data.visible,user_id <- data.user_id ,design_id <- data.design_id,birthdate <- data.birthdate, template_id <- data.template_id )
            
            let id = try db!.run(insert)
            print("Insert to tblStore successfully")
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    
    
    

    
    func queryAllStorssByName() -> [StoreModel] {
        
        var data = [StoreModel]()
        
        do {
            for store in try db!.prepare(self.TblStore) {
                print(store)
                
                  var storeSetting1 = StorSetting.shared.queryAllStorssByName()
            data.append(StoreModel(name : store[name]!,bank_accounts : store[bank_accounts]!, phone : store[phone]! ,alternative_phone : store[alternative_phone]!,commercial_register_photo : store[commercial_register_photo]!,commercial_register_number : store[commercial_register_number]!,link : store[link]!,description : store[description]!,birthdate : store[birthdate]!,city_id : store[city_id]!,branches: store[branches]!,subcat_id : store[subcat_id]!,logodesign_id : store[logodesign_id]!,visible : store[visible]!,user_id : store[user_id]!,design_id : store[design_id]!,template_id : store[template_id]! ,storesettings : storeSetting1 ))
                
            }
        } catch {
            print("Cannot get list of desigen ")
        }
        return data
    }
    
    ///////// update table
    func updateStore(StoreId:Int  , newStore : String) -> Bool {
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
    func deleteStore (inputId: Int) -> Bool {
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

