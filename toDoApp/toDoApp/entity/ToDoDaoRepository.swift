//
//  repo.swift
//  toDoApp
//
//  Created by Seda Gültekin on 14.08.2023.
//

import Foundation
import RxSwift
class ToDoDaoRepository{
    var toDoList=BehaviorSubject<[ToDo]>(value: [ToDo]())
    func ekle(tf_title:String,tf_toDo:String){
        print("ekle: \(tf_title) - \(tf_toDo)")
        
    }
    func guncelle(toDo_title:String,toDo_text:String){
        
        print("guncel: \(toDo_text) - \(toDo_title)")
    }
    
    func sil(toDo_title:String){
        print("silinsin mi \(toDo_title)")
        
    }
    func ara(aramaKelimesi :String){
        print(aramaKelimesi)
    }
    
    func yapilacaklariYukle(){
        var liste = [ToDo]()
        let toDo1 = ToDo(toDo_title: "rudy",toDo_text: "rudye su ver")
        let toDo2 = ToDo(toDo_title: "ders",toDo_text: "7 de ders var")
        let toDo3 = ToDo(toDo_title: "doğum günü",toDo_text: "pastaneden pasta alınacak")
        let toDo4 = ToDo(toDo_title: "ödev",toDo_text: "perşembe ödev teslim edilecek")
        let toDo5 = ToDo(toDo_title: "telefon",toDo_text: "telefon ekranı değişilcek")
        let toDo6 = ToDo(toDo_title: "spor",toDo_text: "spor yapılcak")
        liste.append(toDo1)
        liste.append(toDo2)
        liste.append(toDo3)
        liste.append(toDo4)
        liste.append(toDo5)
        liste.append(toDo6)
        
        toDoList.onNext(liste)
        
    }
}
