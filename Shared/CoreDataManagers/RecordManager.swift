//
//  RecordManager.swift
//  medical (iOS)
//
//  Created by Andres on 15/4/21.
//


import Foundation
import CoreData

class RecordManager {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "RecordModel")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed \(error.localizedDescription)")
            }
        }
    }
    
    func updateRecord() {
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
        }
        
    }
    
    func deleteBloodPressure(bp: BloodPressure) {
        
        persistentContainer.viewContext.delete(bp)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    func getAllBloodPressure() -> [BloodPressure] {
        
        let fetchRequest: NSFetchRequest<BloodPressure> = BloodPressure.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
        
    }
    
    func saveBloodPressure(sys: Int16, dia: Int16, pul: Int16) {
        
        let bp = BloodPressure(context: persistentContainer.viewContext)
        bp.sys = sys
        bp.dia = dia
        bp.pul = pul
        bp.create = Date()
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save blood pressure \(error)")
        }
        
    }
    
}
