//
//  TableViewViewController.h
//  UITabeleView
//
//  Created by Sridhar  Botta on 01/12/12.
//  Copyright (c) 2012 sridhar.bta@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>

{
    IBOutlet UITableView *namesTableView;
    
    NSMutableArray *arrNames;
    
    NSString *str;
    NSString *str1;
    
    
}

@property (nonatomic,copy) NSString *str;
@property (nonatomic,copy) NSString *str1;

@end
 