import SwiftUI
import MapKit

struct PlaceDetail: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: -6.89148, longitude: 107.6106591), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    
    let data = (1...6).map { $0 }
    
    var body: some View {
        NavigationStack{
            GeometryReader(content: { geometry in
                ScrollView {
                    VStack(alignment: .leading, spacing: 8) {
                        ZStack(alignment: .bottomLeading){
                            Image("photo")
                                .resizable()
                                .frame(height: 240)
                                .mask(LinearGradient(gradient: Gradient(colors: [
                                    .white, .white, .clear]), startPoint: .top, endPoint: .bottom))
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
                            .foregroundStyle(.foreground)
                            .padding(16)
                        }
                        VStack(spacing: 32) {
                            PlaceDetailSectionView(section: .weather) {
                                HStack{
                                    RoundedRectangle(cornerRadius: 16)
                                        .foregroundStyle(.yellow)
                                        .frame(width: 128, height: 128, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        .overlay {
                                            VStack(spacing: 8){
                                                Image(systemName: "sun.max")
                                                    .font(.largeTitle)
                                                    .foregroundStyle(.background)
                                                VStack(spacing: 2){
                                                    Text("Sunny")
                                                        .font(.headline)
                                                    Text("28 °C")
                                                        .font(.callout)
                                                }
                                                .foregroundStyle(.background)
                                            }
                                        }
                                    VStack(spacing: 16){
                                        RoundedRectangle(cornerRadius: 8)
                                            .overlay {
                                                Text("It's great time to \ntake photo")
                                                    .foregroundStyle(.background)
                                                    .font(.subheadline)
                                                    .bold()
                                                    .lineLimit(2)
                                                    .multilineTextAlignment(.center)
                                            }
                                        HStack(spacing: 32){
                                            VStack(spacing: 4){
                                                Image(systemName: "cloud.rain")
                                                    .font(.title3)
                                                Text("Today")
                                                    .font(.caption)
                                            }
                                            .foregroundStyle(.foreground)
                                            VStack(spacing: 4){
                                                Image(systemName: "cloud.rain")
                                                    .font(.title3)
                                                Text("02 Jan")
                                                    .font(.caption)
                                            }
                                            .foregroundStyle(.secondary)
                                            VStack(spacing: 4){
                                                Image(systemName: "cloud.rain")
                                                    .font(.title3)
                                                Text("03 Jan")
                                                    .font(.caption)
                                            }
                                            .foregroundStyle(.secondary)
                                        }
                                    }
                                }
                            }
                            PlaceDetailSectionView(section: .map) {
                                ZStack(alignment: .topTrailing){
                                    Map(coordinateRegion: $region)
                                        .frame(height: 120)
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        RoundedRectangle(cornerRadius: 8)
                                            .frame(width: 32, height: 32, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .overlay {
                                                Image(systemName: "location.fill")
                                                    .foregroundStyle(.background)
                                                    .font(.caption)
                                            }
                                            .background(.background)
                                    })
                                    .buttonStyle(.plain)
                                    .padding()
                                }
                            }
                            PlaceDetailSectionView(section: .poi) {
                                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))]) {
                                    ForEach(data, id: \.self) { index in
                                        NavigationLink {
                                            PoIDetail()
                                        } label: {
                                            PlaceDetailPoICell(index: index)
                                        }

                                    }
                                }
                            }
                            PlaceDetailSectionView(section: .about) {
                                Text("Institut Teknologi Bandung is the first technical university in Indonesia that was established on March 2, 1959 in West Java, with a mission to serve science and technology to develop the nation. Born in an atmosphere full of dynamics based on the spirit of the struggle for the Proclamation of Independence, ITB is here to optimize the development of an advanced and dignified nation.")
                                    .font(.caption)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .padding(16)
                    }
                }
                .scrollIndicators(.hidden)
                .frame(width: geometry.size.width, height: geometry.size.height, alignment: .leading)
            })
        }
        .ignoresSafeArea(.all, edges: .top)
        .navigationTitle("ITB")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            UIScrollView.appearance().bounces = false
        })
    }
}

#Preview {
    PlaceDetail()
}
