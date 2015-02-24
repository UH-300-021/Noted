//
//  NotesViewController.m
//  Noted
//
//  Created by UH 300 -21 on 2/24/15.
//  Copyright (c) 2015 UH 300 -21. All rights reserved.
//

#import "NotesViewController.h"
#import "Note.h"
#import "NoteViewController.h"

@interface NotesViewController ()
@property (weak, nonatomic) IBOutlet UITableView *notesTableView;
@property NSMutableArray *notesArray;
@end

@implementation NotesViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Set title for nav bar
    self.title = @"Notes";
    
    //Create note
    Note *note1 = [[Note alloc] init];
    note1.title = @"Class Canceled";
    note1.note = @"No class Wednesday. Thanks, Judy!";
    note1.dateAdded = [NSDate date]; //The current date & time
    
    Note *note2 = [[Note alloc] init];
    note2.title = @"Class Canceled AGAIN";
    note2.note = @"No class Thursday. Thanks, Judy!";
    note2.dateAdded = [NSDate date]; //The current date & time
    
    Note *note3 = [[Note alloc] init];
    note3.title = @"Class Canceled FOREVER";
    note3.note = @"No class forever. Thanks a lot, Judy! Now i can't even learn anymore.";
    note3.dateAdded = [NSDate date]; //The current date & time
    
    //Adding a note to the array
    self.notesArray = [[NSMutableArray alloc] init];
    [self.notesArray addObject:note1];
    [self.notesArray addObject:note2];
    [self.notesArray addObject:note3];
    
    [self.notesTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.notesArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    //Get note
    Note *note = self.notesArray[indexPath.row];
    
    //Setting the title
    cell.textLabel.text = note.title;
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    //Get note
    Note *note = self.notesArray[indexPath.row];
    
    //Create note VC
    NoteViewController *noteVC = [[NoteViewController alloc] initWithNibName:@"NoteViewController" bundle:nil note:note];
    
    //Show note vc
    [self.navigationController pushViewController:noteVC animated:YES];
}

@end
