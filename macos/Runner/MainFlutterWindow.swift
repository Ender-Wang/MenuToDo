import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {
  override func awakeFromNib() {
    let flutterViewController = FlutterViewController()
    // Set window size
    let windowFrame = NSRect(x: 0, y: 0, width: 320, height: 510)
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    // Make the window non-resizable
    self.styleMask.remove(.resizable)

    // // Set the transparency of app window, disclaimer: this makes everything transparent, not just the bg
    // self.isOpaque = false
    // self.backgroundColor = NSColor.clear
    // self.alphaValue = 0.5

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()

    // TODO on Release: comment all lines above, uncomment all below
    // let flutterViewController = FlutterViewController()
    // let windowFrame = self.frame
    // self.contentViewController = flutterViewController
    // self.setFrame(windowFrame, display: true)

    // RegisterGeneratedPlugins(registry: flutterViewController)

    // super.awakeFromNib()
  }
}
