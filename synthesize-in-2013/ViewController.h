//
//  ViewController.h
//  synthesize-in-2013
//
//  Created by azu on 2013/08/17.
//  Copyright (c) 2013 azu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property(nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property(nonatomic, readonly) NSFetchedResultsController *readOnlyController;
@end