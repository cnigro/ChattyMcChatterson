//
//  Decorator.swift
//  ChattyMcChatterson
//
//  Created by cameron nigro on 7/23/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class Decorator: ChatItemsDecoratorProtocol {
	
	func decorateItems(_ chatItems: [ChatItemProtocol]) -> [DecoratedChatItem] {
		
		var decoratedItems = [DecoratedChatItem]()
		
		for item in chatItems {
			let decoratedItem = DecoratedChatItem(chatItem: item,
			                                      decorationAttributes: ChatItemDecorationAttributes(bottomMargin: 3,
			                                                                                         showsTail: false,
			                                                                                         canShowAvatar: false))
			decoratedItems.append(decoratedItem)
		}
		
		return decoratedItems
		
	}
	
}
