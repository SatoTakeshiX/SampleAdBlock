//
//  ActionRequestHandler.swift
//  ContentBlocker
//
//  Created by satoutakeshi on 2015/10/06.
//  Copyright © 2015年 satoutakeshi. All rights reserved.
//

import UIKit

class ActionRequestHandler: NSObject, NSExtensionRequestHandling {

    func beginRequestWithExtensionContext(context: NSExtensionContext) {
        let attachment = NSItemProvider(contentsOfURL: NSBundle.mainBundle().URLForResource("blockerList", withExtension: "json"))!
    
        let item = NSExtensionItem()
        item.attachments = [attachment]
    
        context.completeRequestReturningItems([item], completionHandler: nil);
    }
    
}
