import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 8) {
            Text("Project Capricorn")
                .font(.title)
                .bold()
            Text("by: eaket studio")
                .font(.caption)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
