//
//  ContentView.swift
//  123
//
//  Created by 07 Zhang on 2020/3/12.
//  Copyright © 2020 07 Zhang. All rights reserved.
//

import SwiftUI


struct zigzag1:Shape{
    //遵從 protocol Shape，定義可重覆使用修改的形狀。
    func path(in rect:CGRect)-> Path{
        Path{ (path) in
            path.move(to:CGPoint(x:rect.width,y:0))
            path.addQuadCurve(to:CGPoint(x: 0, y: rect.height),control:CGPoint(x: rect.width/10, y: rect.height/10))
            path.addQuadCurve(to:CGPoint(x: rect.width, y: 0),control:CGPoint(x: rect.width*17/20, y: rect.height*13/15))
            path.closeSubpath()
            
        }
    }
}

struct zigzag2:Shape{
    //遵從 protocol Shape，定義可重覆使用修改的形狀。
    func path(in rect:CGRect)-> Path{
        Path{ (path) in
            path.move(to:CGPoint(x:rect.width,y:0))
            path.addQuadCurve(to:CGPoint(x: 0, y: rect.height),control:CGPoint(x: rect.width, y: rect.height))
            path.addQuadCurve(to:CGPoint(x: rect.width, y: 0),control:CGPoint(x: rect.width*2, y: rect.height))
            path.closeSubpath()
            
        }
    }
}

struct ContentView: View {
    var body: some View {
        
        ZStack(){
            Image("132")//背景圖與調整
                .resizable()
                .scaledToFill()
                .frame(minWidth:0,maxWidth:.infinity)
                .edgesIgnoringSafeArea(.all)
            
            
            Group{//背景鋸齒
                zigzag1()
                    .fill(Color.black)
                    .frame(width:120,height:740)
                    .shadow(radius: 80)
                    .rotationEffect(.degrees(20))
                zigzag1()
                    .fill(Color.black)
                    .frame(width:77,height:330)
                    .shadow(radius: 80)
                    .rotationEffect(.degrees(20))
                    .offset(x:-100,y:-150)
                zigzag1()
                    .fill(Color.black)
                    .frame(width:90,height:400)
                    .shadow(radius: 80)
                    .rotationEffect(.degrees(20))
                    .offset(x:120,y:140)
                
                zigzag1()
                    .fill(Color.black)
                    .frame(width:80,height:560)
                    .shadow(radius: 80)
                    .rotationEffect(.degrees(-50))
                    .position(x:210,y:390)
                
                zigzag2View()
                zigzag3View()
            }
            Group{//agito主圖
                
                Path(ellipseIn:CGRect(x:94, y: 304, width: 278, height: 270)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877))
                //主底黑色圓形
                
                Path{ (path) in   //上方藍鯊魚頭
                    path.move(to :CGPoint(x: 50, y: 298))//上方箭頭左方第一點
                    path.addCurve(to: CGPoint(x: 369, y:449) ,control1: CGPoint (x:208,y:169),control2: CGPoint (x:400,y:310))
                    //(to: CGPoint(x: 373, y:431))上方箭頭右方第二點
                    path.addLine(to: CGPoint(x: 240, y:304))//中間點
                    path.addQuadCurve(to: CGPoint(x: 50, y:298) ,control: CGPoint (x:170,y:255))
                    path.closeSubpath()
                }.fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877))
                //上方藍鯊魚頭
                
                Path{ (path2) in  //中間白色空白底
                    path2.move(to :CGPoint(x: 372, y: 431))
                    path2.addQuadCurve(to:CGPoint(x: 350, y: 444),control: CGPoint(x: 360, y: 450))
                    path2.addCurve(to:CGPoint(x: 300, y: 395),control1:CGPoint(x: 330, y: 433),control2: CGPoint(x: 340, y: 435))
                    
                    path2.addCurve(to:CGPoint(x: 245, y: 391),control1: CGPoint(x: 290, y: 389),control2:CGPoint(x: 270, y: 380))
                    
                    path2.addQuadCurve(to:CGPoint(x: 181, y: 427),control: CGPoint(x: 194, y: 415))
                    
                    path2.addQuadCurve(to:CGPoint(x: 150, y: 442),control: CGPoint(x: 174, y: 434))
                    
                    path2.addQuadCurve(to:CGPoint(x: 130, y: 443),control: CGPoint(x: 140, y: 445))
                    
                    path2.addQuadCurve(to:CGPoint(x: 93, y: 428),control: CGPoint(x: 101, y: 436))
                    
                    path2.addQuadCurve(to:CGPoint(x: 94, y: 450),control: CGPoint(x:93, y: 440))
                    
                    path2.addQuadCurve(to:CGPoint(x: 135, y: 469),control: CGPoint(x: 110, y: 463))
                    
                    path2.addQuadCurve(to:CGPoint(x: 183, y: 465),control: CGPoint(x: 160, y: 472))
                    
                    path2.addQuadCurve(to:CGPoint(x: 241, y: 450),control: CGPoint(x: 200, y: 460))
                    
                    path2.addQuadCurve(to:CGPoint(x: 286, y: 452),control: CGPoint(x: 260, y: 445))
                    
                    path2.addQuadCurve(to:CGPoint(x: 322, y: 464),control: CGPoint(x: 300, y: 456))
                    
                    path2.addQuadCurve(to:CGPoint(x: 369, y: 469),control: CGPoint(x: 350, y: 476))
                    
                    path2.addQuadCurve(to:CGPoint(x: 372, y: 431),control: CGPoint(x: 373, y: 458))
                    path2.closeSubpath()
                }.fill(Color.white) //中間白色空白底
                Group{  //字體group
                    
                    Group{   //字體Ａ
                        Path(CGRect(x: 181, y: 420, width: 10, height: 50)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877))
                            .rotationEffect(.degrees(-3))
                        
                        Path(CGRect(x: 191, y: 436, width: 10, height: 18)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-3))
                        
                        Path(CGRect(x: 187, y: 414, width: 10, height: 10)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-3))
                        
                        Path(CGRect(x: 193, y: 410, width: 12, height: 53)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-9))
                    }
                    Group{  //字體Ｇ
                        Path(CGRect(x: 211, y: 400, width: 37, height: 10)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-12))
                        
                        Path(CGRect(x: 208, y: 400, width: 14, height: 65)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-10))
                        
                        Path(roundedRect: CGRect(x: 228, y: 416, width: 21, height: 24),cornerRadius: 3).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-2))
                        
                        Path(CGRect(x: 239, y: 430, width: 10, height: 25)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-2))
                    }
                    Group{  //字體Ｉ＋Ｔ
                        Path(CGRect(x: 253, y: 380, width: 13, height: 75)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-2))
                        
                        Path(CGRect(x: 260, y: 397, width: 40, height: 11)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(8))
                        
                        Path(CGRect(x: 276, y: 370, width: 14, height: 80)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(7))
                    }
                    Group{  //字體O
                        Path(CGRect(x: 296, y: 370, width: 14, height: 80)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(11))
                        
                        Path(CGRect(x: 310, y: 401, width: 16, height: 10)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(-0))
                        
                        Path(CGRect(x: 316, y: 395, width: 12, height: 60)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(7))
                        Path(CGRect(x: 296, y: 452, width: 20, height: 10)).fill(Color(hue: 0.683, saturation: 0.925, brightness: 0.877)).rotationEffect(.degrees(0))
                    }
                }
                Path{ (path3) in  //下方白色空白底
                    path3.move(to:CGPoint(x: 112, y: 506))
                    path3.addQuadCurve(to:CGPoint(x: 200, y: 507),control: CGPoint(x: 160, y: 515))
                    
                    path3.addQuadCurve(to:CGPoint(x: 290, y: 488),control: CGPoint(x: 273, y: 482))
                    
                    path3.addQuadCurve(to:CGPoint(x: 343, y: 522),control: CGPoint(x: 313, y: 494))
                    
                    path3.addQuadCurve(to:CGPoint(x: 333, y: 532),control: CGPoint(x: 335, y: 533))
                    
                    path3.addQuadCurve(to:CGPoint(x: 270, y: 502),control: CGPoint(x: 300, y: 506))
                    
                    path3.addQuadCurve(to:CGPoint(x: 240, y: 503),control: CGPoint(x: 254, y: 500))
                    
                    path3.addQuadCurve(to:CGPoint(x: 200, y: 515),control: CGPoint(x: 210, y: 513))
                    
                    path3.addQuadCurve(to:CGPoint(x: 160, y: 524),control: CGPoint(x: 177, y: 522))
                    
                    path3.addQuadCurve(to:CGPoint(x: 121, y: 519),control: CGPoint(x: 140, y: 525))
                    path3.addQuadCurve(to:CGPoint(x: 112, y: 506),control: CGPoint(x: 117, y: 514))
                    path3.closeSubpath()
                }.fill(Color.white) //下方白色空白底
                
                Path{ (path4) in  //上方空白角
                    path4.move(to:CGPoint(x: 116, y: 366))
                    
                    path4.addQuadCurve(to:CGPoint(x: 180, y: 373),control: CGPoint(x: 140, y: 380))
                    
                    path4.addQuadCurve(to:CGPoint(x: 108, y: 379),control: CGPoint(x: 144, y: 400))
                    path4.addQuadCurve(to:CGPoint(x: 116, y: 366),control: CGPoint(x: 112, y: 370))
                    path4.closeSubpath()
                    
                }.fill(Color.white)//上方空白角
                
                Path{ (path5) in  //下方空白角
                    path5.move(to:CGPoint(x: 334, y: 532))
                    path5.addQuadCurve(to:CGPoint(x: 249, y: 530),control: CGPoint(x: 300, y: 519))
                    
                    path5.addQuadCurve(to:CGPoint(x: 295, y: 560),control: CGPoint(x: 295, y: 540))
                    
                    path5.addCurve(to:CGPoint(x: 334, y: 532),control1: CGPoint(x: 300, y: 560),control2:CGPoint(x: 334, y: 535))
                    
                    path5.closeSubpath()
                    
                }.fill(Color.white)//下方空白角
            }
            Group{//文字
                Text("Air-Gear")
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .font(.system(size: 90, weight: .light, design: .serif))
                    .multilineTextAlignment(.center)
                    .padding()
                    .position(x:220,y:755)
                Text("-Agito")
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.68, saturation: 0.995, brightness: 0.987))
                    .font(.system(size: 50, weight: .light, design: .serif))
                    .multilineTextAlignment(.center)
                    .padding()
                    .position(x:200,y:805)
                
                
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct zigzag2View: View {
    var body: some View {
        //Extract Subview，遵從 protocol View 的型別。
        zigzag2()
            .fill(Color(hue: 1.0, saturation: 0.966, brightness: 0.859))
            .frame(width:90,height:400)
            .shadow(radius: 80)
            .rotationEffect(.degrees(20))
            .offset(x:90,y:240)
    }
}

struct zigzag3View: View {
    var body: some View {
        ////Extract Subview，遵從 protocol View 的型別。
        zigzag2()
            .fill(Color(hue: 1.0, saturation: 0.966, brightness: 0.859))
            .frame(width:50,height:300)
            .shadow(radius: 80)
            .rotationEffect(.degrees(-150))
            .position(x:100,y:150)
    }
}
