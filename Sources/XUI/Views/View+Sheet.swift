//
//  View+Sheet.swift
//  XUI
//
//  Created by Paul Kraft on 01.03.21.
//  Copyright © 2021 QuickBird Studios. All rights reserved.
//

extension View {

    public func sheet<Model, Content: View>(
        model: Binding<Model?>,
        onDismiss: (() -> Void)? = nil,
        @ViewBuilder content: @escaping (Model) -> Content
    ) -> some View {
        
        sheet(item: model.objectIdentifiable(),
              onDismiss: onDismiss) { _ in
            model.wrappedValue.map(content)
        }
    }

}
