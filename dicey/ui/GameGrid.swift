import SpriteKit
import GameplayKit

class GameGrid: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        addRectangle()
    }
    
    func addRectangle() {
        let rectSize = CGSize(width: 50, height: 50)
        
        // Create a path for the rectangle
        let rectPath = CGPath(rect: CGRect(origin: .zero, size: rectSize), transform: nil)
        
        // Create an SKShapeNode with the rectangular path
        let rectangle = SKShapeNode(path: rectPath)
        
        // Set the rectangle's properties
        rectangle.fillColor = .red
        rectangle.strokeColor = .black
        rectangle.lineWidth = 2
        
        // Position the rectangle in the center of the scene
        rectangle.position = CGPoint(x: size.width / 2 - rectSize.width / 2,
                                     y: size.height / 2 - rectSize.height / 2)
        
        // Add the rectangle to the scene
        addChild(rectangle)
    }

    
    
    func touchDown(atPoint pos : CGPoint) {

    }
    
    func touchMoved(toPoint pos : CGPoint) {

    }
    
    func touchUp(atPoint pos : CGPoint) {

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
