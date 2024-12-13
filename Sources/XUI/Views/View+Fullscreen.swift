import SwiftUI

extension View {

    public func fullScreenCover<Model, Content: View>(
        model: Binding<Model?>,
        onDismiss: (() -> Void)? = nil,
        @ViewBuilder content: @escaping (Model) -> Content
    ) -> some View {
        
        fullScreenCover(item: model.objectIdentifiable(),
                        onDismiss: onDismiss) { _ in
            model.wrappedValue.map(content)
        }
    }

}
