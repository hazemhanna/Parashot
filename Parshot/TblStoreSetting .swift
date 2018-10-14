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
    private var id = Expression<Int>("id")
    private let store_id = Expression<Int?>("store_id")
    private let payment_id = Expression<Int?>("payment_id")
    private let design_id = Expression<Int?>("design_id")
    private let font = Expression<String?>("font")
    private let first_splash = Expression<String?>("first_splash")
    private let second_splash = Expression<String?>("second_splash")
    private let third_splash = Expression<String?>("third_splash")
    private let forth_splash = Expression<String?>("forth_splash")
    private let longitude = Expression<Int?>("longitude")
    private let latitude = Expression<Int?>("latitude")
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
    func addStoreSetting(data:StoreSettingModel) -> Int64? {
        do {
            let insert = TbStorSetting.insert(store_id <- data.store_id ,payment_id <- data.payment_id,design_id <- data.design_id ,font <- data.font,first_splash <- data.first_splash,second_splash <- data.second_splash,third_splash <- data.third_splash,forth_splash <- data.forth_splash,longitude <- data.longitude,latitude <- data.latitude,logo <- data.logo,open_time <- data.open_time,close_time <- data.close_time,update_ <- data.update_)

            let id = try db!.run(insert)
            print("Insert to tblStorSetting successfully")
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    

    
    
    func  queryAllStorssByName() -> [StoreSettingModel] {
        
        var data = [StoreSettingModel]()
        
        do {
            for store  in try db!.prepare(self.TbStorSetting) {
              
                 var desiegn1 = Design.shared.queryAllDesignsByName()
                
                data.append(StoreSettingModel(store_id:store[store_id]!, payment_id:store[payment_id]!, design_id:store[design_id]!, font:store[font]!, first_splash:store[first_splash]!, second_splash:store[second_splash]!, third_splash:store[third_splash]!, forth_splash:store[forth_splash]! , longitude : store[longitude]!,latitude : store[latitude]!, logo : store[logo]!,open_time: store[open_time]!,close_time: store[close_time]!,update_ : store[update_]! , design : desiegn1[0] ))
                
            }
        } catch {
            print("Cannot get list of headers ")
        }
        return data
    }
    
    ///////// update table
    func updateStore(StoreId:Int  , newStore : String) -> Bool {
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
    func deleteStore (inputId: Int) -> Bool {
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

