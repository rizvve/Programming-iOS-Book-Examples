

#import "Pep.h"

@interface Pep () 
@property (nonatomic, weak) IBOutlet UILabel* name;
@property (nonatomic, weak) IBOutlet UIImageView* pic;
@end

@implementation Pep

// given a Pep boy's name, we display his name and picture

- (id) initWithPepBoy: (NSString*) inputboy nib: (NSString*) nib bundle: (NSBundle*) bundle {
    self = [self initWithNibName:nib bundle:bundle];
    if (self) {
        self->_boy = [inputboy copy];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.name.text = self.boy;
    self.pic.image = [UIImage imageNamed: 
                [NSString stringWithFormat: @"%@.jpg", [self.boy lowercaseString]]];
}

- (NSString*) description {
    return self.boy;
}

- (IBAction)tap:(UIGestureRecognizer*)sender {
    [[NSNotificationCenter defaultCenter] postNotificationName:@"tap" object:sender];
}


@end
