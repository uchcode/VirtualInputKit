//
//  GlobalFunction.m
//  VirtualInputKit
//
//  Created by uchcode on 2015/11/21.
//  Copyright © 2015 uchcode. All rights reserved.
//

#import "GlobalFunction.h"

void VirtualInput(NSString *source)
{
    for (int i=0; i < source.length; i++) {
        const unichar character = [source characterAtIndex:i];
        CGEventRef event = CGEventCreateKeyboardEvent(nil, 0, true);
        CGEventKeyboardSetUnicodeString(event, 1, &character);
        CGEventPost(kCGSessionEventTap, event);
        //usleep(10000);
    }
}
