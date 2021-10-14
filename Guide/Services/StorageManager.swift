//
//  StorageManager.swift
//  Guide
//
//  Created by Александра Мельникова on 14.10.2021.
//

import CoreData
import SwiftUI

class StorageManager {
    
    static let shared = StorageManager()
    
    // MARK: - Core Data stack
    private let persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Guide")
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    private var viewContext: NSManagedObjectContext {
        persistentContainer.viewContext
    }
    
    private init() {}
    
    // MARK: - Public Methods
    func fetchData() -> [Userr] {
        let fetchRequest: NSFetchRequest<Userr> = Userr.fetchRequest()
        
        do {
            return try viewContext.fetch(fetchRequest)
        } catch let error {
            print("Failed to fetch data", error)
            return []
        }
    }
    
    // Save data
    func save(_ userName: String, completion: (Userr) -> Void) {
        /*
        guard let entityDescription = NSEntityDescription.entity(forEntityName: "Task", in: persistentContainer.viewContext) else { return }
        let task = NSManagedObject(entity: entityDescription, insertInto: viewContext) as! Task
        */
        let user = Userr(context: viewContext)
        user.name = userName
        
        completion(user)
        saveContext()
    }
    
    func edit(_ user: Userr, newName: String) {
        user.name = newName
        saveContext()
    }
    
    func delete(_ user: Userr) {
        viewContext.delete(user)
        saveContext()
    }

    func clearAll() {
        let allData = fetchData()
        for user in allData {
            delete(user)
        }
        saveContext()
    }
    
    
    
    // MARK: - Core Data Saving support
    func saveContext() {
        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                let nserror = error as NSError
                fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
            }
        }
    }
}

