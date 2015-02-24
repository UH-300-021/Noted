//
//  Note.h
//  Noted
//
//  Created by UH 300 -21 on 2/24/15.
//  Copyright (c) 2015 UH 300 -21. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Note : NSObject
@property int ID;
@property NSString *title;
@property NSString *note;
@property NSDate *dateAdded;
@end
