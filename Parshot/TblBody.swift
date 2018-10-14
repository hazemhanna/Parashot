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
    private var id = Expression<Int>("id")
    private let background = Expression<String?>("background")
    private let red = Expression<Int?>("red")
    private let green = Expression<Int?>("green")
    private let blue = Expression<Int?>("blue")
    
    private let first_label = Expression<String?>("first_label")
    private let second_label = Expression<String?>("second_label")
    private let third_label = Expression<String?>("third_label")
    private var template_id = Expression<Int>("template_id")
    
    private let categorybackground = Expression<String?>("categorybackground")
    private let category_red = Expression<Int?>("category_red")
    private let category_green = Expression<Int?>("category_green")
    private let category_blue = Expression<Int?>("category_blue")
    
    private let font_color = Expression<String?>("font_color")
    private let font_red = Expression<Int?>("font_red")
    private let font_green = Expression<Int?>("font_green")
    private let font_blue = Expression<Int?>("font_blue")
    
    
    
    
    
    
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
    
    
    func addBody(data:BodyModel) -> Int64? {
        do {
            let insert = TbBody.insert(background <- data.background,red <- data.red ,green <- data.green ,blue <- data.blue ,first_label <- data.first_label ,second_label <- data.second_label,third_label <- data.third_label,template_id <- Int(data.template_id)!,categorybackground <- data.categorybackground ,category_red <- data.category_red, category_green <- data.category_green,category_blue <- data.category_blue ,font_color <- data.font_color ,font_red <- data.font_red, font_green <- data.font_green,font_blue <- data.font_blue)

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
        func queryAllBodyByName() -> [BodyModel] {
            var data  =  [BodyModel]()
    
            do {
    
                for Body in try db!.prepare(self.TbBody) {
                    print(Body)
                    let jsonEncoder = JSONEncoder()
                    
                      data.append(BodyModel(background:Body[background]!, red:Body[red]!, green:Body[green]!, blue:Body[blue]!, first_label:Body[first_label]!, second_label:Body[second_label]!, third_label:Body[third_label]!, template_id:String(Body[template_id]), categorybackground:Body[categorybackground]!, category_red:Body[category_red]!, category_green:Body[category_green]!, category_blue:Body[category_blue]!, font_color:Body[font_color]!, font_red:Body[font_red]!, font_green:Body[font_green]!, font_blue:Body[font_blue]!))
                   

               
                }
                
            } catch {
                print("Cannot get list of footer ")
            }
    
            return data
        }
    
    
    
    
    ///////// update table
    func updateBody(BodyId:Int  , newBody : String) -> Bool {
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
    func deleteBody (inputId: Int) -> Bool {
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
