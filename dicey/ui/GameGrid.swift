import SpriteKit
import GameplayKit

class GameGrid: SKScene {
    
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func didMove(to view: SKView) {
        addRectangle()
    }
    
    func addRectangle() {
        let rectangleSize = CGSize(width: 100, height: 50)
        let rectangle = SKShapeNode(rectOf: rectangleSize)
        
        // Customize the rectangle
        rectangle.fillColor = .red
        rectangle.strokeColor = .black
        rectangle.lineWidth = 2
        
        // Position the rectangle (center of the scene in this example)
        rectangle.position = CGPoint(x: 0, y: 0 )
        
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
