//
//  ChatItemsController.swift
//  ChattyMcChatterson
//
//  Created by cameron nigro on 7/23/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import Foundation
import ChattoAdditions
import Chatto

class ChatItemsController {
	var items = [ChatItemProtocol]()
	
	func insertItem(message: ChatItemProtocol) {
		self.items.append(message)
	}
}
