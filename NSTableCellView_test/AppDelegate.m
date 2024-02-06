//
//  AppDelegate.m
//  NSTableCellView_test
//
//  Created by Gregory Casamento on 9/3/22.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (strong) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}

// Data source
- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    return [[NSTextField alloc] initWithFrame: NSMakeRect(0, 0, 50, 10)];
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return 2;
}

// Delegate

@end
