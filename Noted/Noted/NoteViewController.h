//
//  NoteViewController.h
//  Noted
//
//  Created by UH 300 -21 on 2/24/15.
//  Copyright (c) 2015 UH 300 -21. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Note.h"

@interface NoteViewController : UIViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil note:(Note *)note;
@end
