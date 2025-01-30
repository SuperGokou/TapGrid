//
//  GridView.swift
//  NumberGrid
//
//  Created by Ming Xia on 3/5/22.
//

import SwiftUI

struct GridView: View {
    
    @State var nums = [[0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
                [0,0,0,0,0,0,0,0,0],
    ]
    
    var body: some View {
                    
            GeometryReader{ geometryReader in
                
                let width = min(geometryReader.size.width-10, geometryReader.size.height-10)
                let height = width
                let space = width/9
                
        
                Path {path in
                    for i in 0...9 {
                        let offset = CGFloat(i) * space + 5
                        path.move(to: CGPoint(x: offset, y: 4))
                        path.addLine(to: CGPoint(x: offset, y: height+6))
                    }
                    
                    for i in 0...9 {
                        let offset = CGFloat(i) * space + 5
                        path.move(to: CGPoint(x: 4, y: offset))
                        path.addLine(to: CGPoint(x: width+6, y: offset))
                    }
                }.stroke(lineWidth: 3)
                
                ForEach(0..<9){i in
                    let offsetx = CGFloat(i) * space + 5
                    ForEach(0..<9){j in
                        let offsety = CGFloat(j) * space + 5
                        
                        Button(String(nums[i][j])){
                            nums[i][j] = nums[i][j] + 1
                            if (nums[i][j] > 9){
                                nums[i][j] = 0
                            }
                        }
                            .position(x: offsety + space/2, y: offsetx + space/2)
                            .font(.system(size: space))
                            .foregroundColor(.black)
                    }
                }
            }.aspectRatio(contentMode: .fit)
            .padding()
    }

}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            GridView()
                .previewInterfaceOrientation(.portrait)

        }
    }
}
