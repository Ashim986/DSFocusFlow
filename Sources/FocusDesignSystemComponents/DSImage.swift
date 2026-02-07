import SwiftUI
import FocusDesignSystemCore

public enum DSImageTint: Sendable {
    case primary
    case secondary
    case accent
    case success
    case warning
    case danger
    case custom(Color)
}

public struct DSImage: View {
    private let image: Image
    private let tint: DSImageTint?

    @Environment(\.dsTheme) private var theme

    public init(_ name: String, tint: DSImageTint? = nil) {
        self.image = Image(name)
        self.tint = tint
    }

    public init(systemName: String, tint: DSImageTint? = nil) {
        self.image = Image(systemName: systemName)
        self.tint = tint
    }

    #if os(macOS)
    public init(nsImage: NSImage, tint: DSImageTint? = nil) {
        self.image = Image(nsImage: nsImage)
        self.tint = tint
    }
    #endif

    #if os(iOS)
    public init(uiImage: UIImage, tint: DSImageTint? = nil) {
        self.image = Image(uiImage: uiImage)
        self.tint = tint
    }
    #endif

    public var body: some View {
        let resolvedTint = tint?.resolve(theme: theme)
        image
            .renderingMode(resolvedTint == nil ? .original : .template)
            .foregroundColor(resolvedTint)
    }
}

private extension DSImageTint {
    func resolve(theme: DSTheme) -> Color {
        switch self {
        case .primary:
            return theme.colors.primary
        case .secondary:
            return theme.colors.secondary
        case .accent:
            return theme.colors.accent
        case .success:
            return theme.colors.success
        case .warning:
            return theme.colors.warning
        case .danger:
            return theme.colors.danger
        case .custom(let color):
            return color
        }
    }
}
