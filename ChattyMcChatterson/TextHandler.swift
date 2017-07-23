//
//  TextHandler.swift
//  ChattyMcChatterson
//
//  Created by cameron nigro on 7/23/17.
//  Copyright © 2017 Sheepware. All rights reserved.
//

import Foundation
import Chatto
import ChattoAdditions

class TextHandler: BaseMessageInteractionHandlerProtocol {
	
	func userDidTapOnFailIcon(viewModel: ViewModel, failIconView: UIView) {
		print("Tap on fail")
	}
	
	func userDidTapOnAvatar(viewModel: ViewModel) {
		print("Tap on avatar")
	}
	
	func userDidTapOnBubble(viewModel: ViewModel) {
		print("Tap on bubble")
	}
	
	func userDidBeginLongPressOnBubble(viewModel: ViewModel) {
		print("Begin long press on bubble")
	}
	
	func userDidEndLongPressOnBubble(viewModel: ViewModel) {
		print("End long press on bubble")
	}
	
}
