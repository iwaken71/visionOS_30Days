import SwiftUI
import RealityKit

struct ImmersiveView: View {

    @State var model = Day10ViewModel()

    var body: some View {
        RealityView { content in
            content.add(model.setupContentEntity())
        }
        .onTapGesture {
            model.toggleSotred()
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
