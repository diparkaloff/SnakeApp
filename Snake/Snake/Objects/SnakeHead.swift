//
//  SnakeHead.swift
//  Snake
//
//  Created by Дмитрий Паркалов on 3.08.22.

import UIKit

final class SnakeHead: SnakeBodyPart {
    
    // MARK: - Init
    
    override init(atPoint point: CGPoint){
        super.init(atPoint:point)
        self.configurePhysicsBody()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private
    
    private func configurePhysicsBody() {
        //категория - голова
        self.physicsBody?.categoryBitMask = CollisionCategories.SnakeHead
        //пересекается с телом, яблоком и границей экрана
        self.physicsBody?.contactTestBitMask = CollisionCategories.EdgeBody | CollisionCategories.Apple | CollisionCategories.Snake
    }
}
