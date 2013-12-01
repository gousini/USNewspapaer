//
//  TableViewViewController.m
//  UITabeleView
//
//  Created by Sridhar  Botta on 01/12/12.
//  Copyright (c) 2012 sridhar.bta@gmail.com. All rights reserved.
//

#import "TableViewViewController.h"

@interface TableViewViewController ()

@end

@implementation TableViewViewController
@synthesize str,str1;

//tableview delegate methods

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if(cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
//    }
//    else
//    {
        namesTableView = [arrNames objectAtIndex:indexPath.row];
        cell.textLabel.text=[arrNames objectAtIndex:indexPath.row];
   // }
    }
    return  cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [arrNames count];
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    arrNames =[[NSMutableArray alloc]initWithObjects:@"Raj",@"Naresh",@"Mamu",@"Srini",nil];
    
    str1= [arrNames objectAtIndex:0];
    str =[str1 copy];
    
    NSArray *ss =[NSArray array] ;
    ss=[arrNames copy];
    
    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}
-(void)dealloc{
}
@end
