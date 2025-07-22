import SwiftUI

struct Fruit: Identifiable {  // Simple data model, like your Hit
    let id = UUID()  // Unique ID for each fruit
    let name: String
}

struct ExampleListView: View {
    @State private var fruits = [  // Main data source (changeable with @State)
        Fruit(name: "Apple"),
        Fruit(name: "Banana"),
        Fruit(name: "Cherry")
    ]

    @State private var selectedFruits: Set<UUID> = []  // Separate data for tracking selections

    var body: some View {
        List(selection: $selectedFruits) {  // $ creates Binding for selection (tracks picks)
            ForEach(fruits) { fruit in  // ForEach loops over items, needed for .onDelete
                Text(fruit.name)
            }
            .onDelete(perform: deleteItems)  // No $—just deletes from 'fruits'
        }
        .environment(\.editMode, .constant(.active))  // Turns on edit/selection mode
        .onChange(of: selectedFruits) { newSelection in  // Prints selection changes
            print("Selected Fruits IDs: \(newSelection)")  // Shows updated picks
            print(selectedFruits)
        }
    }

    private func deleteItems(at offsets: IndexSet) {
        fruits.remove(atOffsets: offsets)  // Updates 'fruits' array
        print("Fruits after delete: \(fruits.map { $0.name })")  // Prints updated fruits
    }
}

#Preview {
    ExampleListView()
}
