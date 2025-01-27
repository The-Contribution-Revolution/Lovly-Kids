import Foundation
import SwiftUI

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    
    case Appearance
    case Language
    case Notification
    
    var title: String {
        switch self {
        case .Language:
            return NSLocalizedString("Language", comment: "")
        case .Appearance:
            return NSLocalizedString("Appearance", comment: "")
        case .Notification:
            return NSLocalizedString("Notification", comment: "")
        }
    }
    
    var icon: String {
        switch self {
        case .Language:
            return "globe"
        case .Appearance:
            return "pencil.and.scribble"
        case .Notification:
            return "message.fill"
        }
    }
    
    var destinationView: some View {
        switch self {
        case .Appearance:
            return AnyView(AppearanceView())
        case .Language:
            return AnyView(ChangeLaungeView())
        case .Notification:
            return AnyView(EmptyView())
        }
    }
    
    var backgroundColor: Color {
        switch self {
        case .Appearance:
            Color.green
        case .Language:
            Color.yellow
        case .Notification:
            Color.red
        }
    }
    var id: Int { return self.rawValue }
}
