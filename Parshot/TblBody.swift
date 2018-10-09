//
//  TblBody.swift
//  Parshot
//
//  Created by hossam ahmed on 10/7/18.
//  Copyright © 2018 hazem. All rights reserved.
//

import Foundation
import SQLite


class Body {
    
    static let shared:Body = Body()
    private let db: Connection?
    
    private let TbBody = Table("Body")
    private var id = Expression<Int64>("id")
    private let background = Expression<String?>("background")
    private let red = Expression<Int64?>("red")
    private let green = Expression<Int64?>("green")
    private let blue = Expression<Int64?>("blue")
    
    private let first_label = Expression<String?>("first_label")
    private let second_label = Expression<String?>("second_label")
    private let third_label = Expression<String?>("third_label")
    private var template_id = Expression<Int64>("template_id")
    
    private let categorybackground = Expression<String?>("categorybackground")
    private let category_red = Expression<Int64?>("category_red")
    private let category_green = Expression<Int64?>("category_green")
    private let category_blue = Expression<Int64?>("category_blue")
    
    private let font_color = Expression<String?>("font_color")
    private let font_red = Expression<Int64?>("font_red")
    private let font_green = Expression<Int64?>("font_green")
    private let font_blue = Expression<Int64?>("font_blue")
    
    
    
    
    
    
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
            try db!.run(TbBody.create(ifNotExists:true) { table in
                
                table.column(id, primaryKey: true)
                table.column(background)
                table.column(red)
                table.column(green)
                table.column(blue)
                
                table.column(first_label)
                table.column(second_label)
                table.column(third_label)
                table.column(template_id)
                
                table.column(categorybackground)
                table.column(category_red)
                table.column(category_green)
                table.column(category_blue)
                
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
    
    
    func addBody(data:[String:Any]) -> Int64? {
        do {
            let insert = TbBody.insert(background <- data["background"]! as! String,red <- data["red"]! as! Int64,green <- data["green"]! as! Int64 ,blue <- data["blue"]!  as! Int64 ,first_label <- data["first_label"]! as! String,second_label <- data["second_label"]! as! String,third_label <- data["third_label"] as! String,template_id <- data["template_id"]  as! Int64,categorybackground <- data["categorybackground"]as! String,category_red <- data["category_red"]  as! Int64, category_green <- data["category_green"] as! Int64,category_blue <- data["category_blue"] as! Int64 ,font_color <- data["font_color"]as! String,font_red <- data["font_red"]  as! Int64, font_green <- data["font_green"] as! Int64,font_blue <- data["font_blue"] as! Int64)
            
            let id = try db!.run(insert)
            print("Insert to tblBody successfully")
            print(id)
            return id
        } catch {
            print("Cannot insert to database")
            return nil
        }
    }
    
    
        //////
        func queryAllFooterByName(bodyid:Int64) -> BodyModel {
            var Bodies : BodyModel?
    
            do {
    
                for Body in try db!.prepare(self.TbBody.filter(id == bodyid)) {
                    Bodies?.background = Body[background]!
                    Bodies?.id = Int(Body[id])
                    Bodies?.red  = Body[red] as! Int
                }

                
              
                
                
            } catch {
                print("Cannot get list of footer ")
            }
    
            return Bodies!
        }
    
    
    
    
    ///////// update table
    func updateBody(BodyId:Int64  , newBody : String) -> Bool {
        let tblFilterBody  = TbBody.filter(id == BodyId)
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
    func deleteBody (inputId: Int64) -> Bool {
        do {
            let tblFilterBody = TbBody.filter(id == inputId)
            try db!.run(TbBody.delete())
            print("delete sucessfully")
            return true
        } catch {
            
            print("Delete failed")
        }
        return false
    }
    
    
}
