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
		let textMessageBuilder = TextMessagePresenterBuilder(viewModelBuilder: TextBuilder(),
		                                                     interactionHandler: TextHandler())
		return [TextModel.chatItemType : [textMessageBuilder]]
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
			
			let date = Date()
			let dateDouble = Double(date.timeIntervalSinceReferenceDate)
			let senderID = "the_sender"
			
			let message = MessageModel(uid: "(\(dateDouble, senderID))", senderId: senderID, type: TextModel.chatItemType, isIncoming: false, date: date, status: .success)
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

