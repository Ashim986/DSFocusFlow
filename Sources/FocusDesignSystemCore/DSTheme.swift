import SwiftUI

public enum DSThemeKind: String, Sendable {
    case light
    case dark
}

public struct DSColors: Sendable {
    public let background: Color
    public let surface: Color
    public let surfaceElevated: Color
    public let primary: Color
    public let secondary: Color
    public let accent: Color
    public let textPrimary: Color
    public let textSecondary: Color
    public let border: Color
    public let success: Color
    public let warning: Color
    public let danger: Color

    public init(
        background: Color,
        surface: Color,
        surfaceElevated: Color,
        primary: Color,
        secondary: Color,
        accent: Color,
        textPrimary: Color,
        textSecondary: Color,
        border: Color,
        success: Color,
        warning: Color,
        danger: Color
    ) {
        self.background = background
        self.surface = surface
        self.surfaceElevated = surfaceElevated
        self.primary = primary
        self.secondary = secondary
        self.accent = accent
        self.textPrimary = textPrimary
        self.textSecondary = textSecondary
        self.border = border
        self.success = success
        self.warning = warning
        self.danger = danger
    }
}

public struct DSTypography: Sendable {
    public let title: Font
    public let subtitle: Font
    public let body: Font
    public let caption: Font
    public let mono: Font

    public init(
        title: Font,
        subtitle: Font,
        body: Font,
        caption: Font,
        mono: Font
    ) {
        self.title = title
        self.subtitle = subtitle
        self.body = body
        self.caption = caption
        self.mono = mono
    }
}

public struct DSSpacing: Sendable {
    public let xs: CGFloat
    public let sm: CGFloat
    public let md: CGFloat
    public let lg: CGFloat
    public let xl: CGFloat

    public init(xs: CGFloat, sm: CGFloat, md: CGFloat, lg: CGFloat, xl: CGFloat) {
        self.xs = xs
        self.sm = sm
        self.md = md
        self.lg = lg
        self.xl = xl
    }
}

public struct DSRadii: Sendable {
    public let sm: CGFloat
    public let md: CGFloat
    public let lg: CGFloat
    public let pill: CGFloat

    public init(sm: CGFloat, md: CGFloat, lg: CGFloat, pill: CGFloat) {
        self.sm = sm
        self.md = md
        self.lg = lg
        self.pill = pill
    }
}

public struct DSShadow: Sendable {
    public let color: Color
    public let radius: CGFloat
    public let x: CGFloat
    public let y: CGFloat

    public init(color: Color, radius: CGFloat, x: CGFloat, y: CGFloat) {
        self.color = color
        self.radius = radius
        self.x = x
        self.y = y
    }
}

public struct DSTheme: Sendable {
    public let kind: DSThemeKind
    public let colors: DSColors
    public let typography: DSTypography
    public let spacing: DSSpacing
    public let radii: DSRadii
    public let shadow: DSShadow

    public init(
        kind: DSThemeKind,
        colors: DSColors,
        typography: DSTypography,
        spacing: DSSpacing,
        radii: DSRadii,
        shadow: DSShadow
    ) {
        self.kind = kind
        self.colors = colors
        self.typography = typography
        self.spacing = spacing
        self.radii = radii
        self.shadow = shadow
    }
}

public extension DSTheme {
    static let light = DSTheme(
        kind: .light,
        colors: DSColors(
            background: Color(red: 0.97, green: 0.97, blue: 0.98),
            surface: Color.white,
            surfaceElevated: Color.white,
            primary: Color(red: 0.15, green: 0.39, blue: 0.92),
            secondary: Color(red: 0.28, green: 0.33, blue: 0.41),
            accent: Color(red: 0.08, green: 0.72, blue: 0.66),
            textPrimary: Color(red: 0.06, green: 0.09, blue: 0.16),
            textSecondary: Color(red: 0.28, green: 0.33, blue: 0.41),
            border: Color(red: 0.89, green: 0.91, blue: 0.94),
            success: Color(red: 0.09, green: 0.64, blue: 0.29),
            warning: Color(red: 0.96, green: 0.62, blue: 0.04),
            danger: Color(red: 0.86, green: 0.15, blue: 0.15)
        ),
        typography: DSTypography(
            title: .system(size: 22, weight: .bold),
            subtitle: .system(size: 15, weight: .semibold),
            body: .system(size: 13, weight: .regular),
            caption: .system(size: 11, weight: .regular),
            mono: .system(size: 12, weight: .regular, design: .monospaced)
        ),
        spacing: DSSpacing(xs: 4, sm: 8, md: 12, lg: 16, xl: 24),
        radii: DSRadii(sm: 6, md: 10, lg: 16, pill: 999),
        shadow: DSShadow(
            color: Color.black.opacity(0.12),
            radius: 8,
            x: 0,
            y: 3
        )
    )

    static let dark = DSTheme(
        kind: .dark,
        colors: DSColors(
            background: Color(red: 0.04, green: 0.07, blue: 0.12),
            surface: Color(red: 0.07, green: 0.1, blue: 0.16),
            surfaceElevated: Color(red: 0.12, green: 0.16, blue: 0.23),
            primary: Color(red: 0.38, green: 0.65, blue: 0.98),
            secondary: Color(red: 0.58, green: 0.64, blue: 0.73),
            accent: Color(red: 0.18, green: 0.84, blue: 0.75),
            textPrimary: Color(red: 0.97, green: 0.98, blue: 0.99),
            textSecondary: Color(red: 0.78, green: 0.82, blue: 0.88),
            border: Color(red: 0.16, green: 0.2, blue: 0.27),
            success: Color(red: 0.29, green: 0.87, blue: 0.5),
            warning: Color(red: 0.98, green: 0.75, blue: 0.21),
            danger: Color(red: 0.97, green: 0.44, blue: 0.44)
        ),
        typography: DSTypography(
            title: .system(size: 22, weight: .bold),
            subtitle: .system(size: 15, weight: .semibold),
            body: .system(size: 13, weight: .regular),
            caption: .system(size: 11, weight: .regular),
            mono: .system(size: 12, weight: .regular, design: .monospaced)
        ),
        spacing: DSSpacing(xs: 4, sm: 8, md: 12, lg: 16, xl: 24),
        radii: DSRadii(sm: 6, md: 10, lg: 16, pill: 999),
        shadow: DSShadow(
            color: Color.black.opacity(0.45),
            radius: 10,
            x: 0,
            y: 4
        )
    )
}

private struct DSThemeKey: EnvironmentKey {
    static let defaultValue = DSTheme.light
}

public extension EnvironmentValues {
    var dsTheme: DSTheme {
        get { self[DSThemeKey.self] }
        set { self[DSThemeKey.self] = newValue }
    }
}

public struct DSThemeProvider<Content: View>: View {
    private let theme: DSTheme
    private let content: Content

    public init(theme: DSTheme, @ViewBuilder content: () -> Content) {
        self.theme = theme
        self.content = content()
    }

    public var body: some View {
        content.environment(\.dsTheme, theme)
    }
}
