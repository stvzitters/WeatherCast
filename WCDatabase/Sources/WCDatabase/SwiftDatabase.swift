//
//  SwiftDatabase.swift
//  WCDatabase
//
//  Created by Shaun van Zitters on 2025/03/25.
//

import Foundation
import SwiftData
import WCDomain

public final class SwiftDatabase {
    
    private let schema = Schema([
        SwiftDataWeatherInfo.self
    ])
    private let container: ModelContainer!
    
    public init(useInMemoryStore: Bool = false) {
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: useInMemoryStore)
        
        // NB: The app SHOULD crash if a ModelContainer instance could not be created.
        self.container = try! ModelContainer(for: schema, configurations: [modelConfiguration])
    }
    
    func saveItem<T: PersistentModel>(_ item: T) throws {
        let context = ModelContext(container)
        context.insert(item)
        
        if context.hasChanges { try context.save() }
    }
    
    func saveItems<T: PersistentModel>(_ items: [T]) throws {
        let context = ModelContext(container)
        
        for item in items {
            context.insert(item)
        }
        
        if context.hasChanges { try context.save() }
    }
    
    func retrieveItems<T: PersistentModel>() throws -> [T] {
        let context = ModelContext(container)
        let fetchDescriptor = FetchDescriptor<T>()
        
        return try context.fetch(fetchDescriptor)
    }
    
    func deleteItem<T: PersistentModel>(_ item: T) throws {
        guard let container else { return }
        
        let context = ModelContext(container)
        let idToDelete = item.persistentModelID
        
        try context.delete(model: T.self, where: #Predicate { candidate in
            candidate.persistentModelID == idToDelete
        }, includeSubclasses: false)
        
        if context.hasChanges { try context.save() }
    }
}
