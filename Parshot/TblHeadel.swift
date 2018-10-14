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
    private var id = Expression<Int>("id")
    private let background = Expression<String?>("background")
    private let red = Expression<Int?>("red")
    private let green = Expression<Int?>("green")
    private let blue = Expression<Int?>("blue")
    private let logo = Expression<String?>("logo")
    private let right_icon = Expression<String?>("right_icon")
    private let left_icon = Expression<String?>("left_icon")
    private var template_id = Expression<Int>("template_id")
    
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
    
    func addHeader (data:HeaderModel) -> Int64? {
        do {
            let insert = TbHeader.insert( background <- data.background,red <- data.red ,green <- data.green ,blue <- data.blue ,logo <- data.logo ,right_icon <- data.right_icon ,left_icon <- data.left_icon ,template_id <- data.template_id )
            
            let id = try db!.run(insert)
            print("Insert to tblDesign successfully")
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }

    
    func queryAllHeadersByName() -> [HeaderModel] {
        
        var data = [HeaderModel]()
        
        do {
            for header in try db!.prepare(self.TbHeader) {
                print(header)
                let jsonEncoder = JSONEncoder()
                
                data.append(HeaderModel(background:header[background]!, red:header[red]!, green:header[green]!, blue:header[blue]!, logo:header[logo]!, right_icon:header[right_icon]!, left_icon:header[left_icon]!, template_id:header[template_id]))
                
            }
        } catch {
            print("Cannot get list of headers ")
        }
        return data
    }
    
    ///////// update table
    func updateHeadear(HeaderId:Int  , newHeader : String) -> Bool {
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
    func deleteHeader (inputId: Int) -> Bool {
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
