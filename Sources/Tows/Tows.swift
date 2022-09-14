import SwiftUI

@main
struct HelloWorld: App {
  
  init() {
    DispatchQueue.main.async {
      NSApp.setActivationPolicy(.regular)
      NSApp.activate(ignoringOtherApps: true)
      NSApp.windows.first?.makeKeyAndOrderFront(nil)
    }    
  }
  
  var body: some Scene {
    WindowGroup { 
      VStack { 
          Text("Hello World!").padding()
          Text("Enter name:").padding()
      }      
    }
  }
}
