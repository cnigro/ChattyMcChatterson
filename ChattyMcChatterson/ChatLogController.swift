//
//  ViewController.swift
//  ChattyMcChatterson
//
//  Created by cameron nigro on 7/23/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import UIKit
import Chatto
import ChattoAdditions


class ChatLogController: BaseChatViewController {
	
	var presenter: BasicChatInputBarPresenter!
	var dataSource = DataSource()
	var decorator = Decorator()
	
	override func createPresenterBuilders() -> [ChatItemType : [ChatItemPresenterBuilderProtocol]] {
		return [ChatItemType : [ChatItemPresenterBuilderProtocol]]()
	}
	
	override func createChatInputView() -> UIView {
		let inputBar = ChatInputBar.loadNib()
		var appearance = ChatInputBarAppearance()
		appearance.sendButtonAppearance.title = "Send"
		appearance.textInputAppearance.placeholderText = "Type a message"
		self.presenter = BasicChatInputBarPresenter(chatInputBar: inputBar,
		                                            chatInputItems: [handleSend()],
		                                            chatInputBarAppearance: appearance)
		return inputBar
	}
	
	func handleSend() -> TextChatInputItem {
		let item = TextChatInputItem()
		item.textInputHandler = { text in
			let message = MessageModel(uid: "", senderId: "", type: "", isIncoming: false, date: Date(), status: .success)
			let textMessage = TextModel(messageModel: message, text: text)
			self.dataSource.addTextMessage(message: textMessage)
		}
		
		return item
	}

	override func viewDidLoad() {
		super.viewDidLoad()
		chatDataSource = dataSource
		chatItemsDecorator = decorator
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

