//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI

struct ContentView: View {
    
    @State private var draggedFruit: String?
    @State private var fruits: [String] = ["APPLE", "GRAPES", "BANANA", "WATERMELON", "PEACH", "KIWI", "DRAGON FRUIT"]
    
    var body: some View {
        ScrollView(showsIndicators: false, content: {
            VStack(spacing: 10, content: {
                Spacer()
                    .frame(height: 40)
                
                ForEach(fruits, id: \.self) { fruit in
                    FruitItemView(title: fruit)
                        .onDrag({
                            self.draggedFruit = fruit
                            return NSItemProvider()
                        })
                        .onDrop(of: [.text], delegate: DropViewDelegate(destinationItem: fruit, fruits: $fruits, draggedItem: $draggedFruit))
                }
                
                Spacer()
            })
            .padding(.horizontal, 20)
        })
        .ignoresSafeArea()
        .background(.black)
    }
}

#Preview {
    ContentView()
}
