import SwiftUI

// day 43 project 9 playground

// Creating custom paths from SwiftUI

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .fill(.blue)
    }
}

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .stroke(.blue, lineWidth: 10)
    }
}

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            path.closeSubpath()
        }
        .stroke(.blue, lineWidth: 10)
    }
}

struct ContentView: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
        }
        .stroke(.blue, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

// Paths vs Shapes in SwiftUI

struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY))
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        Triangle()
            .fill(.red)
            .frame(width: 300, height: 300)
    }
}

struct ContentView: View {
    var body: some View {
        Triangle()
            .stroke(.red, style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
            .frame(width: 300, height: 300)
    }
}

struct Arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: startAngle, endAngle: endAngle, clockwise: clockwise)
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
            .stroke(.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
    }
}

struct Arc: Shape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
}

struct ContentView: View {
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(110), clockwise: true)
            .stroke(.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
    }
}

// Adding strokeBorder() support with InsettableShape

struct ContentView: View {
    var body: some View {
        Circle()
            .stroke(.blue, lineWidth: 40)
    }
}

struct ContentView: View {
    var body: some View {
        Circle()
            .strokeBorder(.blue, lineWidth: 40)
    }
}

struct Arc: InsettableShape {
    let startAngle: Angle
    let endAngle: Angle
    let clockwise: Bool
    var insetAmount = 0.0
    
    func path(in rect: CGRect) -> Path {
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment
        
        var path = Path()
        
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)
        
        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}

struct ContentView: View {
    var body: some View {
        Arc(startAngle: .degrees(-90), endAngle: .degrees(90), clockwise: true)
            .strokeBorder(.blue, lineWidth: 40)
    }
}

// day 44 project 9 playground

// Transforming shapes using CGAffineTransform and even-odd fills


// Creative borders and fills using ImagePaint


// Enabling high-performance Metal rendering with drawingGroup()


// day 43 project 9 playground

// Special effects in SwiftUI: blurs, blending, and more


// Animating simple shapes with animatableData


// Animating complex shapes with AnimatablePair


// Creating a spirograph with SwiftUI
