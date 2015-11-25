***NewlineActivityItemProvider*** was developed because some activities like use the <br/> character instead of the normal \n newline character and UIActivityViewController does not provide a method to distinguish which activity you are using to share without subclassing it.

How to use it:

	NewlineActivityItemProvider *aip = [[NewlineActivityItemProvider alloc] initWithPlaceholderItem:@""];
 
	[aip setMessage:@"My\nMessage\nWith\nNewlines"];
 
	NSArray* dataToShare = @[aip];
 
	UIActivityViewController *activityViewController = [[UIActivityViewController alloc] initWithActivityItems:dataToShare applicationActivities:nil];

    if ( [activityViewController respondsToSelector:@selector(popoverPresentationController)] ) 
	{
	activityViewController.popoverPresentationController.sourceView = self.view;
    }
    [self presentViewController:activityViewController animated:YES completion:^{}];

At the moment only WhatsApp *(net.whatsapp.WhatsApp.ShareExtension)* is supported but you can add new activities in this way: 

	[aip setActivities:@[@"com.activity.test1", @"com.activity.test2"]];
