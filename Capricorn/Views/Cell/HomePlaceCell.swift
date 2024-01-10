import SwiftUI

struct HomePlaceCell: View {
    var body: some View {
        ZStack(alignment: .leading){
            RoundedRectangle(cornerRadius: 16)
            HStack {
                VStack(alignment: .leading, spacing: 4){
                    Text("Institut Teknologi Bandung")
                        .font(.headline)
                    Text("Bandung, Jawa Barat")
                        .font(.callout)
                    Text("23 KM")
                        .font(.caption)
                }
                .lineLimit(1)
                .foregroundStyle(.background)
                Spacer()
                Image(systemName: "chevron.right")
                    .foregroundStyle(.background)
                    .padding(.horizontal, 4)
            }
            .padding(.horizontal, 24)
            .padding(.vertical, 18)
        }
    }
}

#Preview {
    HomePlaceCell()
        .padding()
        .frame(height: 120)
}
