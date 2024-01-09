import SwiftUI

struct HomeSection<Content: View>: View {
    let title: String
    @ViewBuilder let content: Content
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.title2)
                .bold()
            VStack(spacing: 12, content: {
                content
            })
        }
    }
}
