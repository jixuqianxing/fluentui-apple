// swiftlint:disable all
/// Autogenerated file
import UIKit

/// Entry point for the app stylesheet
@objc extension FluentUIStyle {

	//MARK: - MSFListTokens
	@objc(MSFListTokensAppearanceProxy) @objcMembers open class MSFListTokensAppearanceProxy: NSObject {
		public let mainProxy: () -> FluentUIStyle
		public init(proxy: @escaping () -> FluentUIStyle) {
			self.mainProxy = proxy
		}

		//MARK: - backgroundColor
		public var _backgroundColor: backgroundColorAppearanceProxy?
		open func backgroundColorStyle() -> backgroundColorAppearanceProxy {
			if let override = _backgroundColor { return override }
				return backgroundColorAppearanceProxy(proxy: mainProxy)
			}
		public var backgroundColor: backgroundColorAppearanceProxy {
			get { return self.backgroundColorStyle() }
			set { _backgroundColor = newValue }
		}
		@objc(MSFListTokensBackgroundColorAppearanceProxy) @objcMembers open class backgroundColorAppearanceProxy: NSObject {
			public let mainProxy: () -> FluentUIStyle
			public init(proxy: @escaping () -> FluentUIStyle) {
				self.mainProxy = proxy
			}

			//MARK: pressed 
			public var _pressed: UIColor?
			open func pressedProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> UIColor {
				if let override = _pressed { return override }
					return mainProxy().Colors.Background.neutral5Property(traitCollection)
				}
			public var pressed: UIColor {
				get { return self.pressedProperty() }
				set { _pressed = newValue }
			}

			//MARK: rest 
			public var _rest: UIColor?
			open func restProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> UIColor {
				if let override = _rest { return override }
					return mainProxy().Colors.Background.neutral1Property(traitCollection)
				}
			public var rest: UIColor {
				get { return self.restProperty() }
				set { _rest = newValue }
			}
		}


		//MARK: borderColor 
		public var _borderColor: UIColor?
		open func borderColorProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> UIColor {
			if let override = _borderColor { return override }
			return mainProxy().Colors.Stroke.neutral1Property(traitCollection)
			}
		public var borderColor: UIColor {
			get { return self.borderColorProperty() }
			set { _borderColor = newValue }
		}

		//MARK: borderSize 
		public var _borderSize: CGFloat?
		open func borderSizeProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> CGFloat {
			if let override = _borderSize { return override }
			return mainProxy().Border.size.thinProperty(traitCollection)
			}
		public var borderSize: CGFloat {
			get { return self.borderSizeProperty() }
			set { _borderSize = newValue }
		}

		//MARK: horizontalCellPadding 
		public var _horizontalCellPadding: CGFloat?
		open func horizontalCellPaddingProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> CGFloat {
			if let override = _horizontalCellPadding { return override }
			return mainProxy().Spacing.mediumProperty(traitCollection)
			}
		public var horizontalCellPadding: CGFloat {
			get { return self.horizontalCellPaddingProperty() }
			set { _horizontalCellPadding = newValue }
		}

		//MARK: sublabelColor 
		public var _sublabelColor: UIColor?
		open func sublabelColorProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> UIColor {
			if let override = _sublabelColor { return override }
			return mainProxy().Colors.Foreground.neutral3Property(traitCollection)
			}
		public var sublabelColor: UIColor {
			get { return self.sublabelColorProperty() }
			set { _sublabelColor = newValue }
		}

		//MARK: sublabelFont 
		public var _sublabelFont: UIFont?
		open func sublabelFontProperty(_ traitCollection: UITraitCollection? = UIScreen.main.traitCollection) -> UIFont {
			if let override = _sublabelFont { return override }
			return mainProxy().Typography.caption1Property(traitCollection)
			}
		public var sublabelFont: UIFont {
			get { return self.sublabelFontProperty() }
			set { _sublabelFont = newValue }
		}
	}

}
fileprivate var __AppearanceProxyHandle: UInt8 = 0
fileprivate var __ThemeAwareHandle: UInt8 = 0
fileprivate var __ObservingDidChangeThemeHandle: UInt8 = 0

extension MSFListTokens: AppearaceProxyComponent {

	public typealias AppearanceProxyType = FluentUIStyle.MSFListTokensAppearanceProxy
	public var appearanceProxy: AppearanceProxyType {
		get {
			if let proxy = objc_getAssociatedObject(self, &__AppearanceProxyHandle) as? AppearanceProxyType {
				if !themeAware { return proxy }


				return proxy
			}

			return FluentUIThemeManager.stylesheet(FluentUIStyle.shared()).MSFListTokens
		}
		set {
			objc_setAssociatedObject(self, &__AppearanceProxyHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
			didChangeAppearanceProxy()
		}
	}

	public var themeAware: Bool {
		get {
			guard let proxy = objc_getAssociatedObject(self, &__ThemeAwareHandle) as? Bool else { return true }
			return proxy
		}
		set {
			objc_setAssociatedObject(self, &__ThemeAwareHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
			isObservingDidChangeTheme = newValue
		}
	}

	fileprivate var isObservingDidChangeTheme: Bool {
		get {
			guard let observing = objc_getAssociatedObject(self, &__ObservingDidChangeThemeHandle) as? Bool else { return false }
			return observing
		}
		set {
			if newValue == isObservingDidChangeTheme { return }
			if newValue {
				NotificationCenter.default.addObserver(self, selector: #selector(didChangeAppearanceProxy), name: Notification.Name.didChangeTheme, object: nil)
			} else {
				NotificationCenter.default.removeObserver(self, name: Notification.Name.didChangeTheme, object: nil)
			}
			objc_setAssociatedObject(self, &__ObservingDidChangeThemeHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
		}
	}
}
