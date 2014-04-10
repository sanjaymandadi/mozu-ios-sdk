
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



@protocol MOZUFacetSource
@end


/**
	Container for the facet source information, which includes the category, price, or attribute properties.
*/
@interface MOZUFacetSource : JSONModel<MOZUFacetSource>

/**
The source type for the facet, either "Attribute" or "Element". Category and price facets are elements.
*/
@property(nonatomic) NSString * type;

/**
If true, the facet allows for values that consist of one or more ranges, such as 0-100, 100-200, and 200-300.
*/
@property(nonatomic) BOOL allowsRangeQuery;

/**
The data type associated with the attribute or category that generates the facet, such as bool or string.
*/
@property(nonatomic) NSString * dataType;

/**
Identifier of the facet source, which is attribute, category, or price. For attribute facets, the AttributeFQN.
*/
@property(nonatomic) NSString * id;

/**
System-supplied and read-only name of the associated facet source.
*/
@property(nonatomic) NSString * name;

@end

