//
//  TaskConfigurationTransformer.swift
//  eTracker
//
//  Created by Carlos Gonçalves on 20/02/2024.
//

import Foundation


class TaskConfigurationTransformer: ValueTransformer {
    override func transformedValue(_ value: Any?) -> Any? {
        guard let taskConfiguration = value as? Task else {
            print("\(#function) cast issue")
            return nil
        }

        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: taskConfiguration, requiringSecureCoding: true)
            return data
        } catch {
            print(error)
            return nil
        }
    }

    override func reverseTransformedValue(_ value: Any?) -> Any? {
        guard let data = value as? Data else {
            print("\(#function) nil data value")
            return nil
        }

        do {
            let taskConfiguration = try NSKeyedUnarchiver
                .unarchivedObject(ofClasses: [
                    Task.self, NSDictionary.self,
                    NSArray.self, NSString.self, NSNumber.self],
                                  from: data)
            return taskConfiguration
        } catch {
            print(error)
            return nil
        }
    }
}
