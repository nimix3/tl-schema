---types---
// inputPhotoCropAuto#ade6b004 = InputPhotoCrop;
// inputPhotoCrop#d9915325 crop_left:double crop_top:double crop_width:double = InputPhotoCrop;
// inputMediaUploadedPhoto#f7aff1c0 file:InputFile caption:string = InputMedia;
inputMediaUploadedPhoto#630c9af1 flags:# file:InputFile caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// inputChatUploadedPhoto#94254732 file:InputFile crop:InputPhotoCrop = InputChatPhoto;
inputChatUploadedPhoto#927c55b4 file:InputFile = InputChatPhoto;
// inputChatPhoto#b2e1bf08 id:InputPhoto crop:InputPhotoCrop = InputChatPhoto;
inputChatPhoto#8953ad37 id:InputPhoto = InputChatPhoto;
// photo#cded42fe id:long access_hash:long date:int sizes:Vector<PhotoSize> = Photo;
photo#9288dd29 flags:# has_stickers:flags.0?true id:long access_hash:long date:int sizes:Vector<PhotoSize> = Photo;
// inputMediaUploadedDocument#1d89306d file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
inputMediaUploadedDocument#d070f1e9 flags:# file:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// inputMediaUploadedThumbDocument#ad613491 file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string = InputMedia;
inputMediaUploadedThumbDocument#50d88cae flags:# file:InputFile thumb:InputFile mime_type:string attributes:Vector<DocumentAttribute> caption:string stickers:flags.0?Vector<InputDocument> = InputMedia;
// documentAttributeSticker#3a556302 alt:string stickerset:InputStickerSet = DocumentAttribute;
documentAttributeSticker#6319d612 flags:# mask:flags.1?true alt:string stickerset:InputStickerSet mask_coords:flags.0?MaskCoords = DocumentAttribute;
// stickerSet#cd303b41 flags:# installed:flags.0?true archived:flags.1?true official:flags.2?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
stickerSet#cd303b41 flags:# installed:flags.0?true archived:flags.1?true official:flags.2?true masks:flags.3?true id:long access_hash:long title:string short_name:string count:int hash:int = StickerSet;
// updateStickerSetsOrder#f0dfb451 order:Vector<long> = Update;
updateStickerSetsOrder#bb2d201 flags:# masks:flags.0?true order:Vector<long> = Update;
// updateBotCallbackQuery#a68c688c query_id:long user_id:int peer:Peer msg_id:int data:bytes = Update;
updateBotCallbackQuery#4bf9a8a0 flags:# query_id:long user_id:int peer:Peer msg_id:int chat_instance:long data:flags.0?bytes game_id:flags.1?int = Update;
// updateInlineBotCallbackQuery#2cbd95af query_id:long user_id:int msg_id:InputBotInlineMessageID data:bytes = Update;
updateInlineBotCallbackQuery#4f2f45d1 flags:# query_id:long user_id:int msg_id:InputBotInlineMessageID chat_instance:long data:flags.0?bytes game_id:flags.1?int = Update;
messageActionGameScore#3a14cfa5 game_id:int score:int = MessageAction;
documentAttributeHasStickers#9801d2f7 = DocumentAttribute;
keyboardButtonGame#28fc3164 text:string game_title:string game_id:int start_param:string = KeyboardButton;
stickerSetMultiCovered#3407e51b set:StickerSet covers:Vector<Document> = StickerSetCovered;
maskCoords#aed6dbb2 n:int x:double y:double zoom:double = MaskCoords;
inputStickeredMediaPhoto#4a992157 id:InputPhoto = InputStickeredMedia;
inputStickeredMediaDocument#438865b id:InputDocument = InputStickeredMedia;
---functions---
// messages.getStickers#ae22e045 emoticon:string hash:string = messages.Stickers;
// messages.getUnusedStickers#4309d65b limit:int = Vector<StickerSetCovered>;
// messages.forwardMessages#708e0195 flags:# silent:flags.5?true background:flags.6?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
messages.forwardMessages#708e0195 flags:# silent:flags.5?true background:flags.6?true with_my_score:flags.8?true from_peer:InputPeer id:Vector<int> random_id:Vector<long> to_peer:InputPeer = Updates;
// photos.updateProfilePhoto#eef579a0 id:InputPhoto crop:InputPhotoCrop = UserProfilePhoto;
photos.updateProfilePhoto#f0bb5152 id:InputPhoto = UserProfilePhoto;
// photos.uploadProfilePhoto#d50f9c88 file:InputFile caption:string geo_point:InputGeoPoint crop:InputPhotoCrop = photos.Photo;
photos.uploadProfilePhoto#4f32c098 file:InputFile = photos.Photo;
// messages.reorderStickerSets#9fcfbc30 order:Vector<long> = Bool;
messages.reorderStickerSets#78337739 flags:# masks:flags.0?true order:Vector<long> = Bool;
// messages.getBotCallbackAnswer#a6e94f04 peer:InputPeer msg_id:int data:bytes = messages.BotCallbackAnswer;
messages.getBotCallbackAnswer#6c996518 flags:# peer:InputPeer msg_id:int data:flags.0?bytes game_id:flags.1?int = messages.BotCallbackAnswer;
// messages.readFeaturedStickers#e21cbb = Bool;
messages.readFeaturedStickers#5b118126 id:Vector<long> = Bool;
// messages.getRecentStickers#99197c2c hash:int = messages.RecentStickers;
messages.getRecentStickers#5ea192c9 flags:# attached:flags.0?true hash:int = messages.RecentStickers;
// messages.saveRecentSticker#348e39bf id:InputDocument unsave:Bool = Bool;
messages.saveRecentSticker#392718f8 flags:# attached:flags.0?true id:InputDocument unsave:Bool = Bool;
// messages.clearRecentStickers#ab02e5d2 = Bool;
messages.clearRecentStickers#8999602d flags:# attached:flags.0?true = Bool;
// messages.getArchivedStickers#906e241f offset_id:long limit:int = messages.ArchivedStickers;
messages.getArchivedStickers#57f17692 flags:# masks:flags.0?true offset_id:long limit:int = messages.ArchivedStickers;
auth.dropTempAuthKeys#8e48a188 except_auth_keys:Vector<long> = Bool;
messages.setGameScore#dfbc7c1f flags:# edit_message:flags.0?true peer:InputPeer id:int user_id:InputUser game_id:int score:int = Updates;
messages.setInlineGameScore#54f882f1 flags:# edit_message:flags.0?true id:InputBotInlineMessageID user_id:InputUser game_id:int score:int = Bool;
messages.getMaskStickers#65b8c79f hash:int = messages.AllStickers;
messages.getAttachedStickers#cc5b67cc media:InputStickeredMedia = Vector<StickerSetCovered>;
