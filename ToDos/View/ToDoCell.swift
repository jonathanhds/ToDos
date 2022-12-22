import SwiftUI

struct ToDoCell: View {

    let todo: ToDo

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Text(todo.title)
                    .font(.headline)

                Spacer()

                Text(todo.details.dayOfTheWeek)
                    .font(.caption2)
            }

            Text(todo.details.description)
                .font(.caption)
        }
    }
}

struct ToDoCell_Previews: PreviewProvider {
    static var previews: some View {
        ToDoCell(todo: ToDo(title: "Hello", details: ToDoDetails(description: "World", day: 1)))
    }
}
