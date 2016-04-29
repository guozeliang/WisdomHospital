# MLInputDodger
MLInputDodger

The keyboard dodger for input.

**My library does not seek any reward,
but if you use this library, tell me if you like. :)**

![MLInputDodger](https://raw.githubusercontent.com/molon/MLInputDodger/master/MLInputDodger.gif)

# Usage  

```
- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    self.view.shiftHeightAsDodgeViewForMLInputDodger = 50.0f;
    [self.view registerAsDodgeViewForMLInputDodger];
}
```   
Then the subviews who can becomeFirstResponder will trigger dodge.  
If you need custom shiftHeight for special responder, just set the `shiftHeightAsFirstResponderForMLInputDodger` property.  
   
   
Disbale default retract input accessory view:

```
self.view.dontUseDefaultRetractViewAsDodgeViewForMLInputDodger = NO; //for all subviews of self.view

self.testView1.dontUseDefaultRetractViewAsFirstResponderForMLInputDodger = NO; //for sepecial
```