import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                // 상단 앱바 바로 아래에 위치할 StoryView
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1..<10) { _ in
                            StoryView()
                        }
                    }
                }
                
                TabView {
                    MainView()
                        .tabItem {
                            Label("", systemImage: "house")
                        }
                    SearchView()
                        .tabItem {
                            Label("", systemImage: "magnifyingglass")
                        }
                    ShotsView()
                        .tabItem {
                            Label("", systemImage: "film")
                        }
                    ShopView()
                        .tabItem {
                            Label("", systemImage: "bag")
                        }
                    MyPageView()
                        .tabItem {
                            Label("", systemImage: "person.circle")
                        }
                }
                .background(Color.white)
            }
            .accentColor(Color.black)
            .navigationBarItems(
                leading:
                    Image("instagram_logo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 110, height: 110),
                trailing:
                    HStack(spacing: 15) {
                        Button(action: {
                        }) {
                            Image(systemName: "paperplane")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.black)
                        }
                        Button(action: {
                        }) {
                            Image(systemName: "heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                .foregroundColor(Color.black)
                        }
                    }
            )
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

