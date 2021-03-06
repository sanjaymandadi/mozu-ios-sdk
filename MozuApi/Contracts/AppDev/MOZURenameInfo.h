
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



@protocol MOZURenameInfo
@end


/**
	Information required to update the name of a file in a package, which consists of the original name and the new name.
*/
@interface MOZURenameInfo : JSONModel<MOZURenameInfo>

/**
The destination file location and file name to specify.
*/
@property(nonatomic) NSString * theNewFullPath;

/**
The original file location and file name.
*/
@property(nonatomic) NSString * oldFullPath;

@end

