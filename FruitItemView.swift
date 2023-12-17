//
// Created By: Mobile Apps Academy
// Subscribe : https://www.youtube.com/@MobileAppsAcademy?sub_confirmation=1
// Medium Blob : https://medium.com/@mobileappsacademy
// LinkedIn : https://www.linkedin.com/company/mobile-apps-academy
// Twitter : https://twitter.com/MobileAppsAcdmy
// Lisence : https://github.com/Mobile-Apps-Academy/MobileAppsAcademyLicense/blob/main/LICENSE.txt
//

import SwiftUI

struct FruitItemView: View {
    
    var title: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(title)
            Spacer()
        }
        .padding(.vertical, 40)
        .background(.yellow)
        .cornerRadius(20)
    }
}

#Preview {
    FruitItemView(title: "APPLE")
}
