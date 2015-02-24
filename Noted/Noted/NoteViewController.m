//
//  NoteViewController.m
//  Noted
//
//  Created by UH 300 -21 on 2/24/15.
//  Copyright (c) 2015 UH 300 -21. All rights reserved.
//

#import "NoteViewController.h"


@interface NoteViewController ()
//Note
@property Note *selectedNote;

//Interface
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *dateLabel;
@property (weak, nonatomic) IBOutlet UITextView *notesTextView;

@end

@implementation NoteViewController

-(instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil note:(Note *)note {
    
    if ([super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        //Do stuff here
        self.selectedNote = note;
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title = @"Note";
    
    self.titleLabel.text = self.selectedNote.title;
    self.notesTextView.text = self.selectedNote.note;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
