

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
//import AppKit
#endif

struct ScrollBuilder {
    var text = "Hello, World!"
    
    #if !os(macOS)
    static func attachPinchScrollView(in attachingSuperView: UIView, scrollView: UIScrollView, contentView: UIView ,maxWidth: CGFloat = 4000, useDebugColor: Bool = false) {
        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(contentView)
        if #available(iOS 11.0, *) {
            contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
            contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
            contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
            contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
            
            contentView.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor).isActive = true
            contentView.widthAnchor.constraint(equalToConstant: maxWidth).isActive = true
        }
        
        
        attachingSuperView.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        let padding: CGFloat = 0
        if #available(iOS 11.0, *) {
            scrollView.leadingAnchor.constraint(equalTo: attachingSuperView.leadingAnchor, constant: padding).isActive = true
            scrollView.topAnchor.constraint(equalTo: attachingSuperView.topAnchor, constant: padding).isActive = true
            scrollView.trailingAnchor.constraint(equalTo: attachingSuperView.trailingAnchor, constant: -padding).isActive = true
            scrollView.bottomAnchor.constraint(equalTo: attachingSuperView.bottomAnchor, constant: -padding).isActive = true
        }
        if useDebugColor {
            contentView.backgroundColor = UIColor.green.alpha(0.2)
            scrollView.backgroundColor = UIColor.blue.withAlphaComponent(0.1)
        }
    }
    #endif
}

