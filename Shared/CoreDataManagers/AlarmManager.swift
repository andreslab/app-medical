//
//  AlarmManager.swift
//  medical (iOS)
//
//  Created by Andres on 12/7/21.
//

import Foundation
import CoreData

class AlarmManager {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "AlarmModel")
        persistentContainer.loadPersistentStores { (description, error) in
            if let error = error {
                fatalError("Core Data Store failed \(error.localizedDescription)")
            }
        }
    }
    
    func updateAlarm() {
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
        }
        
    }
    
    func deleteAlarm(alarm: Alarm) {
        
        persistentContainer.viewContext.delete(alarm)
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            persistentContainer.viewContext.rollback()
            print("Failed to save context \(error)")
        }
        
    }
    
    func getAllAlarm() -> [Alarm] {
        
        let fetchRequest: NSFetchRequest<Alarm> = Alarm.fetchRequest()
        
        do {
            return try persistentContainer.viewContext.fetch(fetchRequest)
        } catch {
            return []
        }
        
    }
    
    func saveAlarm(title: String, clock: Date, repeatClock: String) {
        
        let alarm = Alarm(context: persistentContainer.viewContext)
        alarm.title = title
        alarm.clock = clock
        alarm.repeatClock = repeatClock
        
        do {
            try persistentContainer.viewContext.save()
        } catch {
            print("Failed to save blood pressure \(error)")
        }
        
    }
    
}
