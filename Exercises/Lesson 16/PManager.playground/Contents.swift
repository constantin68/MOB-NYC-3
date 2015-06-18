import Foundation

// Projects
//  Title
//  Description
//  Deadline
//  Priority

//  has one User (Creator)
//  has many Users (Assignee)
//  has many Tasks

//Users
//Teams
//  has many Users

// CONCEPTUAL MODEL
// Users are "assigned" to Projects
// Users are "assigned" to Tasks
// Tasks are "created" in Projects
// Users can "create" Projects

class User {
    var name: String
    
    var projectsCreated: [Project] = []
    var assignedProjects: [Project] = []
    var tasksAssigned: [Task] = []
    
    init(name: String) {
        self.name = name
    }
}

class Task {
    var title: String
    var priority: Int?
    var assignee: User?
    
    init(title: String) {
        self.title = title
    }
    
    func assignUser(user: User) {
        // Add this user to the assignee property
        self.assignee = user
        
        // Add this task to the user's assigned tasks
        user.tasksAssigned.append(self)
    }
}

class Project {
    
    var title: String
    var description: String?
    var priority: Int?
    
    var assignees: [User] = []
    var tasks: [Task] = []
// it is setup with an empty array, that will be populated later - this can be used later so as not to ask if it is nil
    
    var creator: User
    
    init(title: String, creator: User) {
        self.title = title
        self.creator = creator
    }
    
    func assignUser(user: User) {
        // Add the user to the list of users in the project
        self.assignees.append(user)
        // Add the project to the list of projects for the user
        user.assignedProjects.append(self)
    }
    
    func createTask(title: String)
}

let myself = User(name: "Toshi")
let final = Project(title: "My Final Project", creator: myself)