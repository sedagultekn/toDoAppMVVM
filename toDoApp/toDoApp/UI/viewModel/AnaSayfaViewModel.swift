//
//  AnaSayfaViewModel.swift
//  toDoApp
//
//  Created by Seda Gültekin on 14.08.2023.
//

import Foundation
import RxSwift
class AnaSayfaViewModel{
    var krepo = ToDoDaoRepository()
    var toDoList=BehaviorSubject<[ToDo]>(value: [ToDo]())
    
    init(){
        toDoList = krepo.toDoList
        
    }
    
    func sil(toDo_title:String){
        krepo.sil(toDo_title: toDo_title)
        yapilacaklaryukle()
    }
    func ara(aramaKelimesi :String){
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func yapilacaklaryukle(){
        krepo.yapilacaklariYukle()
    }
}
