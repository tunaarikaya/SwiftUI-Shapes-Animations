import SwiftUI

struct ContentView: View {
    @State var firstCirclePercentage: Double = 50
    @State var secondCirclePercentage: Double = 75
    @State var thirdCirclePercentage: Double = 60
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.systemOrange // Arka plan rengini buradan değiştirebilirsiniz
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.black.opacity(0.7) // Arka plan rengini buradan değiştirebilirsiniz
                    .ignoresSafeArea()
                
                Circular(lineWidth: 20, backgroundColor: Color.green.opacity(0.5), foregroundColor: Color.pink.opacity(0.8), percentage: firstCirclePercentage)
                    .frame(width: 300, height: 300)
                    .onTapGesture {
                        if self.firstCirclePercentage == 0 {
                            self.firstCirclePercentage = 50
                        } else {
                            self.firstCirclePercentage = 0
                        }
                    }
                
                Circular(lineWidth: 20, backgroundColor: Color.orange.opacity(0.8), foregroundColor: Color.red.opacity(0.8), percentage: secondCirclePercentage)
                    .frame(width: 250, height: 250)
                    .onTapGesture {
                        if self.secondCirclePercentage == 0 {
                            self.secondCirclePercentage = 75
                        } else {
                            self.secondCirclePercentage = 0
                        }
                    }
                
                Circular(lineWidth: 20, backgroundColor: Color.orange.opacity(0.8), foregroundColor: Color.blue.opacity(0.8), percentage: thirdCirclePercentage)
                    .frame(width: 175, height: 175)
                    .onTapGesture {
                        if self.thirdCirclePercentage == 0 {
                            self.thirdCirclePercentage = 60
                        } else {
                            self.thirdCirclePercentage = 0
                        }
                    }
            }
            .navigationTitle("Habit Tracker")
            
            }
        }
    }


#Preview {
    ContentView()
}
