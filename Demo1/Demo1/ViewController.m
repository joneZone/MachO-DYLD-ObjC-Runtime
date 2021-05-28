//
//  ViewController.m
//  Demo1
//
//  Created by jone on 2021/5/25.
//

#import "ViewController.h"

static const char     *cString  = "const C String";
static const NSString *ocString = @"const OC String";

@interface ViewController ()@end

@implementation ViewController

+(void)load {
    NSLog(@"load");
}

void cFunction() {
    printf("cFuncitionString");
    printf("%s", cString);
}

void cFunctionA(int a) {
    printf("cFunctionString:%d",a);
}

- (void)ocFunction {
    NSLog(@"ocFunctionString");
    NSLog(@"%s", cString);
}

- (void)ocFuntionA:(int)a {
    NSLog(@"ocFunctionString: %d",a);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    cFunction();
    cFunctionA(88888);
    [self ocFunction];
    [self ocFuntionA:99999];
}

@end
