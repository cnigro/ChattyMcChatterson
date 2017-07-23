//
//  TextModel.swift
//  ChattyMcChatterson
//
//  Created by cameron nigro on 7/23/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class TextModel: TextMessageModel<MessageModel> {
	
	override init(messageModel: MessageModel, text: String) {
		super.init(messageModel: messageModel, text: text)
	}
	
}
