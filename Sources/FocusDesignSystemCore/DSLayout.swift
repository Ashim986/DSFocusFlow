import Foundation

/// Cross-platform layout constants for Focus design system.
///
/// Keep this intentionally small and stable, so app code can reference spacing/padding
/// without scattering magic numbers across the UI.
public enum DSLayout {
    public enum Space: CGFloat, Sendable {
        case space2 = 2
        case space4 = 4
        case space8 = 8
        case space12 = 12
        case space16 = 16
    }

    public static func spacing(_ value: Int) -> CGFloat {
        CGFloat(value)
    }

    public static func spacing(_ value: CGFloat) -> CGFloat {
        value
    }

    public static func spacing(_ value: Space) -> CGFloat {
        value.rawValue
    }
}

