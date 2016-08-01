// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Any.pb.h"
// @@protoc_insertion_point(imports)

@implementation AnyRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [AnyRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

@interface Any ()
@property (strong) NSString* typeUrl;
@property (strong) NSData* value;
@end

@implementation Any

- (BOOL) hasTypeUrl {
  return !!hasTypeUrl_;
}
- (void) setHasTypeUrl:(BOOL) _value_ {
  hasTypeUrl_ = !!_value_;
}
@synthesize typeUrl;
- (BOOL) hasValue {
  return !!hasValue_;
}
- (void) setHasValue:(BOOL) _value_ {
  hasValue_ = !!_value_;
}
@synthesize value;
- (instancetype) init {
  if ((self = [super init])) {
    self.typeUrl = @"";
    self.value = [NSData data];
  }
  return self;
}
static Any* defaultAnyInstance = nil;
+ (void) initialize {
  if (self == [Any class]) {
    defaultAnyInstance = [[Any alloc] init];
  }
}
+ (instancetype) defaultInstance {
  return defaultAnyInstance;
}
- (instancetype) defaultInstance {
  return defaultAnyInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasTypeUrl) {
    [output writeString:1 value:self.typeUrl];
  }
  if (self.hasValue) {
    [output writeData:2 value:self.value];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasTypeUrl) {
    size_ += computeStringSize(1, self.typeUrl);
  }
  if (self.hasValue) {
    size_ += computeDataSize(2, self.value);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (Any*) parseFromData:(NSData*) data {
  return (Any*)[[[Any builder] mergeFromData:data] build];
}
+ (Any*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Any*)[[[Any builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (Any*) parseFromInputStream:(NSInputStream*) input {
  return (Any*)[[[Any builder] mergeFromInputStream:input] build];
}
+ (Any*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Any*)[[[Any builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (Any*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (Any*)[[[Any builder] mergeFromCodedInputStream:input] build];
}
+ (Any*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (Any*)[[[Any builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (AnyBuilder*) builder {
  return [[AnyBuilder alloc] init];
}
+ (AnyBuilder*) builderWithPrototype:(Any*) prototype {
  return [[Any builder] mergeFrom:prototype];
}
- (AnyBuilder*) builder {
  return [Any builder];
}
- (AnyBuilder*) toBuilder {
  return [Any builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasTypeUrl) {
    [output appendFormat:@"%@%@: %@\n", indent, @"typeUrl", self.typeUrl];
  }
  if (self.hasValue) {
    [output appendFormat:@"%@%@: %@\n", indent, @"value", self.value];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (void) storeInDictionary:(NSMutableDictionary *)dictionary {
  if (self.hasTypeUrl) {
    [dictionary setObject: self.typeUrl forKey: @"typeUrl"];
  }
  if (self.hasValue) {
    [dictionary setObject: self.value forKey: @"value"];
  }
  [self.unknownFields storeInDictionary:dictionary];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[Any class]]) {
    return NO;
  }
  Any *otherMessage = other;
  return
      self.hasTypeUrl == otherMessage.hasTypeUrl &&
      (!self.hasTypeUrl || [self.typeUrl isEqual:otherMessage.typeUrl]) &&
      self.hasValue == otherMessage.hasValue &&
      (!self.hasValue || [self.value isEqual:otherMessage.value]) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasTypeUrl) {
    hashCode = hashCode * 31 + [self.typeUrl hash];
  }
  if (self.hasValue) {
    hashCode = hashCode * 31 + [self.value hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface AnyBuilder()
@property (strong) Any* resultAny;
@end

@implementation AnyBuilder
@synthesize resultAny;
- (instancetype) init {
  if ((self = [super init])) {
    self.resultAny = [[Any alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return resultAny;
}
- (AnyBuilder*) clear {
  self.resultAny = [[Any alloc] init];
  return self;
}
- (AnyBuilder*) clone {
  return [Any builderWithPrototype:resultAny];
}
- (Any*) defaultInstance {
  return [Any defaultInstance];
}
- (Any*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (Any*) buildPartial {
  Any* returnMe = resultAny;
  self.resultAny = nil;
  return returnMe;
}
- (AnyBuilder*) mergeFrom:(Any*) other {
  if (other == [Any defaultInstance]) {
    return self;
  }
  if (other.hasTypeUrl) {
    [self setTypeUrl:other.typeUrl];
  }
  if (other.hasValue) {
    [self setValue:other.value];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (AnyBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (AnyBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 10: {
        [self setTypeUrl:[input readString]];
        break;
      }
      case 18: {
        [self setValue:[input readData]];
        break;
      }
    }
  }
}
- (BOOL) hasTypeUrl {
  return resultAny.hasTypeUrl;
}
- (NSString*) typeUrl {
  return resultAny.typeUrl;
}
- (AnyBuilder*) setTypeUrl:(NSString*) value {
  resultAny.hasTypeUrl = YES;
  resultAny.typeUrl = value;
  return self;
}
- (AnyBuilder*) clearTypeUrl {
  resultAny.hasTypeUrl = NO;
  resultAny.typeUrl = @"";
  return self;
}
- (BOOL) hasValue {
  return resultAny.hasValue;
}
- (NSData*) value {
  return resultAny.value;
}
- (AnyBuilder*) setValue:(NSData*) value {
  resultAny.hasValue = YES;
  resultAny.value = value;
  return self;
}
- (AnyBuilder*) clearValue {
  resultAny.hasValue = NO;
  resultAny.value = [NSData data];
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
