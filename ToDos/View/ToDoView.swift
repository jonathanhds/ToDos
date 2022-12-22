import SwiftUI

struct ToDoView: View {

    @StateObject
    private var viewModel = ToDoViewModel()

    var body: some View {
        List(viewModel.todos) { todo in
            ToDoCell(todo: todo)
        }
        .navigationTitle("To Do's")
        .onAppear {
            viewModel.loadToDos()
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}
