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
    private var id = Expression<Int>("id")
    private var header_id = Expression<Int>("header_id")
    private var footer_id = Expression<Int>("footer_id")
    private var body_id = Expression<Int>("body_id")
   
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
        func addDesigen (data:DesigenModel) -> Int64? {
            do {
                let insert = tblDesign.insert( header_id <- data.header_id,footer_id <- data.footer_id ,body_id <- data.body_id )
                
                let id = try db!.run(insert)
                print("Insert to tblDesign successfully")
                return id
            } catch {
                print("Cannot insert to database")
                return nil
            }
        }
    
    
    func queryAllDesignsByName() -> [DesigenModel] {
        
        var data = [DesigenModel]()
        
        do {
            for Design in try db!.prepare(self.tblDesign) {
                print(Design)

                var footer1 = footer.shared.queryAllFooterByName()
                var header1 = Header.shared.queryAllHeadersByName()
                var body1 = Body.shared.queryAllBodyByName()
                 var slider1 = Slider.shared.queryAllBodyByName()
                data.append(DesigenModel(header_id : Design[header_id],body_id : Design[body_id], footer_id : Design[footer_id],footer : footer1[0] , body : body1[0], header :header1[0],sliders:slider1))
                
            }
        } catch {
            print("Cannot get list of desigen ")
        }
        return data
    }
    
    
    
    
    ////////// update  update table
    func updateDesign(DesignId:Int  , newDesign : String) -> Bool {
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
    func deleteDesign (inputId: Int) -> Bool {
        do {
            _ = tblDesign.filter(id == inputId)
            try db!.run(tblDesign.delete())
            print("delete sucessfully")
            return true
        } catch {

            print("Delete failed")
        }
        return false
    }

}



    


















