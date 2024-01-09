import SwiftUI

enum PlaceSection {
    case map
    case poi
    case weather
    case about
    
    var title: String {
        switch self {
        case .map:
            "Map"
        case .poi:
            "Point of Interests"
        case .weather:
            "Weather status"
        case .about:
            "About"
        }
    }
    
}

struct PlaceDetailSectionView<Content: View>: View {
    let section: PlaceSection
    @ViewBuilder let content: Content
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            HStack(alignment: .center){
                Text(section.title)
                    .font(.title2)
                    .bold()
                Spacer()
                if section == .poi {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Text("Show all")
                    })
                }
            }
            content
        }
    }
}
