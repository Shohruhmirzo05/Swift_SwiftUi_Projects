import SwiftUI

struct ConfirmationDialogExample: View {
    @State private var items: [String] = ["Item 11", "Item 22", "Item 33"]
    @State private var showConfirmationDialog = false
    @State private var itemToDelete: String?
    @State var showAction: Bool = false

    
    // NOT REALLY UNDERSTAND THIS LESSSON
    // NOT REALLY UNDERSTAND THIS LESSSON
    // NOT REALLY UNDERSTAND THIS LESSSON

    
    var body: some View {
        NavigationStack {
            List {
                Section {
                    ForEach(items, id: \.self) { item in
                        Text(item)
                    }.onDelete(perform: { indexSet in
                            
                    })
                } header: {
                    Text("Header of list")
                }
                Button {
                    showAction.toggle()
                } label: {
                    Text("press to open")
                }
                .confirmationDialog(Text("ERROR"), isPresented: $showAction, titleVisibility: .visible) {
                    Text("ex")
                }

            }
        }
    }
}

#Preview {
    ConfirmationDialogExample()
}
