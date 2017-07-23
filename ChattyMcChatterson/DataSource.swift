//
//  DataSource.swift
//  ChattyMcChatterson
//
//  Created by cameron nigro on 7/23/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class DataSource: ChatDataSourceProtocol {
	
	var controller = ChatItemsController()
	
	var delegate: ChatDataSourceDelegateProtocol?
	
	var chatItems: [ChatItemProtocol] {
		return controller.items
	}
	
	var hasMoreNext: Bool {
		return false
	}
	
	var hasMorePrevious: Bool {
		return false
	}
	
	func loadNext() {
	
	}
	
	func loadPrevious() {
		
	}
	
	func addTextMessage(message: ChatItemProtocol) {
		controller.insertItem(message: message)
		delegate?.chatDataSourceDidUpdate(self)
	}
	
	func adjustNumberOfMessages(preferredMaxCount: Int?, focusPosition: Double, completion: (Bool) -> Void) {
		completion(false)
	}
	
}
