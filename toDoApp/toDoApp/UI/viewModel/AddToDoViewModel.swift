//
//  AddToDo.swift
//  toDoApp
//
//  Created by Seda Gültekin on 14.08.2023.
//

import Foundation

class AddToDoViewModel{
    var krepo = ToDoDaoRepository()
    func ekle(tf_title:String,tf_toDo:String){
        krepo.ekle(tf_title: tf_title, tf_toDo: tf_toDo)
        
    }
}
