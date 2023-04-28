//
//  AdviceView.swift
//  AdviceList
//
//  Created by Samantha Stewart on 2023-04-21.
//

import SwiftUI


struct AdviceView: View {
    
    
    
    @State var adviceOpacity = 0.0
    @State var currentAdvice: Advice?
    var body: some View {
        NavigationView{
            VStack{
                
                Spacer()
                if let currentAdvice = currentAdvice{
                    
                    
                    
                    Text(currentAdvice.advice)
                        .font(.system(size: 40))
                        .padding(50)
                        .opacity(adviceOpacity)
                    Spacer()
                    
                    
                    
                        .disabled(adviceOpacity == 0.0 ? true : false)
                        .buttonStyle(.borderedProminent)
                    
                    
                }else {
                    ProgressView()
                    Spacer()
                }
                Button(action: {
                    // Reset the interface
                    currentAdvice = nil
                    
                    Task {
                        // Get another joke
                        withAnimation {
                            adviceOpacity = 1
                        }
                        currentAdvice = await NetworkService.fetch()
                    }
                }, label: {
                    Text("Generate Some Advice")
                        .font(.headline)
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                
                
                
                
                
                .navigationTitle("Advice")
                .task{
                    currentAdvice = await NetworkService.fetch()
                }
                
            }
        }
    }
}
    struct AdviceView_Previews: PreviewProvider {
        static var previews: some View {
            AdviceView()
            
        }
    }
    
