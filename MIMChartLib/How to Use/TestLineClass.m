/*
 Copyright (C) 2011- 2012  Reetu Raj (reetu.raj@gmail.com)
 
 Permission is hereby granted, free of charge, to any person obtaining a copy of this software 
 and associated documentation files (the “Software”), to deal in the Software without 
 restriction, including without limitation the rights to use, copy, modify, merge, publish, 
 distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom
 the Software is furnished to do so, subject to the following conditions:

 The above copyright notice and this permission notice shall be included in all copies or 
 substantial portions of the Software.

 THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT 
 NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
 NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY 
 CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, 
 ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 *///
//  TestLineClass.m
//  MIMChartLib
//
//  Created by Reetu Raj on 15/08/11.
//  Copyright (c) 2012 __MIM 2D__. All rights reserved.
//

#import "TestLineClass.h"

@implementation TestLineClass

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor=[UIColor blackColor];
        
        
    }
    return self;
}


- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/
- (void)createDataForLongNegativeLines
{
    [xDataArrayFromCSV removeAllObjects];xDataArrayFromCSV=nil;
    [dataArrayFromCSV removeAllObjects];dataArrayFromCSV=nil;
    
    xDataArrayFromCSV=[[NSMutableArray alloc]init];
    dataArrayFromCSV=[[NSMutableArray alloc]init];
    
    NSMutableArray *valArray=[[NSMutableArray alloc]init];
    NSMutableArray *xvalArray=[[NSMutableArray alloc]init];
    
    NSString *csvPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"data3.csv"];
    NSString *fileDataString=[NSString stringWithContentsOfFile:csvPath encoding:NSUTF8StringEncoding error:nil];
    NSArray *linesArray=[fileDataString componentsSeparatedByString:@"\n"];
    
    
    
    for (int i=1;i<[linesArray count];i++)
    {
        
        NSString *lineString=[linesArray objectAtIndex:i];
        NSArray *columnArray=[lineString componentsSeparatedByString:@","];
        [valArray addObject:[NSString stringWithFormat:@"-%@",[columnArray objectAtIndex:1]]];
        [xvalArray addObject:[columnArray objectAtIndex:0]];    
    }
    
    [xDataArrayFromCSV addObject:xvalArray];
    [dataArrayFromCSV addObject:valArray];
    
    
    
    NSMutableArray *valArray1=[[NSMutableArray alloc]init];
    NSMutableArray *xvalArray1=[[NSMutableArray alloc]init];
    
    
    csvPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"data4.csv"];
    fileDataString=[NSString stringWithContentsOfFile:csvPath encoding:NSUTF8StringEncoding error:nil];
    linesArray=[fileDataString componentsSeparatedByString:@"\n"];
    
    
    
    for (int i=1;i<[linesArray count];i++)
    {
        
        NSString *lineString=[linesArray objectAtIndex:i];
        NSArray *columnArray=[lineString componentsSeparatedByString:@","];
        [valArray1 addObject:[columnArray objectAtIndex:1]];
        [xvalArray1 addObject:[columnArray objectAtIndex:0]];    
    }
    
    [xDataArrayFromCSV addObject:xvalArray1];
    [dataArrayFromCSV addObject:valArray1];
    
    
    
}
- (void)createDataForLongMultipleLines
{
    [xDataArrayFromCSV removeAllObjects];xDataArrayFromCSV=nil;
    [dataArrayFromCSV removeAllObjects];dataArrayFromCSV=nil;
    
    xDataArrayFromCSV=[[NSMutableArray alloc]init];
    dataArrayFromCSV=[[NSMutableArray alloc]init];
    
    NSMutableArray *valArray=[[NSMutableArray alloc]init];
    NSMutableArray *xvalArray=[[NSMutableArray alloc]init];
    
    NSString *csvPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"data3.csv"];
    NSString *fileDataString=[NSString stringWithContentsOfFile:csvPath encoding:NSUTF8StringEncoding error:nil];
    NSArray *linesArray=[fileDataString componentsSeparatedByString:@"\n"];
    
    
    
    for (int i=1;i<[linesArray count];i++)
    {
        
        NSString *lineString=[linesArray objectAtIndex:i];
        NSArray *columnArray=[lineString componentsSeparatedByString:@","];
        [valArray addObject:[columnArray objectAtIndex:1]];
        [xvalArray addObject:[columnArray objectAtIndex:0]];    
    }
    
    [xDataArrayFromCSV addObject:xvalArray];
    [dataArrayFromCSV addObject:valArray];
    
    
    
    NSMutableArray *valArray1=[[NSMutableArray alloc]init];
    NSMutableArray *xvalArray1=[[NSMutableArray alloc]init];
    
    
    csvPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"data4.csv"];
    fileDataString=[NSString stringWithContentsOfFile:csvPath encoding:NSUTF8StringEncoding error:nil];
    linesArray=[fileDataString componentsSeparatedByString:@"\n"];
    
    
    
    for (int i=1;i<[linesArray count];i++)
    {
        
        NSString *lineString=[linesArray objectAtIndex:i];
        NSArray *columnArray=[lineString componentsSeparatedByString:@","];
        [valArray1 addObject:[columnArray objectAtIndex:1]];
        [xvalArray1 addObject:[columnArray objectAtIndex:0]];    
    }
    
    [xDataArrayFromCSV addObject:xvalArray1];
    [dataArrayFromCSV addObject:valArray1];
    
    
    
}

-(void)createDataForLongSingleLine
{

    
    [xDataArrayFromCSV removeAllObjects];xDataArrayFromCSV=nil;
    [dataArrayFromCSV removeAllObjects];dataArrayFromCSV=nil;
    
    xDataArrayFromCSV=[[NSMutableArray alloc]init];
    dataArrayFromCSV=[[NSMutableArray alloc]init];
    NSString *csvPath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"data3.csv"];
    NSString *fileDataString=[NSString stringWithContentsOfFile:csvPath encoding:NSUTF8StringEncoding error:nil];
    NSArray *linesArray=[fileDataString componentsSeparatedByString:@"\n"];
    
    
    
    for (int i=1;i<[linesArray count];i++)
    {
        
        NSString *lineString=[linesArray objectAtIndex:i];
        NSArray *columnArray=[lineString componentsSeparatedByString:@","];
        [dataArrayFromCSV addObject:[columnArray objectAtIndex:1]];
        [xDataArrayFromCSV addObject:[columnArray objectAtIndex:0]];    
    }
    
    

}
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    horizontalLinesProperties=nil;
        

    [super viewDidLoad];
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *deviceType = [UIDevice currentDevice].model;
    if(![deviceType isEqualToString:@"iPhone"])
        return 500;
    
    
    return 200;
}



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
{
    return  1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @"Line Charts";
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return  17;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    
    
    UITableViewCell *cell;// = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    //if (cell == nil) 
    //{
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    
    verticalLinesProperties=nil;
    
    switch (indexPath.row) 
    {
        case 0:
        {
            
            horizontalLinesProperties=[NSDictionary dictionaryWithObjectsAndKeys:@"1,2",@"dotted", nil];
            verticalLinesProperties=[NSDictionary dictionaryWithObjectsAndKeys:@"1,2",@"dotted", nil];
            
            
            anchorPropertiesArray=nil;
            
            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-20, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.mbackgroundColor=[MIMColorClass colorWithComponent:@"1,1,1"];
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:NONE], nil];
            MIMColorClass *c1=[MIMColorClass colorWithComponent:@"0,169,249"];
            mLineGraph.lineColorArray=[NSArray arrayWithObjects:c1, nil];
            mLineGraph.xTitleStyle=X_TITLES_STYLE1;
            mLineGraph.bottomMargin=40;
            mLineGraph.rightMargin=50;
            mLineGraph.leftMargin=30;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
        }
            break;
            
        case 1:
        {
            horizontalLinesProperties=[NSDictionary dictionaryWithObjectsAndKeys:@"4,1",@"dotted", nil];;

            
            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:YES] forKey:@"touchenabled"], nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:CIRCLEFILLED], nil];
            mLineGraph.xTitleStyle=X_TITLES_STYLE2;
            mLineGraph.topMargin=50;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            
        }
            break;
        case 2:
        {
            horizontalLinesProperties=[NSDictionary dictionaryWithObjectsAndKeys:@"1,4",@"dotted", nil];;
            verticalLinesProperties=[NSDictionary dictionaryWithObjectsAndKeys:@"1,4",@"dotted", nil];
            
            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObject:@"1,1,1" forKey:@"borderColor"], nil];
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:CIRCLEBORDER], nil];
            mLineGraph.xTitleStyle=X_TITLES_STYLE3;
            mLineGraph.rightMargin=50;

            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            
        }
            break;
        case 3:
        {
            horizontalLinesProperties=nil;

            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObject:@"0.5,0.3,0.5" forKey:@"fillColor"], nil];
            
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:SQUAREFILLED], nil];
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            
        }
            break;
        case 4:
        {
            horizontalLinesProperties=nil;
            
            
            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1,1,1",
                                                                                                  [NSNumber numberWithBool:YES],
                                                                                                  @"5",nil] 
                                                                                         forKeys:[NSArray arrayWithObjects:@"borderColor",
                                                                                                  @"hideShadow",@"radius",nil]], nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:SQUAREBORDER], nil];
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            
        }
            break;
        case 5:
        {
            horizontalLinesProperties=nil;
            
            
            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:YES] forKey:@"hideShadow"], nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:CIRCLE], nil];
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
        }
            break;
        case 6:
        {
            horizontalLinesProperties=nil;
            
            
            yValuesArray=[[NSArray alloc]initWithObjects:@"10000",@"21000",@"24000",@"11000",@"5000",@"2000",@"9000",@"4000",@"10000",@"17000",@"15000",@"11000",nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:YES] forKey:@"hideShadow"], nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:SQUARE], nil];
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
    
        }
            break;
        case 7:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            [self createDataForLongSingleLine];
            
            yValuesArray=[NSArray arrayWithArray:dataArrayFromCSV];
            xValuesArray=[NSArray arrayWithArray:xDataArrayFromCSV];
            xTitlesArray=[NSArray arrayWithArray:xDataArrayFromCSV];
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[NSArray arrayWithObjects:[NSNumber numberWithInt:NONE], nil];
            
            mLineGraph.rightMargin=50;
            mLineGraph.topMargin=35;
            mLineGraph.bottomMargin=20;
            
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
        }
            break;
        case 8:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            NSArray *array1=[NSArray arrayWithObjects:@"104.622"  ,  @"104.270" ,   @"100.635"   , @"103.684"   , @"105.483",    @"105.101" ,   @"105.447" ,   @"104.468",    @"102.064" ,   @"100.319"  ,  @"100.145"  ,  @"100.567", nil];
            NSArray *array2=[NSArray arrayWithObjects:@"72.80",
                             @"69.55",
                             @"34.50",
                             @"33.96",
                             @"45.31",
                             @"54.05",
                             @"61.45",
                             @"62.57",
                             @"65.00",
                             @"74.58",
                             @"63.70",
                             @"69.58", nil];
            
            NSArray *array3=[NSArray arrayWithObjects:@"93.83",
                             @"93.96",
                             @"93.63",
                             @"93.70",
                             @"93.65",
                             @"93.82",
                             @"93.88",
                             @"93.80",
                             @"93.79",
                             @"93.86",
                             @"93.78",
                             @"93.47", nil];
            
            
            
            yValuesArray=[[NSArray alloc]initWithObjects:array1,array2,array3,nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-70, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.xTitleStyle=X_TITLES_STYLE1;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            

            
        }
            break;
            
        case 9:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            NSArray *array1=[NSArray arrayWithObjects:@"104.622"  ,  @"104.270" ,   @"100.635"   , @"103.684"   , @"105.483",    @"105.101" ,   @"105.447" ,   @"104.468",    @"102.064" ,   @"100.319"  ,  @"100.145"  ,  @"100.567", nil];
            NSArray *array2=[NSArray arrayWithObjects:@"72.80",
                             @"69.55",
                             @"34.50",
                             @"33.96",
                             @"45.31",
                             @"54.05",
                             @"61.45",
                             @"62.57",
                             @"65.00",
                             @"74.58",
                             @"63.70",
                             @"69.58", nil];
            
            NSArray *array3=[NSArray arrayWithObjects:@"93.83",
                             @"93.96",
                             @"93.63",
                             @"93.70",
                             @"93.65",
                             @"93.82",
                             @"93.88",
                             @"93.80",
                             @"93.79",
                             @"93.86",
                             @"93.78",
                             @"93.47", nil];
            
            
            
            yValuesArray=[[NSArray alloc]initWithObjects:array1,array2,array3,nil];
            
            NSNumber *a=    [NSNumber numberWithInt:SQUAREFILLED];
            NSNumber *a1=    [NSNumber numberWithInt:CIRCLEBORDER];
            NSNumber *a2=    [NSNumber numberWithInt:CIRCLEFILLED];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.anchorTypeArray=[[NSMutableArray alloc]initWithObjects:a,a2,a1, nil];
            mLineGraph.xTitleStyle=X_TITLES_STYLE2;
            mLineGraph.topMargin=40;
            mLineGraph.leftMargin=20;
            mLineGraph.rightMargin=30;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            

            
        }
            break;
        case 10:
        {
            horizontalLinesProperties=nil;
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            NSArray *array1=[NSArray arrayWithObjects:@"104.622"  ,  @"104.270" ,   @"100.635"   , @"103.684"   , @"105.483",    @"105.101" ,   @"105.447" ,   @"104.468",    @"102.064" ,   @"100.319"  ,  @"100.145"  ,  @"100.567", nil];
            NSArray *array2=[NSArray arrayWithObjects:@"72.80",
                             @"69.55",
                             @"34.50",
                             @"33.96",
                             @"45.31",
                             @"54.05",
                             @"61.45",
                             @"62.57",
                             @"65.00",
                             @"74.58",
                             @"63.70",
                             @"69.58", nil];
            
            NSArray *array3=[NSArray arrayWithObjects:@"93.83",
                             @"93.96",
                             @"93.63",
                             @"93.70",
                             @"93.65",
                             @"93.82",
                             @"93.88",
                             @"93.80",
                             @"93.79",
                             @"93.86",
                             @"93.78",
                             @"93.47", nil];
            
            
            
            yValuesArray=[[NSArray alloc]initWithObjects:array1,array2,array3,nil];
            
            
            anchorPropertiesArray= [NSArray arrayWithObjects:[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"1,0,0,1",
                                                                                                  [NSNumber numberWithBool:YES],
                                                                                                  @"5",[NSNumber numberWithInt:SQUAREBORDER],nil] forKeys:[NSArray arrayWithObjects:@"borderColor",@"hideShadow",@"radius",@"style",nil]],
                                    [NSDictionary dictionaryWithObject:@"1" forKey:@"style"],
                                    [NSDictionary dictionaryWithObject:[NSNumber numberWithBool:YES] forKey:@"hideShadow"], nil];
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width*0.5, myTableView.frame.size.width * 0.3)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.xTitleStyle=X_TITLES_STYLE2;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            //All with some default colors
            
        }
            break;
        case 11:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            [self createDataForLongMultipleLines];
            
            yValuesArray=[NSArray arrayWithArray:dataArrayFromCSV];
            xValuesArray=[NSArray arrayWithArray:xDataArrayFromCSV];
            xTitlesArray=[NSArray arrayWithArray:xDataArrayFromCSV];
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
        }
            break;
        case 12:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            NSArray *array1=[NSArray arrayWithObjects:@"-40",@"-30",@"-20",@"-10", @"0",@"20",@"23" ,@"25",@"28" ,@"30",@"25",@"40",nil];
            yValuesArray=[[NSArray alloc]initWithObjects:array1,nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-70, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.xTitleStyle=X_TITLES_STYLE1;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            //All WIthout Anchors
            
        }
            break;
            
        case 13:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            NSArray *array1=[NSArray arrayWithObjects:@"-40",@"-30",@"-20",@"-10", @"0",@"20",@"23" ,@"25",@"28" ,@"30",@"25",@"40",nil];
            NSArray *array2=[NSArray arrayWithObjects:@"-140",@"-135",@"-120",@"-130", @"10",@"120",@"123" ,@"50",@"58" ,@"40",@"125",@"120",nil];
            yValuesArray=[[NSArray alloc]initWithObjects:array1,array2,nil];
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.xTitleStyle=X_TITLES_STYLE2;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            //All with their own anchor styles
            
        }
            break;
            
        case 14:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            NSArray *array1=[NSArray arrayWithObjects:@"-40",@"-30",@"-20",@"-10", @"10",@"20",@"23" ,@"25",@"28" ,@"30",@"25",@"40",nil];
            NSArray *array2=[NSArray arrayWithObjects:@"-140",@"-135",@"-120",@"-130", @"10",@"120",@"123" ,@"50",@"58" ,@"40",@"125",@"120",nil];
            NSArray *array3=[NSArray arrayWithObjects:@"-10",@"-235",@"-80",@"-90", @"120",@"110",@"133" ,@"70",@"68" ,@"50",@"105",@"110",nil];
            yValuesArray=[[NSArray alloc]initWithObjects:array1,array2,array3,nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width-50, myTableView.frame.size.width * 0.5)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.xTitleStyle=X_TITLES_STYLE2;
            
            mLineGraph.topMargin=40;
            mLineGraph.leftMargin=20;
            
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            //All with some default colors
            
        }
            break;
        case 15:
        {
            horizontalLinesProperties=nil;
            anchorPropertiesArray=nil;
            
            NSArray *array1=[NSArray arrayWithObjects:@"-40",@"-30",@"-20",@"-10", @"10",@"20",@"23" ,@"25",@"28" ,@"30",@"25",@"40",nil];
            NSArray *array2=[NSArray arrayWithObjects:@"-140",@"-135",@"-120",@"-130", @"10",@"120",@"123" ,@"50",@"58" ,@"40",@"125",@"120",nil];
            yValuesArray=[[NSArray alloc]initWithObjects:array1,array2,nil];
            
            
            xValuesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            xTitlesArray=[[NSArray alloc]initWithObjects:@"Jan",
                          @"Feb",
                          @"Mar",
                          @"Apr",
                          @"May",
                          @"Jun",
                          @"Jul",
                          @"Aug",
                          @"Sep",
                          @"Oct",
                          @"Nov",
                          @"Dec", nil];
            
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width*0.5, myTableView.frame.size.width * 0.3)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            mLineGraph.xTitleStyle=X_TITLES_STYLE2;
            
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            
            //All with some default colors
            
        }
            break;
        case 16:
        {
            horizontalLinesProperties=[NSDictionary dictionaryWithObjects:[NSArray arrayWithObjects:@"20", nil] forKeys:[NSArray arrayWithObjects:@"gap", nil]];
            
            [self createDataForLongNegativeLines];
            
            yValuesArray=[NSArray arrayWithArray:dataArrayFromCSV];
            xValuesArray=[NSArray arrayWithArray:xDataArrayFromCSV];
            xTitlesArray=[NSArray arrayWithArray:xDataArrayFromCSV];
            
            anchorPropertiesArray=nil;
            
            mLineGraph=[[MIMLineGraph alloc]initWithFrame:CGRectMake(5, 20, myTableView.frame.size.width*0.5, myTableView.frame.size.width * 0.3)];
            mLineGraph.delegate=self;
            mLineGraph.tag=10+indexPath.row;
            [mLineGraph drawMIMLineGraph];
            [cell.contentView addSubview:mLineGraph];
            

            
        }
            break;
            
    }
    return cell;
    
    
}



#pragma mark - DELEGATE METHODS
-(NSArray *)valuesForGraph:(id)graph
{
    return yValuesArray;
}

-(NSArray *)valuesForXAxis:(id)graph
{
    return xValuesArray;
}

-(NSArray *)titlesForXAxis:(id)graph
{
   
    return xTitlesArray;

}

-(NSArray *)AnchorProperties:(id)graph
{
    return anchorPropertiesArray;
}

-(NSDictionary *)horizontalLinesProperties:(id)graph 
{
    return horizontalLinesProperties;

}

-(NSDictionary*)verticalLinesProperties:(id)graph
{
    return verticalLinesProperties;
}


-(UILabel *)createLabelWithText:(NSString *)text
{
    UILabel *a=[[UILabel alloc]initWithFrame:CGRectMake(5, myTableView.frame.size.width * 0.5 + 20, 310, 20)];
    [a setBackgroundColor:[UIColor clearColor]];
    [a setText:text];
    a.numberOfLines=5;
    [a setTextAlignment:UITextAlignmentCenter];
    [a setTextColor:[UIColor blackColor]];
    [a setFont:[UIFont fontWithName:@"Helvetica" size:12]];
    [a setMinimumFontSize:8];
    return a;
    
}




- (void)viewDidUnload
{
    
    
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return (interfaceOrientation==UIInterfaceOrientationPortrait);
}
- (void)dealloc
{
    
}

@end
