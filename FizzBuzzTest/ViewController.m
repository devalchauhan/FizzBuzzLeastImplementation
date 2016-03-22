//
//  ViewController.m
//  FizzBuzzTest
//
//  Created by Syed Fahad Anwar on 3/22/16.
//  Copyright © 2016 Deval Chauhan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark UIView lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.ary_Numbers = [[NSMutableArray alloc] init];
    int i=1;
    [self Check:i];
}

-(void)Check:(int)i
{
    NSString *str;
    if(i%3==0)
        str= [NSString stringWithFormat:@"Fizz"];
    if(i%5==0)
        str= [NSString stringWithFormat:@"Buzz"];
    if (i%3==0&&i%5==0)
        str= [NSString stringWithFormat:@"FizzBuzz"];
    if (i%3!=0&&i%5!=0)
        str= [NSString stringWithFormat:@"%i",i];
    [self.ary_Numbers addObject:str];
    NSLog(@"%@\n",str);
    if (i>99) {
        [self.tbl_Numers reloadData];
    }
    else {
        i++;
        [self Check:i];
    }
}

#pragma mark UITableView Delegates
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;    //count of section
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [self.ary_Numbers count];    //count number of row from counting array hear cataGorry is An Array
}



- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *MyIdentifier = @"MyIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:MyIdentifier];
    
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:MyIdentifier];
    }
    
    // Here we use the provided setImageWithURL: method to load the web image
    // Ensure you use a placeholder image otherwise cells will be initialized with no image
    
    cell.textLabel.text = [self.ary_Numbers objectAtIndex:indexPath.row];
    return cell;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
