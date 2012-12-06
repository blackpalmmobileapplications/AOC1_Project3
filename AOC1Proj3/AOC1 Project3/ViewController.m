//
//  ViewController.m
//  AOC1 Project3
//
//  Created by Carmen Johnson on 12/6/12.
//  Copyright (c) 2012 Carmen Johnson. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //Display using Alert calling append with two NSStrings
    [self displayAlertWithString:[self strAppendOne:@"Hello Friend, " strAppendTwo:@"Welcome."]];

    //compare two ints to show results of if conditional
    int intNumbOne = 6;
    int intNumbTwo = 6;

    if([self comparingIntNumOne:intNumbOne toIntNumTwo:intNumbTwo])
    {
        [self displayAlertWithString:[NSString stringWithFormat:@"Awesome! %i is equal to %i.", intNumbOne, intNumbTwo]];
    } else {
        [self displayAlertWithString:[NSString stringWithFormat:@"Umm Sorry! %i is not equal to %i.", intNumbOne, intNumbTwo]];
    }

    {
        //compare two ints to show what happens in else conditional
        int intNumbThree = 20;
        int intNumbFour = 21;
        
        if([self comparingIntNumOne:intNumbThree toIntNumTwo:intNumbFour])
        {
            [self displayAlertWithString:[NSString stringWithFormat:@"Awesome! %i is equal to %i.", intNumbThree, intNumbFour]];
        } else {
            [self displayAlertWithString:[NSString stringWithFormat:@"Umm Sorry! %i is not equal to %i.", intNumbThree, intNumbFour]];
        }
    }

    //Create a function called Add. This function will take two NSInteger or int types and return the result of an addition between these two.
    int addAmount = [self addingIntOne:12 toIntTwo:10];
    //take added ints and turn into string, result of addition will show an alert with string
    [self displayAlertWithString:[NSString stringWithFormat:@"The total is %@",[[[NSNumber alloc] initWithInt:addAmount] stringValue]]];
    }



    - (void)didReceiveMemoryWarning
    {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    }

    //Create a BOOL function called Compare that takes two NSInteger values. Return YES or NO based on whether the values are equal.
    - (BOOL)comparingIntNumOne:(int)x toIntNumTwo:(int)y
    {
    if (x == y) {
        return YES;
    } else {
        return NO;
    }
    }

    //add two ints together
    - (int)addingIntOne:(NSInteger)x toIntTwo:(NSInteger)y
    {
    return (int)x + (int)y;
    }

    //Call the Append function with two NSStrings. Capture the result and display a UIAlertView with the appended string using displayAlertWithString.
    - (void)displayAlertWithString:(NSString *)string {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:string delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    }

    //Create a function called Append. This function will take two NSStrings and return a new NSString containing the appended strings using an NSMutableString and the Append method.
    - (NSString *)strAppendOne:(NSString *)str1 strAppendTwo:(NSString *)str2
    {
    NSMutableString *mutString = [NSMutableString stringWithString:str1];
    [mutString appendString:str2];
    return mutString;
    }

@end
