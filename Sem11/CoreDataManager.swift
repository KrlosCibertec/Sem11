//
//  CoreDataManager.swift
//  Sem11
//
//  Created by krlos90 on 25/11/23.
//

import Foundation
import CoreData

class CoreDataManager {
    
    private let contenedor: NSPersistentContainer!
    
    init() {
        contenedor = NSPersistentContainer(name: "BDMundo")
        contenedor.loadPersistentStores { descripcion, error in
            if let error = error { //Estoy validando si el error nos nulo(Si tiene valor)
                print("Ocurriò un error", error)
                return
            }
            
            print("Conexiòn OK")
        }
    }
    
    func listar() -> [Pais] {
    
        let context = contenedor.viewContext
        
        let busqueda : NSFetchRequest<Pais> = Pais.fetchRequest()
        
        do {
            let listaPaises = try context.fetch(busqueda)
            return listaPaises
        } catch {
            print("Error!")
            return []
        }
    }
    
    func guardar(nombre: String, poblacion: Int64, pacifico: Bool) -> Bool {
        
        let context = contenedor.viewContext
        
        let nuevoPais = Pais(context: context)
        nuevoPais.nombre = nombre
        nuevoPais.poblacion = poblacion
        nuevoPais.pacifico = pacifico
        
        do {
            try context.save() //Como no devuelve nada no necesito almacenarlo en una variable
            return true
        } catch {
            return false
        }
    }
    
    func eliminar(pais: Pais) -> Bool {
        
        let context = contenedor.viewContext
        context.delete(pais)
        do {
            try context.save()
            return true
        } catch {
            return false
        }
    }
    
    func actualizar(pais: Pais) -> Bool {
         
        let context = contenedor.viewContext
        do {
            try context.save()
            return true
        } catch {
            return false
        }
        
    }
    
    
}
