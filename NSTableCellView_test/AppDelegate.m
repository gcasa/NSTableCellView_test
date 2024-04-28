//
//  AppDelegate.m
//  NSTableCellView_test
//
//  Created by Gregory Casamento on 9/3/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@property (strong) IBOutlet NSTableView *tableView;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSTableRowView *rv = [self.tableView rowViewAtRow: 0 makeIfNecessary:NO];
    NSLog(@"rv = %@, subviews = %@", rv, rv.subviews);
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

- (IBAction) reload: (id)sender
{
    [self.tableView reloadData];
}

// Data source
- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 2;
}

// Delegate
- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
  return [[NSTextField alloc] initWithFrame: NSMakeRect(0, 0, 50, 10)];
}

- (NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
{
    NSTableRowView *rowView = [[NSTableRowView alloc] init];
    NSLog(@"rowView from delegate => %@", rowView);
    return rowView;
}

@end
