import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var email: String = ""
    @State var dob: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                HStack{
                    Text("User name:")
                    TextField("",text: $name)
                }
                HStack{
                    Text("Email address:")
                    TextField("",text: $email)
                }
                HStack{
                    Text("Date of birth:")
                    TextField("",text: $dob)
                }
            }
        }
    }
}

@main
struct Tows: App {
  
  init() {
    DispatchQueue.main.async {
      NSApp.setActivationPolicy(.regular)
      NSApp.activate(ignoringOtherApps: true)
      NSApp.windows.first?.makeKeyAndOrderFront(nil)
    }
  }
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .frame(minWidth: 640, minHeight: 320)
    }
    .windowStyle(HiddenTitleBarWindowStyle())
  }
}
