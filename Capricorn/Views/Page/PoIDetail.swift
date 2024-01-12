import SwiftUI

struct PoIDetail: View {
    var body: some View {
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
                                Text("Plaza Widya")
                                    .font(.title2)
                                    .bold()
                            })
                        .foregroundStyle(.foreground)
                        .padding(16)
                        .padding(.bottom, 16)
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
        .ignoresSafeArea(.all, edges: .top)
        .navigationBarTitleDisplayMode(.inline)
        .onAppear(perform: {
            UIScrollView.appearance().bounces = false
        })
    }
}

#Preview {
    PoIDetail()
}
