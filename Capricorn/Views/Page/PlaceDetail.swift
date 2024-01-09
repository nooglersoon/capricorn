import SwiftUI
import MapKit

struct PlaceDetail: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -6.89148, longitude: 107.6106591), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    var body: some View {
        ZStack{
            // Add background image
            GeometryReader(content: { geometry in
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
                            ZStack(alignment: .topTrailing){
                                Map(coordinateRegion: $region)
                                    .frame(width: geometry.size.width - 32, height: 120)
                                    .clipShape(RoundedRectangle(cornerRadius: 16))
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                    RoundedRectangle(cornerRadius: 8)
                                        .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .overlay {
                                            Image(systemName: "location.fill")
                                                .foregroundStyle(.white)
                                                .font(.caption)
                                        }
                                })
                                .buttonStyle(.plain)
                                .padding()
                            }
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
            })
        }
        .navigationTitle("ITB")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    PlaceDetail()
}
