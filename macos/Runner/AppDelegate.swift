import Cocoa
import FlutterMacOS

@NSApplicationMain
class AppDelegate: FlutterAppDelegate {
  override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
    return true
  }

  // TODO on Release: comment all lines above, uncomment all below
  // var statusBar: StatusBarController?
  // var popover = NSPopover.init()
  // override init() {
  //     popover.behavior = NSPopover.Behavior.transient //to make the popover hide when the user clicks outside of it
  // }
  // override func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
  //     return false
  // }
  // override func applicationDidFinishLaunching(_ aNotification: Notification) {
  //     let controller: FlutterViewController =
  //     mainFlutterWindow?.contentViewController as! FlutterViewController
  //     popover.contentSize = NSSize(width: 320, height: 510) //change this to your desired size
  //     popover.contentViewController = controller //set the content view controller for the popover to flutter view controller
  //     statusBar = StatusBarController.init(popover)
  //     guard let window = mainFlutterWindow else {
  //         print("mainFlutterWindow is nil")
  //         return
  //     }
  //     window.close() //close the default flutter window
  //     super.applicationDidFinishLaunching(aNotification)
  // }
}
