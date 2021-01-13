//
//  assignment-1.swift
//  slotmaster
//
//  Created by jimmy on 2021-01-12.
//

//import Foundation
import UIKit

enum EmployeeType : String {
    case contract = "contract"
    case fullTime =  "full-time"
    case partTime = "part-time"
    
}

class Employee {
    var name : String
    var email : String?
    var id : String
    var type : EmployeeType
    var status : Bool
    init( name : String, email : String?, id : String, type : EmployeeType, status: Bool ) {
        self.name = name
        self.email = email
        self.id = id
        self.type = type
        self.status = status
    }
}

class EmployeeManager
{
    private var employees : [Employee]
    
    init( ) {
        employees = []
    }
    
    func add(employee : Employee) {
        employees.append(employee)
    }
    
    func getAll() -> [Employee] {
        return employees;
    }
    
    func getEmployee(id : String) -> String? {
        if let e = employees.first(where: {$0.id == id}) {
            return e.name
        }
        else {
            return nil;
        }
    }
    
    func getEmployeeEmail(id : String) -> String? {
        if let e = employees.first(where: {$0.id == id}) {
            return e.email
        }
        else {
            return nil;
        }
    }
    
    func getEmployeeType(id : String) -> String? {
        if let e = employees.first(where: {$0.id == id}) {
            return e.email
        }
        else {
            return nil;
        }
    }
    
    func getEmployeeStatus(id : String) -> Bool? {
        if let e = employees.first(where: {$0.id == id}) {
            return e.status
        }
        else {
            return nil;
        }
    }
    
    func toggle(id : String) {
        if let e = employees.first(where: {$0.id == id}) {
            e.status = !e.status
        }
    }
    
    func removeEmployee(id : String) {
        if let index = employees.firstIndex(where: {$0.id == id}) {
            if employees[index].status {
                employees.remove(at : index)
            }
        }
    }
}





