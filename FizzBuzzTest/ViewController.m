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
    for (int i=1; i<=100; i++) {
        if (i%3==0&&i%5==0) {
            NSString *str= [NSString stringWithFormat:@"FizzBuzz"];
            
            [self.ary_Numbers addObject:str];
        }
        else if(i%3==0)
        {
            NSString *str= [NSString stringWithFormat:@"Fizz"];
            
            [self.ary_Numbers addObject:str];
        }
        else if(i%5==0)
        {
            NSString *str= [NSString stringWithFormat:@"Buzz"];
            
            [self.ary_Numbers addObject:str];
        }
        else
        {
            NSString *str= [NSString stringWithFormat:@"%i",i];
            
            [self.ary_Numbers addObject:str];
        }
        
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
