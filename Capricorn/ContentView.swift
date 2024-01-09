import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            GeometryReader(content: { geometry in
                ScrollView{
                    HomeSection(title: "Nearby") {
                        HomePlaceCell()
                        HomePlaceCell()
                        HomePlaceCell()
                        HomePlaceCell()
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            })
            .padding(16)
            .navigationTitle("Lens")
        }
    }
}

#Preview {
    ContentView()
}
