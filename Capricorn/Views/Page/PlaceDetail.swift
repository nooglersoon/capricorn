import SwiftUI

struct PlaceDetail: View {
    var body: some View {
        GeometryReader(content: { geometry in
            ZStack{
                // Add background image
                ScrollView {
                    VStack(alignment: .leading, spacing: 32) {
                        VStack(
                            alignment: .leading,
                            spacing: 8,
                            content: {
                            Text("Institut Teknologi Bandung")
                                .font(.headline)
                                .bold()
                            Text("Bandung, Jawa Barat")
                                .font(.subheadline)
                        })
                        PlaceDetailSectionView(section: .weather) {
                            ZStack(alignment: .leading, content: {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(.black)
                                    .opacity(0.75)
                                VStack{
                                    Text("14C Clear")
                                }
                                .foregroundStyle(.white)
                                .padding()
                            })
                        }
                        PlaceDetailSectionView(section: .map) {
                            ZStack(alignment: .leading, content: {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(.black)
                                    .opacity(0.75)
                                VStack{
                                    Text("14C Clear")
                                }
                                .foregroundStyle(.white)
                                .padding()
                            })
                        }
                        PlaceDetailSectionView(section: .poi) {
                            ZStack(alignment: .leading, content: {
                                RoundedRectangle(cornerRadius: 16)
                                    .fill(.black)
                                    .opacity(0.75)
                                VStack{
                                    Text("14C Clear")
                                }
                                .foregroundStyle(.white)
                                .padding()
                            })
                        }
                        PlaceDetailSectionView(section: .about) {
                            Text("Institut Teknologi Bandung is the first technical university in Indonesia that was established on March 2, 1959 in West Java, with a mission to serve science and technology to develop the nation. Born in an atmosphere full of dynamics based on the spirit of the struggle for the Proclamation of Independence, ITB is here to optimize the development of an advanced and dignified nation.")
                                .font(.caption)
                                .multilineTextAlignment(.leading)
                        }
                    }
                }
                .padding(16)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            }
            .navigationTitle("ITB")
            .navigationBarTitleDisplayMode(.inline)
        })
    }
}

#Preview {
    PlaceDetail()
}
