
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
#import "MOZUContentLocale.h"



@protocol MOZUContentLocaleCollection
@end


/**
	The paged collection of content locale codes that the system supports.
*/
@interface MOZUContentLocaleCollection : JSONModel<MOZUContentLocaleCollection>

/**
The number of results listed in the query collection, represented by a signed 64-bit (8-byte) integer. This value is system-supplied and read-only.
*/
@property(nonatomic) NSInteger totalCount;

/**
An array list of objects in the returned collection.
*/
@property(nonatomic) NSArray<MOZUContentLocale> *items;

@end

