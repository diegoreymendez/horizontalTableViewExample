//
//  MainViewController.m
//  Horizontal TableView Example
//
//  Created by Diego Rey Mendez on 6/10/12.
//  Copyright (c) 2012 Diego Rey Mendez. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy of
//  this software and associated documentation files (the "Software"), to deal in
//  the Software without restriction, including without limitation the rights to use,
//  copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the
//  Software, and to permit persons to whom the Software is furnished to do so,
//  subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
//  FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
//  COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
//  AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
//  WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
//

#import "MainViewController.h"

@implementation MainViewController

#pragma mark - UITableViewDataSource

-(UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	assert([tableView isKindOfClass:[UITableView class]]);
	assert([indexPath isKindOfClass:[NSIndexPath class]]);
	
	NSString* cellIdentifier = @"HorizontalTableViewCell";
	
	UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
	
	if (!cell)
	{
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:cellIdentifier owner:self options:nil];
		cell = (UITableViewCell*) [nib objectAtIndex:0];
		
		assert([cellIdentifier isEqualToString:cell.reuseIdentifier]);
	}
	assert([cell isKindOfClass:[UITableViewCell class]]);
	
	return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	assert([tableView isKindOfClass:[UITableView class]]);
	
	const NSInteger kHardCodedCellCount = 10; // This value comes from your data source
	return kHardCodedCellCount;
}

#pragma mark - UITableViewDelegate

-(float)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	assert([tableView isKindOfClass:[UITableView class]]);
	assert([indexPath isKindOfClass:[NSIndexPath class]]);
	
	const float kHardCodedRowHeight = 150.0f;
	return kHardCodedRowHeight;
}

@end
