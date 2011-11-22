#import "NDNativeSearchBarElement.h"

@interface NDNativeSearchBarElement ()
- (void)doSubmit;

@end

@implementation NDNativeSearchBarElement
- (void)doSubmit {
    UISearchBar *searchBar = (UISearchBar *)[self view];
    id<UISearchBarDelegate> delegate = [searchBar delegate];
    if ([delegate respondsToSelector:@selector(searchBarSearchButtonClicked:)]) {
      [delegate searchBarSearchButtonClicked:searchBar];
    }
}
- (void)submit {
    [self performSelectorOnMainThread:@selector(doSubmit)
                           withObject:nil
                        waitUntilDone:YES];
}
@end