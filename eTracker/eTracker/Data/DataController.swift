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
                
        let operatorentity = try? DataController.container.viewContext.fetch(request)
        
        return operatorentity
        
    }
    
    func delete<T:NSFetchRequestResult>(data:T) throws {
        
        DataController.container.viewContext.delete(data as! NSManagedObject)

        try saveContext()
        
    }
    

    func createNewPlan(_ name: String) throws {
        
        let newPlan = Plan(context: DataController.container.viewContext)
        
        newPlan.name = name
                
        try saveContext()
    }
        
    func saveContext() throws{
        
        try DataController.container.viewContext.save()
        
    }
}

