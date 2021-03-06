/*Copyright (c) 2010, Zachary Schneirov. All rights reserved.
    This file is part of Notational Velocity.

    Notational Velocity is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Notational Velocity is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Notational Velocity.  If not, see <http://www.gnu.org/licenses/>. */


#import "BookmarksTable.h"
#import "BookmarksController.h"
#import "NSString_NV.h"

@implementation BookmarksTable

- (id)initWithCoder:(NSCoder *)decoder {
	if ((self = [super initWithCoder:decoder])) {
	}
	return self;
}

- (BOOL)acceptsFirstMouse:(NSEvent *)theEvent {
	return YES;
}

- (void)keyDown:(NSEvent*)theEvent {
	
	unichar keyChar = [theEvent firstCharacter];
	
    if (keyChar == NSDeleteCharacter || keyChar == NSDeleteFunctionKey) {
		[(BookmarksController*)[self dataSource] removeBookmark:nil];
		return;
	}
	
	[super keyDown:theEvent];
}
	

//force column re-layout while resizing
- (void)drawRect:(NSRect)aRect {
	
	[super drawRect:aRect];
}

@end
