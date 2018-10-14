//
//  TblBody.swift
//  Parshot
//
//  Created by hossam ahmed on 10/7/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import SQLite


class Slider {
    
    static let shared:Slider = Slider()
    private let db: Connection?
    
    private let SliderTbl = Table("Sliders")
    private var id = Expression<Int>("id")
    private let photo = Expression<String?>("photo")
   
    
    
    
    
    
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
            try db!.run(SliderTbl.create(ifNotExists:true) { table in
                
                table.column(id, primaryKey: true)
                table.column(photo)
               
                
                
                
            })
            
            print("create table successfully")
        } catch {
            
            print("Unable to create table")
        }
    }
    
    
    func addBody(data:[SlidersModel]) -> Int64? {
        do {
            var id : Int64?
            for dataa in data {
                
                let insert = SliderTbl.insert(photo <- dataa.photo)

                 id = try db!.run(insert)
                print("Insert to tblBody successfully")
                
               
            }
            
           return id
          
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    
    
    //////
    func queryAllBodyByName() -> [SlidersModel] {
        var data  =  [SlidersModel]()
        
        do {
            
            for Slider in try db!.prepare(self.SliderTbl) {
                data.append(SlidersModel(photo:Slider[photo]!))
 
            }
            
        } catch {
            print("Cannot get list of footer ")
        }
        
        return data
    }
    
    
    
    
    ///////// update table
    func updateBody(BodyId:Int  , newBody : String) -> Bool {
        let tblFilterBody  = SliderTbl.filter(id == BodyId)
        do {
            let update = tblFilterBody.update([
                
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
    func deleteBody (inputId: Int) -> Bool {
        do {
            let tblFilterBody = SliderTbl.filter(id == inputId)
            try db!.run(SliderTbl.delete())
            print("delete sucessfully")
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }
    
    
}

