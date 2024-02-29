//
//  Persistence.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 09/02/2024.
//

import CoreData
class DataController {
    
    static let container = NSPersistentContainer(name: "eTracker")
    
    static let shared: DataController = {
        return DataController()
    }()
    
    private var context: NSManagedObjectContext {
        return DataController.container.viewContext
    }
    
    init() {
        
        ValueTransformer.setValueTransformer(TaskConfigurationTransformer(),
                                             forName: NSValueTransformerName("TaskConfigurationTransformer"))
        
        DataController.container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
    
    func fetchPlans() -> [Plan]? {
        
        let request = NSFetchRequest<Plan>(entityName: "Plan")
                
        let operatorentity = try? context.fetch(request)
        
        return operatorentity
        
    }
    
    func delete<T:NSFetchRequestResult>(data:T) throws -> (Result<Bool?, Error>) {
        
        context.delete(data as! NSManagedObject)

        return try saveContext()
        
    }
    

    func createNewPlan(_ name: String, completion: @escaping (Result<Plan?, Error>) -> Void){
        
        let newPlan = Plan(context: context)
        newPlan.name = name
        
        do {
            let result = try saveContext()
            completion(.success(newPlan))
        } catch {
            completion(.failure(error))
        }
    }
        
    func saveContext() throws -> (Result<Bool?, Error>) {
        
        if context.hasChanges {
            do {
                try context.save()
                return .success(true)
            } catch {
                print(error.localizedDescription)
                return .failure(error)
            }
        }
        
        print("[DataController] no changes found on context.")
        return .success(false)
        
    }
}

