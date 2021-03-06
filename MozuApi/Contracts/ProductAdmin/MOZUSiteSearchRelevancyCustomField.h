
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



@protocol MOZUSiteSearchRelevancyCustomField
@end


/**
	Properties for setting custom field site search keyword relevancy settings. Relevancy determines the calculated matched of entered search strings against keywords. The relevancy weight can determine the order of importance for matching a search term such as categories before or after product names.
*/
@interface MOZUSiteSearchRelevancyCustomField : JSONModel<MOZUSiteSearchRelevancyCustomField>

/**
Name of the field.
*/
@property(nonatomic) NSString * fieldName;

/**
Relative weight of the field for relevancy purposes.
*/
@property(nonatomic) NSInteger fieldWeight;

@end

