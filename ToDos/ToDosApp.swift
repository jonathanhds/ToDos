import SwiftUI

@main
struct ToDosApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ToDoView()
            }
        }
    }
}
