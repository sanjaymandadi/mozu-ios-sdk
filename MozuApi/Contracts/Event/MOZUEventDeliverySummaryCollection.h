
/*
* <auto-generated>
*     This code was generated by a tool.     
*
*     Changes to this file may cause incorrect behavior and will be lost if
*     the code is regenerated.
* </auto-generated>
*/

#import <Foundation/Foundation.h>
#import "JSONModel.h"
#import "MOZUEventDeliverySummary.h"



@protocol MOZUEventDeliverySummaryCollection
@end


@interface MOZUEventDeliverySummaryCollection : JSONModel<MOZUEventDeliverySummaryCollection>

@property(nonatomic) long pageCount;

@property(nonatomic) NSInteger pageSize;

@property(nonatomic) NSInteger startIndex;

@property(nonatomic) long totalCount;

@property(nonatomic) NSArray<MOZUEventDeliverySummary>* items;

@end

