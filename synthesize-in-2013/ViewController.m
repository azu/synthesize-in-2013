//
//  ViewController.m
//  synthesize-in-2013
//
//  Created by azu on 2013/08/17.
//  Copyright (c) 2013 azu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
// readonlyのみだとiVarが生成されない
@property(nonatomic, readwrite) NSFetchedResultsController *readOnlyController;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSFetchedResultsController *)fetchedResultsController {
    if (_fetchedResultsController) {
        return _fetchedResultsController;
    }
    NSManagedObjectContext *context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Foo"];
    _fetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                    managedObjectContext:context
                                                                    sectionNameKeyPath:nil
                                                                    cacheName:nil];

    return _fetchedResultsController;
}

- (NSFetchedResultsController *)readOnlyController {
    if (_readOnlyController) {
        return _readOnlyController;
    }

    NSManagedObjectContext *context = [[NSManagedObjectContext alloc] initWithConcurrencyType:NSMainQueueConcurrencyType];
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"Foo"];
    _readOnlyController = [[NSFetchedResultsController alloc] initWithFetchRequest:request
                                                                    managedObjectContext:context
                                                                    sectionNameKeyPath:nil
                                                                    cacheName:nil];

    return _readOnlyController;

}


@end