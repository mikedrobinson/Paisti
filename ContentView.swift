import SwiftUI

struct ContentView: View {
    @State private var isCooked = false

    var body: some View {
        VStack {
            Image(isCooked ? "cooked_chicken" : "raw_chicken")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .transition(.opacity)

            Button(action: {
                withAnimation {
                    isCooked.toggle()
                }
            }) {
                Text("paisti")
                    .font(.headline)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}