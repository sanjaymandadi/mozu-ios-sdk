
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
#import "MOZURuntimeFacet.h"
#import "MOZURuntimeProduct.h"



@protocol MOZUProductSearchResult
@end


/**
	The result of a product search.
*/
@interface MOZUProductSearchResult : JSONModel<MOZUProductSearchResult>

/**
The number of pages returned based on the startIndex and pageSize values specified. This value is system-supplied and read-only.
*/
@property(nonatomic) long pageCount;

/**
The number of results to display on each page when creating paged results from a query. The maximum value is 200.
*/
@property(nonatomic) NSInteger pageSize;

@property(nonatomic) NSInteger startIndex;

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) long totalCount;

/**
The facets applied to index products in the product search result.
*/
@property(nonatomic) NSArray<MOZURuntimeFacet>* facets;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZURuntimeProduct>* items;

@end

