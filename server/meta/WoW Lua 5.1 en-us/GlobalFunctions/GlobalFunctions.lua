---@class unknown @ unknown type

---The player abandons a skill.
---@param skillLineID number @ The Skill Line ID (can be found with API GetProfessionInfo())
---@return void
---[View Documents](https://wow.gamepedia.com/API_AbandonSkill)
function AbandonSkill(skillLineID)
end

---Acccept the area Spirit Healer's resurrection in battlegrounds.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptAreaSpiritHeal)
function AcceptAreaSpiritHeal()
end

---Confirms entry into a Battleground you are queued for that is ready.
---@param index number @ The battlefield in queue to enter.
---@param accept boolean @ Whether or not to accept entry to the battlefield.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptBattlefieldPort)
function AcceptBattlefieldPort(index, accept)
end

---Accept the challenge to a duel.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptDuel)
function AcceptDuel()
end

---Accept the invitation to a group.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptGroup)
function AcceptGroup()
end

---Accepts a guild invitation.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptGuild)
function AcceptGuild()
end

---Accepts a group invite by the Looking for Dungeon system.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptProposal)
function AcceptProposal()
end

---Accepts the currently offered quest.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptQuest)
function AcceptQuest()
end

---Accepts a resurrection, returning the character to life.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptResurrect)
function AcceptResurrect()
end

---Confirms insertion of new gems into the item currently being socketed.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptSockets)
function AcceptSockets()
end

---Confirms a spell confirmation prompt (e.g. bonus loot roll).
---@param spellID number @ spell ID of the prompt to confirm.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptSpellConfirmationPrompt)
function AcceptSpellConfirmationPrompt(spellID)
end

---Accept a pending trade.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptTrade)
function AcceptTrade()
end

---Accept the resurrection sickness and durability loss when being resurrected by the spirit healer instead of returning to a corpse.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcceptXPLoss)
function AcceptXPLoss()
end

---Acknowledges that the currently-offered auto-accept quest has been accepted by the player.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AcknowledgeAutoAcceptQuest)
function AcknowledgeAutoAcceptQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AcknowledgeSurvey)
function AcknowledgeSurvey()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ActionBindsItem)
function ActionBindsItem()
end

---Returns true if the action has a numeric range requirement.
---@param slotID number @ The slot ID to test.
---@return boolean hasRange
---[View Documents](https://wow.gamepedia.com/API_ActionHasRange)
function ActionHasRange(slotID)
end

---Adds a popup notification to the objectives tracker, showing that a quest is available or completed.
---@param questID number @ the quest id
---@param type string @ popup type, one of OFFER or COMPLETE
---@return void
---[View Documents](https://wow.gamepedia.com/API_AddAutoQuestPopUp)
function AddAutoQuestPopUp(questID, type)
end

---Makes messages from a specified chat channel output in a specific chat frame.
---@param windowId number @ index of the chat window/frame (ascending from 1) to add the channel to.
---@param channelName string @ name of the chat channel to add to the frame.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AddChatWindowChannel)
function AddChatWindowChannel(windowId, channelName)
end

---Sets a chat frame to receive and show messages of the given message group.
---@param index number @ The chat window index, ascending from 1.
---@param messageGroup string @ Message group to add to the chat window, e.g. SAY, EMOTE, MONSTER_BOSS_EMOTE.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AddChatWindowMessages)
function AddChatWindowMessages(index, messageGroup)
end

---Marks an achievement for tracking in the WatchFrame.
---@param achievementID number @ ID of the achievement to add to tracking.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AddTrackedAchievement)
function AddTrackedAchievement(achievementID)
end

---Adds money currently on the cursor to your trade offer.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AddTradeMoney)
function AddTradeMoney()
end

---Returns a version of a character-realm string suitable for use in a given context.
---@param fullName string @ character-realm for a character, e.g. Shion-DieAldor
---@param context string @ context the name will be used in, one of: all, guild, mail, none, or short.
---@return string name
---[View Documents](https://wow.gamepedia.com/API_Ambiguate)
function Ambiguate(fullName, context)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AntiAliasingSupported)
function AntiAliasingSupported()
end

---Purchases currently selected customizations from the barber shop.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ApplyBarberShopStyle)
function ApplyBarberShopStyle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ArchaeologyGetIconInfo)
function ArchaeologyGetIconInfo()
end

---Returns how many digsites are in a zone like Azsuna or Elwynn Forest.
---@return number numSites
---[View Documents](https://wow.gamepedia.com/API_ArchaeologyMapUpdateAll)
function ArchaeologyMapUpdateAll()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ArcheologyGetVisibleBlobID)
function ArcheologyGetVisibleBlobID()
end

---Returns whether account-wide achievements are hidden from other players.
---@return boolean hidden
---[View Documents](https://wow.gamepedia.com/API_AreAccountAchievementsHidden)
function AreAccountAchievementsHidden()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AreDangerousScriptsAllowed)
function AreDangerousScriptsAllowed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AreTalentsLocked)
function AreTalentsLocked()
end

---This doesn't appear to affect the actual jump at all and is used as a way for users to get when the jump key was released.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AscendStop)
function AscendStop()
end

---Assists the specified unit, setting the player's target to theirs.
---@param unit string @ unit to assist.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AssistUnit)
function AssistUnit(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AttachGlyphToSpell)
function AttachGlyphToSpell()
end

---Toggles auto-attacking of the player's current target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AttackTarget)
function AttackTarget()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AutoChooseCurrentGraphicsSetting)
function AutoChooseCurrentGraphicsSetting()
end

---Automatically equips the item currently held on the cursor.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AutoEquipCursorItem)
function AutoEquipCursorItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_AutoLootMailItem)
function AutoLootMailItem()
end

---Allows you to withdraw an item and automatically store it in your inventory.
---@param tab number @ The index of the tab in the guild bank
---@param slot number @ The index of the slot in the chosen tab.
---@return void
---[View Documents](https://wow.gamepedia.com/API_AutoStoreGuildBankItem)
function AutoStoreGuildBankItem(tab, slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNAcceptFriendInvite)
function BNAcceptFriendInvite()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNCheckBattleTagInviteToGuildMember)
function BNCheckBattleTagInviteToGuildMember()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNCheckBattleTagInviteToUnit)
function BNCheckBattleTagInviteToUnit()
end

---Returns info whether the WoW Client is connected to the Battle.net.
---@return boolean connected
---[View Documents](https://wow.gamepedia.com/API_BNConnected)
function BNConnected()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNDeclineFriendInvite)
function BNDeclineFriendInvite()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNFeaturesEnabled)
function BNFeaturesEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNFeaturesEnabledAndConnected)
function BNFeaturesEnabledAndConnected()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetBlockedInfo)
function BNGetBlockedInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetDisplayName)
function BNGetDisplayName()
end

---Returns information about the specified friend of a RealID friend
---@param presenceID number @ The presenceID for the RealID friend for whom you are requesting friend info.
---@param mutual boolean @ Should the list include mutual friends (I.e. people who you and the person referenced by presenceID are both friends with).
---@param nonMutual boolean @ Should the list include non-mutual friends.
---@param index number @ The index of the entry in the list to retrieve (1 to BNGetNumFOF(...))
---@return number presenceIDstring givenNamestring surnameboolean isFriend
---[View Documents](https://wow.gamepedia.com/API_BNGetFOFInfo)
function BNGetFOFInfo(presenceID, mutual, nonMutual, index)
end

---Returns the index in the friend frame of the given Battle.net friend.
---@param presenceID number @ A unique numeric identifier for the friend's battle.net account during this session.
---@return number index
---[View Documents](https://wow.gamepedia.com/API_BNGetFriendIndex)
function BNGetFriendIndex(presenceID)
end

---Returns information about a Battle.net friend invite.
---@param inviteIndex number @ Ranging from 1 to BNGetNumFriendInvites()
---@return number inviteIDnumber accountNameboolean isBattleTagunknown unknownnumber sentTime
---[View Documents](https://wow.gamepedia.com/API_BNGetFriendInviteInfo)
function BNGetFriendInviteInfo(inviteIndex)
end

---Returns information about the player
---@return number presenceIDstring battleTagnumber toonIDstring currentBroadcastboolean bnetAFKboolean bnetDNDboolean isRIDEnabled
---[View Documents](https://wow.gamepedia.com/API_BNGetInfo)
function BNGetInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetNumBlocked)
function BNGetNumBlocked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetNumFOF)
function BNGetNumFOF()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetNumFriendInvites)
function BNGetNumFriendInvites()
end

---Returns info about how much Battle.net friends are added to the friendslist and how much of them are currently online.
---@return number numBNetTotalnumber numBNetOnlinenumber numBNetFavoritenumber numBNetFavoriteOnline
---[View Documents](https://wow.gamepedia.com/API_BNGetNumFriends)
function BNGetNumFriends()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetSelectedBlock)
function BNGetSelectedBlock()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNGetSelectedFriend)
function BNGetSelectedFriend()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNInviteFriend)
function BNInviteFriend()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNIsBlocked)
function BNIsBlocked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNIsFriend)
function BNIsFriend()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNIsSelf)
function BNIsSelf()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNRemoveFriend)
function BNRemoveFriend()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNRequestFOFInfo)
function BNRequestFOFInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNRequestInviteFriend)
function BNRequestInviteFriend()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSendFriendInvite)
function BNSendFriendInvite()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSendFriendInviteByID)
function BNSendFriendInviteByID()
end

---BNSendGameData is the battle.net chat-equivalent of SendAddonMessage().
---@param presenceID number @ A unique numeric identifier for the friend during this session. -- get it with BNGetFriendInfo()
---@param addonPrefix string @ <=16 bytes, cannot include a colon
---@param message string @ <=4078 bytes
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSendGameData)
function BNSendGameData(presenceID, addonPrefix, message)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSendSoR)
function BNSendSoR()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSendVerifiedBattleTagInvite)
function BNSendVerifiedBattleTagInvite()
end

---Sends a whisper to Battle.net friends.
---@param bnetAccountID number @ A unique numeric identifier for the friend during this session. You can get bnetAccountID from C_BattleNet.GetFriendAccountInfo()
---@param message unknown @ Message text. Must be less than 4096 bytes.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSendWhisper)
function BNSendWhisper(bnetAccountID, message)
end

---Set or unset afk status
---@param bool boolean @ true set your battle.net status to afk and false unset it.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetAFK)
function BNSetAFK(bool)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetBlocked)
function BNSetBlocked()
end

---Sends a broadcast message to your Real ID friends.
---@param text string @ message to be broadcasted (max 127 chars)
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetCustomMessage)
function BNSetCustomMessage(text)
end

---Set or unset DND status
---@param bool boolean @ true set your battle.net status to dnd and false unset it.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetDND)
function BNSetDND(bool)
end

---Sets a battle.net friend as favorite.
---@param id number @ account Id
---@param isFavorite boolean
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetFriendFavoriteFlag)
function BNSetFriendFavoriteFlag(id, isFavorite)
end

---Sets the Friend Note for a specific Battle.Net friend.
---@param ID unknown
---@param noteText string @ The text you wish to set as the battle.net friend's new note.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetFriendNote)
function BNSetFriendNote(ID, noteText)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetSelectedBlock)
function BNSetSelectedBlock()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSetSelectedFriend)
function BNSetSelectedFriend()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNSummonFriendByIndex)
function BNSummonFriendByIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BNTokenFindName)
function BNTokenFindName()
end

---Map a bank item button or bag to an inventory slot button for use in inventory functions.
---@param buttonID number @ bank item/bag ID.
---@param isBag unknown @ 1 if buttonID is a bag, nil otherwise.  Same result as ContainerIDToInventoryID, except this one only works for bank bags and is more awkward to use.
---@return unknown invSlot
---[View Documents](https://wow.gamepedia.com/API_BankButtonIDToInvSlotID)
function BankButtonIDToInvSlotID(buttonID, isBag)
end

---Resets all customization categories to original styles.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BarberShopReset)
function BarberShopReset()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BattlefieldMgrEntryInviteResponse)
function BattlefieldMgrEntryInviteResponse()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BattlefieldMgrExitRequest)
function BattlefieldMgrExitRequest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BattlefieldMgrQueueInviteResponse)
function BattlefieldMgrQueueInviteResponse()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BattlefieldMgrQueueRequest)
function BattlefieldMgrQueueRequest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BattlefieldSetPendingReportTarget)
function BattlefieldSetPendingReportTarget()
end

---Accepts an offer to start trading with another player.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BeginTrade)
function BeginTrade()
end

---Accepts the confirmation to bind an item by enchanting it, and proceeds with applying the enchantment.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BindEnchant)
function BindEnchant()
end

---Breaks up large numbers (>=1000), or shortens lengthy decimal values (<1000), into a localized string.
---@param value number @ The number to convert into a localized string
---@return string valueString
---[View Documents](https://wow.gamepedia.com/API_BreakUpLargeNumbers)
function BreakUpLargeNumbers(value)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BuyGuildBankTab)
function BuyGuildBankTab()
end

---Purchase a Guild Charter.
---@param guildName string @ Name of the guild you wish to purchase a guild charter for.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BuyGuildCharter)
function BuyGuildCharter(guildName)
end

---Buys the specified item.
---@param index number @ The index of the item in the merchant's inventory
---@param quantity number @ Optional) - Quantity to buy.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BuyMerchantItem)
function BuyMerchantItem(index, quantity)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_BuyReagentBank)
function BuyReagentBank()
end

---Buys a service available at the current trainer.
---@param index number @ The index of the service to train.
---@return void
---[View Documents](https://wow.gamepedia.com/API_BuyTrainerService)
function BuyTrainerService(index)
end

---API BuybackItem will buyback an item from a merchant if you have the merchant window open.
---@param slot unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_BuybackItem)
function BuybackItem(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CalculateStringEditDistance)
function CalculateStringEditDistance()
end

---Summons the specified companion.
---@param type string @ The type of companion to summon or dismiss: CRITTER or MOUNT.
---@param id number @ The companion index to summon or dismiss, ascending from 1.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CallCompanion)
function CallCompanion(type, id)
end

---Begin Left click in the 3D world.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CameraOrSelectOrMoveStart)
function CameraOrSelectOrMoveStart()
end

---End Left click in the 3D game world.
---@param stickyFlag number @ optional) - If present and set then any camera offset is 'sticky' and remains until explicitly cancelled.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CameraOrSelectOrMoveStop)
function CameraOrSelectOrMoveStop(stickyFlag)
end

---Zooms the camera into the viewplane
---@param increment unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_CameraZoomIn)
function CameraZoomIn(increment)
end

---Zooms the camera out of the viewplane
---@param increment unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_CameraZoomOut)
function CameraZoomOut(increment)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanAffordMerchantItem)
function CanAffordMerchantItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanAutoSetGamePadCursorControl)
function CanAutoSetGamePadCursorControl()
end

---Returns whether the specified unit can be assigned a raid target marker.
---@param unit string @ unitId to query.
---@return boolean canBeRaidTarget
---[View Documents](https://wow.gamepedia.com/API_CanBeRaidTarget)
function CanBeRaidTarget(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanCancelScene)
function CanCancelScene()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanChangePlayerDifficulty)
function CanChangePlayerDifficulty()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanComplainInboxItem)
function CanComplainInboxItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanDualWield)
function CanDualWield()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanEditGuildBankTabInfo)
function CanEditGuildBankTabInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanEditGuildEvent)
function CanEditGuildEvent()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanEditGuildInfo)
function CanEditGuildInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanEditGuildTabInfo)
function CanEditGuildTabInfo()
end

---Checks if the player can edit the guild MOTD.
---@return boolean canEdit
---[View Documents](https://wow.gamepedia.com/API_CanEditMOTD)
function CanEditMOTD()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanEditPublicNote)
function CanEditPublicNote()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanEjectPassengerFromSeat)
function CanEjectPassengerFromSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanExitVehicle)
function CanExitVehicle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanGamePadControlCursor)
function CanGamePadControlCursor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanGuildBankRepair)
function CanGuildBankRepair()
end

---Checks if the player can demote guild members.
---@return boolean canDemote
---[View Documents](https://wow.gamepedia.com/API_CanGuildDemote)
function CanGuildDemote()
end

---Checks whether you have guild inviting permission.
---@return boolean canInvite
---[View Documents](https://wow.gamepedia.com/API_CanGuildInvite)
function CanGuildInvite()
end

---Checks if the player can promote guild members.
---@return boolean canPromote
---[View Documents](https://wow.gamepedia.com/API_CanGuildPromote)
function CanGuildPromote()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanGuildRemove)
function CanGuildRemove()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanHearthAndResurrectFromArea)
function CanHearthAndResurrectFromArea()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanInitiateWarGame)
function CanInitiateWarGame()
end

---Returns whether you can inspect a particular unit.
---@param unit string @ unitId) - Unit to check inspectability of.
---@param showError number @ If true, the function will display an error message (You can't inspect that unit) if you cannot inspect the specified unit.
---@return number canInspect
---[View Documents](https://wow.gamepedia.com/API_CanInspect)
function CanInspect(unit, showError)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanItemBeSocketedToArtifact)
function CanItemBeSocketedToArtifact()
end

---Returns, whether the player can join a battlefield as group or not.
---@return boolean isTrue
---[View Documents](https://wow.gamepedia.com/API_CanJoinBattlefieldAsGroup)
function CanJoinBattlefieldAsGroup()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanLootUnit)
function CanLootUnit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanMapChangeDifficulty)
function CanMapChangeDifficulty()
end

---Can the merchant repair items or not.
---@return number canRepair
---[View Documents](https://wow.gamepedia.com/API_CanMerchantRepair)
function CanMerchantRepair()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanPartyLFGBackfill)
function CanPartyLFGBackfill()
end

---Returns whether you can impeach the Guild Master due to inactivity.
---@return boolean canReplace
---[View Documents](https://wow.gamepedia.com/API_CanReplaceGuildMaster)
function CanReplaceGuildMaster()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanResetTutorials)
function CanResetTutorials()
end

---Returns whether the player is currently on a digsite.
---@return boolean onSite
---[View Documents](https://wow.gamepedia.com/API_CanScanResearchSite)
function CanScanResearchSite()
end

---Returns if the AchievementUI can be displayed.
---@return boolean canShow
---[View Documents](https://wow.gamepedia.com/API_CanShowAchievementUI)
function CanShowAchievementUI()
end

---Returns whether or not the player is allowed to reset instances at the moment.
---@return boolean canReset
---[View Documents](https://wow.gamepedia.com/API_CanShowResetInstances)
function CanShowResetInstances()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanSignPetition)
function CanSignPetition()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanSolveArtifact)
function CanSolveArtifact()
end

---Returns whether you can RaF summon a particular unit.
---@param unit string @ UnitId) - player to check whether you can summon.
---@return number summonable
---[View Documents](https://wow.gamepedia.com/API_CanSummonFriend)
function CanSummonFriend(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanSurrenderArena)
function CanSurrenderArena()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanSwitchVehicleSeat)
function CanSwitchVehicleSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanSwitchVehicleSeats)
function CanSwitchVehicleSeats()
end

---Returns whether the player can track battle pets.
---@return boolean canTrack
---[View Documents](https://wow.gamepedia.com/API_CanTrackBattlePets)
function CanTrackBattlePets()
end

---Needs summary.
---@return boolean canUpgradeExpansion
---[View Documents](https://wow.gamepedia.com/API_CanUpgradeExpansion)
function CanUpgradeExpansion()
end

---Returns if the player has access to the Void Storage.
---@return number canUse
---[View Documents](https://wow.gamepedia.com/API_CanUseVoidStorage)
function CanUseVoidStorage()
end

---Checks if the player can view specific guild recipes.
---@param skillID number @ The skill ID to view recipes of. See GetGuildTradeSkillInfo on how to fetch a skill ID.
---@return boolean canView
---[View Documents](https://wow.gamepedia.com/API_CanViewGuildRecipes)
function CanViewGuildRecipes(skillID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CanWithdrawGuildBankMoney)
function CanWithdrawGuildBankMoney()
end

---Cancels the area Spirit Healer's resurrection in battlegrounds.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelAreaSpiritHeal)
function CancelAreaSpiritHeal()
end

---Exits the barber shop without applying selected customizations.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelBarberShop)
function CancelBarberShop()
end

---Forfeits the current duel, or declines an invitation to duel.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelDuel)
function CancelDuel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelEmote)
function CancelEmote()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelGuildMembershipRequest)
function CancelGuildMembershipRequest()
end

---Removes temporary item buffs, such as Rogue poisons, Shaman weapon buffs, and sharpening stones from either the Main Hand or Off Hand equipment slots.
---@param weaponHand number @ for Main Hand, 2 for Off Hand.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelItemTempEnchantment)
function CancelItemTempEnchantment(weaponHand)
end

---Cancels the logout timer (from camping or quitting).
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelLogout)
function CancelLogout()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelMasterLootRoll)
function CancelMasterLootRoll()
end

---Cancels a pending equip operation.
---@param slot number @ equipment slot to cancel equipping an item to.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelPendingEquip)
function CancelPendingEquip(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelPetPossess)
function CancelPetPossess()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelPreloadingMovie)
function CancelPreloadingMovie()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelScene)
function CancelScene()
end

---Cancels a druid's shapeshift buff.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelShapeshiftForm)
function CancelShapeshiftForm()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelSpellByName)
function CancelSpellByName()
end

---Cancels the currently open trade.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelTrade)
function CancelTrade()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelTradeAccept)
function CancelTradeAccept()
end

---Removes a specific buff from the unit.
---@param unit string @ unitId) - Unit to cancel the buff from, must be under the player's control.
---@param buffIndex number @ index of the buff to cancel, ascending from 1.
---@param filter string @ any of combination of HELPFUL|HARMFUL|PLAYER|RAID|CANCELABLE|NOT_CANCELABLE.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CancelUnitBuff)
function CancelUnitBuff(unit, buffIndex, filter)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CannotBeResurrected)
function CannotBeResurrected()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CaseAccentInsensitiveParse)
function CaseAccentInsensitiveParse()
end

---Cast the corresponding pet skill.
---@param index number @ pet action bar slot index, ascending from 1.
---@param target string @ unit to cast the action on; defaults to target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CastPetAction)
function CastPetAction(index, target)
end

---Casts a shapeshift ability.
---@param index number @ specifies which shapeshift form to activate or toggle; generally equivalent to the index of the form on the stance bar.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CastShapeshiftForm)
function CastShapeshiftForm(index)
end

---Casts the specified spell.
---@param spellIndex number @ index of the spell to cast.
---@param spellbookType string @ spellbook to cast the spell from; one of
---@return void
---[View Documents](https://wow.gamepedia.com/API_CastSpell)
function CastSpell(spellIndex, spellbookType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CastSpellByID)
function CastSpellByID()
end

---Casts the specified spell.
---@param spellName unknown
---@param target string @ unit to cast the spell on. If omitted, target is assumed for spells that require a target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CastSpellByName)
function CastSpellByName(spellName, target)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CenterCamera)
function CenterCamera()
end

---Changes the current action button to the one specified in the arguments.
---@param actionBarPage unknown @ Numer - Which page of your action bar to switch to. Expects an integer 1-6.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChangeActionBarPage)
function ChangeActionBarPage(actionBarPage)
end

---Changes the text color of the specified chat channel.  The color wheel popup calls this function to do the actual work, once the user is done with the popup.
---@param channelname string @ Name of the channel as given in chat-cache.txt files.
---@param red unknown
---@param green unknown
---@param blue unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChangeChatColor)
function ChangeChatColor(channelname, red, green, blue)
end

---Bans a player from the specified channel.
---@param channelName unknown @ The name of the channel to ban on
---@param playerName unknown @ The name of the player to ban
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelBan)
function ChannelBan(channelName, playerName)
end

---Invites the specified user to the channel.
---@param channelName unknown @ The name of the channel to invite to
---@param playerName unknown @ The name of the player to invite
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelInvite)
function ChannelInvite(channelName, playerName)
end

---Kicks a player from the specified channel.
---@param channelName unknown @ The name of the channel to kick from
---@param playerName unknown @ The name of the player to kick
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelKick)
function ChannelKick(channelName, playerName)
end

---Sets the specified player as the channel moderator.
---@param channelName unknown @ The name of the channel to set moderator status on
---@param playerName unknown @ The name of the player to set as a moderator
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelModerator)
function ChannelModerator(channelName, playerName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelSetAllSilent)
function ChannelSetAllSilent()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelSetPartyMemberSilent)
function ChannelSetPartyMemberSilent()
end

---Toggles the channel to display announcements either on or off.
---@param channelName unknown @ The name of the channel to toggle announcements on
---@param name unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelToggleAnnouncements)
function ChannelToggleAnnouncements(channelName, name)
end

---Unbans a player from the specified channel.
---@param channelName unknown @ The name of the channel to remove the ban on
---@param playerName unknown @ The name of the player to unban
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelUnban)
function ChannelUnban(channelName, playerName)
end

---Takes the specified user away from the moderator status.
---@param channelName unknown @ The name of the channel to remove moderator status on
---@param playerName unknown @ The name of the player to remove moderator status from
---@return void
---[View Documents](https://wow.gamepedia.com/API_ChannelUnmoderator)
function ChannelUnmoderator(channelName, playerName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CheckBinderDist)
function CheckBinderDist()
end

---Populates client's inbox with messages.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CheckInbox)
function CheckInbox()
end

---Checks whether you are in range to perform a specific interaction with a specified unit.
---@param unit string @ Unit to compare distance to.
---@param distIndex number @ A value from 1 to 5:
---@return number inRange
---[View Documents](https://wow.gamepedia.com/API_CheckInteractDistance)
function CheckInteractDistance(unit, distIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CheckSpiritHealerDist)
function CheckSpiritHealerDist()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CheckTalentMasterDist)
function CheckTalentMasterDist()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearAchievementComparisonUnit)
function ClearAchievementComparisonUnit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearAchievementSearchString)
function ClearAchievementSearchString()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearAllLFGDungeons)
function ClearAllLFGDungeons()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearAllTracking)
function ClearAllTracking()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearAutoAcceptQuestSound)
function ClearAutoAcceptQuestSound()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearBattlemaster)
function ClearBattlemaster()
end

---Clears the in-game cursor, returning the object held to its original position (equivalent to right-clicking while holding something on the cursor).
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearCursor)
function ClearCursor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearFailedPVPTalentIDs)
function ClearFailedPVPTalentIDs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearFailedTalentIDs)
function ClearFailedTalentIDs()
end

---I believe this is supposed to clear your focus just like /clearfocus does. However, it has been blocked by blizzard or something like that. (/clearfocus still works however.)
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearFocus)
function ClearFocus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearInspectPlayer)
function ClearInspectPlayer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearItemUpgrade)
function ClearItemUpgrade()
end

---Removes all override bindings owned by a particular frame.
---@param owner Frame @ The frame to clear override bindings for.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearOverrideBindings)
function ClearOverrideBindings(owner)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearPartyAssignment)
function ClearPartyAssignment()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearRaidMarker)
function ClearRaidMarker()
end

---Clears everything that has been typed into the 'Send Mail' window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearSendMail)
function ClearSendMail()
end

---Clears the player's target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearTarget)
function ClearTarget()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearTutorials)
function ClearTutorials()
end

---Clears the specified Void Transfer deposit slot [1]
---@param slotIndex number @ Index ranging from 1 to 9 (VOID_DEPOSIT_MAX)
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClearVoidTransferDepositSlot)
function ClearVoidTransferDepositSlot(slotIndex)
end

---Places or picks up an item from the send mail frame.  Can also clear an item rather than picking it up.
---@param itemIndex number @ The index of the item (1-ATTACHMENTS_MAX_SEND(12))
---@param clearItem boolean @ Clear the item already in this slot. (Done by right clicking an item)
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickSendMailItemButton)
function ClickSendMailItemButton(itemIndex, clearItem)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickSocketButton)
function ClickSocketButton()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickTargetTradeButton)
function ClickTargetTradeButton()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickTradeButton)
function ClickTradeButton()
end

---Clicks the specified Void Storage slot [1]
---@param slotIndex number @ Index ranging from 1 to 80 (VOID_STORAGE_MAX)
---@param isRightClick boolean @ Whether the button was right-clicked
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickVoidStorageSlot)
function ClickVoidStorageSlot(slotIndex, isRightClick)
end

---Clicks the specified Void Transfer deposit slot [1]
---@param slotIndex number @ Index ranging from 1 to 9 (VOID_DEPOSIT_MAX). Defaults to 1 if not a valid Index
---@param isRightClick boolean @ Whether the button was right-clicked
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickVoidTransferDepositSlot)
function ClickVoidTransferDepositSlot(slotIndex, isRightClick)
end

---Clicks the specified Void Transfer withdrawal slot [1]
---@param slotIndex number @ Index ranging from 1 to 9 (VOID_WITHDRAW_MAX)
---@param isRightClick boolean @ Whether the button was right-clicked
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickVoidTransferWithdrawalSlot)
function ClickVoidTransferWithdrawalSlot(slotIndex, isRightClick)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClickWorldMapActionButton)
function ClickWorldMapActionButton()
end

---Will Close the Bank Frame if opened.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseBankFrame)
function CloseBankFrame()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseGuildBankFrame)
function CloseGuildBankFrame()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseGuildRegistrar)
function CloseGuildRegistrar()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseGuildRoster)
function CloseGuildRoster()
end

---Close an open item text (book, plaque, etc).
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseItemText)
function CloseItemText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseItemUpgrade)
function CloseItemUpgrade()
end

---Close the loot window.
---@param errNum number @ Optional) - A reason for the window closing.  Unsure whether/how the game deals with error codes passed to it.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseLoot)
function CloseLoot(errNum)
end

---Closes the 'Mailbox' window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseMail)
function CloseMail()
end

---Closes the merchant window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseMerchant)
function CloseMerchant()
end

---Closes the pet stable window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClosePetStables)
function ClosePetStables()
end

---Closes a petition that has been presented to the player.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ClosePetition)
function ClosePetition()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClosePlayerChoice)
function ClosePlayerChoice()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseQuest)
function CloseQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseResearch)
function CloseResearch()
end

---Stops considering the item for socketing, ignoring any tentative changes made.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseSocketInfo)
function CloseSocketInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseTabardCreation)
function CloseTabardCreation()
end

---Closes your Flightpath Map.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseTaxiMap)
function CloseTaxiMap()
end

---Closes the trade window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseTrade)
function CloseTrade()
end

---Closes the trainer window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseTrainer)
function CloseTrainer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CloseVoidStorageFrame)
function CloseVoidStorageFrame()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ClosestGameObjectPosition)
function ClosestGameObjectPosition()
end

---Returns the unit position of the closest creature by ID. Only works for mobs in the starting zones.
---@param creatureID number @ NPC ID of a GUID of a creature.
---@return number xnumber ynumber distance
---[View Documents](https://wow.gamepedia.com/API_ClosestUnitPosition)
function ClosestUnitPosition(creatureID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CollapseAllFactionHeaders)
function CollapseAllFactionHeaders()
end

---Collapse a faction header row.
---@param rowIndex number @ The row index of the header to collapse (Specifying a non-header row can have unpredictable results). The UPDATE_FACTION event is fired after the change since faction indexes will have been shifted around.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CollapseFactionHeader)
function CollapseFactionHeader(rowIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CollapseGuildTradeSkillHeader)
function CollapseGuildTradeSkillHeader()
end

---Collapses the quest header.
---@param questID unknown @ The quest ID of the header you wish to collapse - 0 to collapse all quest headers
---@return void
---[View Documents](https://wow.gamepedia.com/API_CollapseQuestHeader)
function CollapseQuestHeader(questID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CollapseWarGameHeader)
function CollapseWarGameHeader()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogAddFilter)
function CombatLogAddFilter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogAdvanceEntry)
function CombatLogAdvanceEntry()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogClearEntries)
function CombatLogClearEntries()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogGetCurrentEntry)
function CombatLogGetCurrentEntry()
end

---Returns the current COMBAT_LOG_EVENT payload.
---@return unknown eventInfo
---[View Documents](https://wow.gamepedia.com/API_CombatLogGetCurrentEventInfo)
function CombatLogGetCurrentEventInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogGetNumEntries)
function CombatLogGetNumEntries()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogGetRetentionTime)
function CombatLogGetRetentionTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogResetFilter)
function CombatLogResetFilter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogSetCurrentEntry)
function CombatLogSetCurrentEntry()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLogSetRetentionTime)
function CombatLogSetRetentionTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatLog_Object_IsA)
function CombatLog_Object_IsA()
end

---Alters the entity for which the COMBAT_TEXT_UPDATE event fires.
---@param unit string @ UnitId of the entity you want receive notifications for.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CombatTextSetActiveUnit)
function CombatTextSetActiveUnit(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ComplainInboxItem)
function ComplainInboxItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CompleteLFGReadyCheck)
function CompleteLFGReadyCheck()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CompleteLFGRoleCheck)
function CompleteLFGRoleCheck()
end

---Advances the quest completion dialog to the reward selection step.
---@return void
---[View Documents](https://wow.gamepedia.com/API_CompleteQuest)
function CompleteQuest()
end

---Accept an escort quest being started by a player nearby.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmAcceptQuest)
function ConfirmAcceptQuest()
end

---Needs summary.
---@param presenceID number
---@param tank boolean @ optional)
---@param heal unknown
---@param dps boolean @ optional)
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmBNRequestInviteFriend)
function ConfirmBNRequestInviteFriend(presenceID, tank, heal, dps)
end

---Accepts the confirmation to bind an item after attempting to loot a Bind on Pickup item (BoP) or attempting to equip a Bind on Equip item (BoE).
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmBindOnUse)
function ConfirmBindOnUse()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmBinder)
function ConfirmBinder()
end

---Confirm your loot roll after either CONFIRM_LOOT_ROLL or CONFIRM_DISENCHANT_ROLL fires.
---@param rollID number @ As passed by the event. (The number increases with every roll you have in a party)
---@param roll number @ Type of roll: (also passed by the event)
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmLootRoll)
function ConfirmLootRoll(rollID, roll)
end

---After a Bind on Pickup item has been looted via a LootButton, this function needs to be called to confirm that the player wants to loot the item.
---@param slot number @ the loot slot of a BoP loot item that is waiting for confirmation
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmLootSlot)
function ConfirmLootSlot(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmNoRefundOnUse)
function ConfirmNoRefundOnUse()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmOnUse)
function ConfirmOnUse()
end

---Sends a response to a raid ready check
---@param isReady number @ if the player is ready, nil if the player is not ready
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmReadyCheck)
function ConfirmReadyCheck(isReady)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ConfirmTalentWipe)
function ConfirmTalentWipe()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ConsoleAddMessage)
function ConsoleAddMessage()
end

---Execute a console command.
---@param command string @ The console command to execute.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ConsoleExec)
function ConsoleExec(command)
end

---Prints all bag container IDs and their respective inventory IDs(You need to be at the bank for bank inventory IDs to return valid results)
---@param containerID unknown
---@return number bagID
---[View Documents](https://wow.gamepedia.com/API_ContainerIDToInventoryID)
function ContainerIDToInventoryID(containerID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ContainerRefundItemPurchase)
function ContainerRefundItemPurchase()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CopyToClipboard)
function CopyToClipboard()
end

---Creates a font object.
---@param name string @ Globally-accessible name to be assigned for use as _G[name]
---@return unknown fontObject
---[View Documents](https://wow.gamepedia.com/API_CreateFont)
function CreateFont(name)
end

---Creates a new Frame object.
---@param frameType string @ Type of the frame e.g. Frame or Button.
---@param name string @ ? - Globally accessible name to assign to the frame, or nil for an anonymous frame.
---@param parent Frame @ ? - Parent object to assign to the frame, or nil to be parentless; cannot be a string. Can also be set with Frame:SetParent()
---@param template string @ ? - Comma-delimited list of virtual frames to inherit from.
---@param id number @ ? - ID to assign to the frame. Can also be set with Frame:SetID()
---@return Frame frame
---[View Documents](https://wow.gamepedia.com/API_CreateFrame)
function CreateFrame(frameType, name, parent, template, id)
end

---Creates a new macro command/button.
---@param name string @ The name of the macro to be displayed in the UI. The current UI imposes a 16-character limit.
---@param iconFileID number @ |string - A FileID or string identifying the icon texture to use
---@param body string @ optional) - The macro commands to be executed. If this string is longer than 255 characters, only the first 255 will be saved.
---@param perCharacter boolean @ optional) - true to create a per-character macro, nil to create a general macro available to all characters.
---@return number macroId
---[View Documents](https://wow.gamepedia.com/API_CreateMacro)
function CreateMacro(name, iconFileID, body, perCharacter)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CreateNewRaidProfile)
function CreateNewRaidProfile()
end

---Determines if the item in the cursor can be equipped in the specified inventory slot.  Always returns 1 for bank bag slots.
---@param invSlot number @ inventorySlotId) - Inventory slot to query
---@return number fitsInSlot
---[View Documents](https://wow.gamepedia.com/API_CursorCanGoInSlot)
function CursorCanGoInSlot(invSlot)
end

---Returns 1 if the cursor currently holds an item, nil otherwise.
---@return boolean hasItem
---[View Documents](https://wow.gamepedia.com/API_CursorHasItem)
function CursorHasItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CursorHasMacro)
function CursorHasMacro()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CursorHasMoney)
function CursorHasMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_CursorHasSpell)
function CursorHasSpell()
end

---Returns a table representing the last five damaging combat events against the player.
---@param recapID number @ The specific death to view, from 1 to the most recent death. If this is not given, the most recent ID is used.
---@return table events
---[View Documents](https://wow.gamepedia.com/API_DeathRecap_GetEvents)
function DeathRecap_GetEvents(recapID)
end

---Returns a boolean for if the player has any available death events.
---@return boolean hasEvents
---[View Documents](https://wow.gamepedia.com/API_DeathRecap_HasEvents)
function DeathRecap_HasEvents()
end

---Declines an invitation to join a specific chat channel.
---@param channel string @ name of the channel the player was invited to but does not wish to join.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineChannelInvite)
function DeclineChannelInvite(channel)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineGroup)
function DeclineGroup()
end

---Declines a guild invitation.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineGuild)
function DeclineGuild()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineGuildApplicant)
function DeclineGuildApplicant()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineName)
function DeclineName()
end

---Declines the currently offered quest.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineQuest)
function DeclineQuest()
end

---Declines a resurrection offer.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineResurrect)
function DeclineResurrect()
end

---Declines a spell confirmation prompt (e.g. bonus loot roll).
---@param spellID number @ spell ID of the prompt to decline.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeclineSpellConfirmationPrompt)
function DeclineSpellConfirmationPrompt(spellID)
end

---Destroys the item currently held by the cursor.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeleteCursorItem)
function DeleteCursorItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DeleteGMTicket)
function DeleteGMTicket()
end

---Asynchronously request the server to remove a message from the mailbox.
---@param index number @ the index of the message (1 is the first message)
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeleteInboxItem)
function DeleteInboxItem(index)
end

---Deletes a macro.
---@param index_or_macroname unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_DeleteMacro)
function DeleteMacro(index_or_macroname)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DeleteRaidProfile)
function DeleteRaidProfile()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DemoteAssistant)
function DemoteAssistant()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DepositGuildBankMoney)
function DepositGuildBankMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DepositReagentBank)
function DepositReagentBank()
end

---The player stops descending (while flying or swimming).
---@return void
---[View Documents](https://wow.gamepedia.com/API_DescendStop)
function DescendStop()
end

---Destroys a totem/minion.
---@param slot number @ The totem type to be destroyed, where Fire is 1, Earth is 2, Water is 3 and Air is 4.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DestroyTotem)
function DestroyTotem(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DetectWowMouse)
function DetectWowMouse()
end

---Disable an AddOn for subsequent sessions.
---@param index_or_name unknown
---@param character string @ The name of the character (without realm) for whom to disable the addon. Defaults to the current character.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DisableAddOn)
function DisableAddOn(index_or_name, character)
end

---Disable all AddOns for subsequent sessions.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DisableAllAddOns)
function DisableAllAddOns()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DisableSpellAutocast)
function DisableSpellAutocast()
end

---Dismisses a currently-summoned mount or non-combat pet.
---@param type string @ type of companion to dismiss, either MOUNT or CRITTER.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DismissCompanion)
function DismissCompanion(type)
end

---Dismounts the player if the player was mounted.
---@return void
---[View Documents](https://wow.gamepedia.com/API_Dismount)
function Dismount()
end

---Displays the name of the owner of the specified channel in the Default Chat Frame. Same as typing /owner  in chat.
---@param channelName unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_DisplayChannelOwner)
function DisplayChannelOwner(channelName)
end

---@param token string @ the token that describes which emote is being used.  See Emotes Tokens
---@param target string @ UnitId of who the emote will be performed on. If nil, then it performs the emote on your current target, or yourself if you don't have a target. If the specified target does not exist or is out of range, then it performs the emote on yourself.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DoEmote)
function DoEmote(token, target)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DoMasterLootRoll)
function DoMasterLootRoll()
end

---Initiates a raid ready check.  Can only be called by the raid leader, does nothing if called by other raid members or outside of a raid.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DoReadyCheck)
function DoReadyCheck()
end

---Needs summary.
---@return boolean regionSellsExpansions
---[View Documents](https://wow.gamepedia.com/API_DoesCurrentLocaleSellExpansionLevels)
function DoesCurrentLocaleSellExpansionLevels()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DoesItemContainSpec)
function DoesItemContainSpec()
end

---This function returns true if the player character knows the spell.
---@param spellName string
---@return boolean spellExists
---[View Documents](https://wow.gamepedia.com/API_DoesSpellExist)
function DoesSpellExist(spellName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DoesTemplateExist)
function DoesTemplateExist()
end

---Drops the money currently attached to your cursor back into your bag.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DropCursorMoney)
function DropCursorMoney()
end

---Drops an item from the cursor onto the specified target. Can be used to initiate a trade session (though see Trade functions) or feeding pets.
---@param unit unknown @ UnitId - Unit to which you want to give the item on the cursor.
---@return void
---[View Documents](https://wow.gamepedia.com/API_DropItemOnUnit)
function DropItemOnUnit(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DumpMovementCapture)
function DumpMovementCapture()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_DungeonAppearsInRandomLFD)
function DungeonAppearsInRandomLFD()
end

---Clears the encounter journal search results. [1]
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_ClearSearch)
function EJ_ClearSearch()
end

---Ends any active encounter journal search. [1]
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_EndSearch)
function EJ_EndSearch()
end

---Returns the currently selected content tuning ID for BFA instances per EJ_SelectInstance.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_GetContentTuningID)
function EJ_GetContentTuningID()
end

---Returns encounter boss info.
---@param index number @ creature index, up to nine for encounters with multiple bosses.
---@param encounterID number @ optional) - if omitted this will default to the currently viewed encounter.
---@return number idstring namestring descriptionnumber displayInfonumber iconImagenumber uiModelSceneID
---[View Documents](https://wow.gamepedia.com/API_EJ_GetCreatureInfo)
function EJ_GetCreatureInfo(index, encounterID)
end

---Returns the currently active encounter journal tier index.
---@return number index
---[View Documents](https://wow.gamepedia.com/API_EJ_GetCurrentTier)
function EJ_GetCurrentTier()
end

---Returns the currently viewed difficulty in the journal.
---@return number difficultyId
---[View Documents](https://wow.gamepedia.com/API_EJ_GetDifficulty)
function EJ_GetDifficulty()
end

---Returns encounter info from the journal.
---@param encounterID number
---@return string namestring descriptionnumber bossIDnumber rootSectionIDstring linknumber journalInstanceIDnumber dungeonEncounterIDnumber instanceID
---[View Documents](https://wow.gamepedia.com/API_EJ_GetEncounterInfo)
function EJ_GetEncounterInfo(encounterID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_GetEncounterInfoByIndex)
function EJ_GetEncounterInfoByIndex()
end

---Returns instance info for the Encounter Journal.
---@param index number
---@param isRaid boolean @ whether to return raid or normal instances.
---@return unknown instanceIDunknown nameunknown descriptionunknown bgImageunknown buttonImage1unknown loreImageunknown buttonImage2unknown dungeonAreaMapIDunknown linkunknown shouldDisplayDifficulty
---[View Documents](https://wow.gamepedia.com/API_EJ_GetInstanceByIndex)
function EJ_GetInstanceByIndex(index, isRaid)
end

---Returns any corresponding instance ID for a UiMapID.
---@param mapID number
---@return number instanceID
---[View Documents](https://wow.gamepedia.com/API_EJ_GetInstanceForMap)
function EJ_GetInstanceForMap(mapID)
end

---Returns instance info for the Encounter Journal.
---@param instanceID number @ optional) - if omitted, this will default to the currently selected instance per EJ_SelectInstance.
---@return unknown nameunknown descriptionunknown bgImageunknown buttonImage1unknown loreImageunknown buttonImage2unknown dungeonAreaMapIDunknown linkunknown shouldDisplayDifficulty
---[View Documents](https://wow.gamepedia.com/API_EJ_GetInstanceInfo)
function EJ_GetInstanceInfo(instanceID)
end

---Returns the sort order for an inventory type.
---@param invType number @ Enum.InventoryType
---@return number sortOrder
---[View Documents](https://wow.gamepedia.com/API_EJ_GetInvTypeSortOrder)
function EJ_GetInvTypeSortOrder(invType)
end

---Returns the currently used loot filter.
---@return number classIDnumber specID
---[View Documents](https://wow.gamepedia.com/API_EJ_GetLootFilter)
function EJ_GetLootFilter()
end

---Returns boss pin locations on instance maps. Unused in the FrameXML.
---@param mapID unknown
---@param index number @ index of the boss pins.
---@param fromJournal boolean @ optional) - this function seems to only return results when passing true.
---@return number xnumber ynumber instanceIDstring namestring descriptionnumber encounterIDnumber rootSectionIDstring link
---[View Documents](https://wow.gamepedia.com/API_EJ_GetMapEncounter)
function EJ_GetMapEncounter(mapID, index, fromJournal)
end

---Returns the amount of encounters that drop the same loot item.
---@param index number @ ranging from 1 to EJ_GetNumLoot.
---@return number numLoot
---[View Documents](https://wow.gamepedia.com/API_EJ_GetNumEncountersForLootByIndex)
function EJ_GetNumEncountersForLootByIndex(index)
end

---Returns the amount of loot for the currently selected instance or encounter per EJ_SelectInstance.
---@return number numLoot
---[View Documents](https://wow.gamepedia.com/API_EJ_GetNumLoot)
function EJ_GetNumLoot()
end

---Returns the number of search results for the Encounter Journal.
---@return number numResults
---[View Documents](https://wow.gamepedia.com/API_EJ_GetNumSearchResults)
function EJ_GetNumSearchResults()
end

---Returns the number of valid encounter journal tier indices.
---@return number numTiers
---[View Documents](https://wow.gamepedia.com/API_EJ_GetNumTiers)
function EJ_GetNumTiers()
end

---Returns the search bar's progress ratio.
---@return number searchProgress
---[View Documents](https://wow.gamepedia.com/API_EJ_GetSearchProgress)
function EJ_GetSearchProgress()
end

---Returns search results for the Encounter Journal.
---@param index number @ search result index, ascending from 1 to EJ_GetNumSearchResults().
---@return number idnumber stypenumber difficultyIDnumber instanceIDnumber encounterIDstring itemLink
---[View Documents](https://wow.gamepedia.com/API_EJ_GetSearchResult)
function EJ_GetSearchResult(index)
end

---Returns the amount of Encounter Journal objects to search through.
---@return number searchSize
---[View Documents](https://wow.gamepedia.com/API_EJ_GetSearchSize)
function EJ_GetSearchSize()
end

---Returns the parent Section ID if available.
---@param sectionID number
---@return number sectionIDnumber parentSectionIDnumber grandParentSectionID
---[View Documents](https://wow.gamepedia.com/API_EJ_GetSectionPath)
function EJ_GetSectionPath(sectionID)
end

---Get some information about the encounter journal tier for index.
---@param index number @ The index of the tier. Ranging from 1 to EJ_GetNumTiers(). See below for details.
---@return string namestring link
---[View Documents](https://wow.gamepedia.com/API_EJ_GetTierInfo)
function EJ_GetTierInfo(index)
end

---Returns the supplementary instance and encounter ID for an encounter or section ID.
---@param jtype number @ journal type
---@param id number @ depending on journal type; 0=instanceID, 1=encounterID, 2=sectionID
---@return number instanceIDnumber encounterIDnumber sectionIDunknown tierIndex
---[View Documents](https://wow.gamepedia.com/API_EJ_HandleLinkPath)
function EJ_HandleLinkPath(jtype, id)
end

---Returns whether the selected instance is a raid.
---@return boolean isRaid
---[View Documents](https://wow.gamepedia.com/API_EJ_InstanceIsRaid)
function EJ_InstanceIsRaid()
end

---Returns whether the loot list is out of date in relation to any filters when getting new loot data.
---@return boolean listOutOfDate
---[View Documents](https://wow.gamepedia.com/API_EJ_IsLootListOutOfDate)
function EJ_IsLootListOutOfDate()
end

---Returns whether the current search has finished.
---@return boolean isFinished
---[View Documents](https://wow.gamepedia.com/API_EJ_IsSearchFinished)
function EJ_IsSearchFinished()
end

---Returns whether the difficultyID is valid for use in the journal.
---@param difficultyID number @ the following IDs should be valid:
---@return boolean isValid
---[View Documents](https://wow.gamepedia.com/API_EJ_IsValidInstanceDifficulty)
function EJ_IsValidInstanceDifficulty(difficultyID)
end

---Clears any current loot filter in the journal.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_ResetLootFilter)
function EJ_ResetLootFilter()
end

---Selects an encounter for the Encounter Journal API state.
---@param encounterID number
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_SelectEncounter)
function EJ_SelectEncounter(encounterID)
end

---Selects an instance for the Encounter Journal API state. [1]
---@param instanceID number
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_SelectInstance)
function EJ_SelectInstance(instanceID)
end

---Selects a tier for the Encounter Journal API state.
---@param index number @ ranging from 1 to EJ_GetNumTiers.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_SelectTier)
function EJ_SelectTier(index)
end

---Sets the encounter difficulty shown in the Encounter Journal.
---@param difficultyID number @ ID of the difficulty to display ability/loot/encounter information for, as per GetDifficultyInfo.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_SetDifficulty)
function EJ_SetDifficulty(difficultyID)
end

---Sets the loot filter for a specialization.
---@param classID number
---@param specID number
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_SetLootFilter)
function EJ_SetLootFilter(classID, specID)
end

---Starts a search in the journal.
---@param text string
---@return void
---[View Documents](https://wow.gamepedia.com/API_EJ_SetSearch)
function EJ_SetSearch(text)
end

---Modifies an existing macro. This function may only be called when out of combat.
---@param index_or_macroName unknown
---@param name string @ The name to assign to the macro. The current UI imposes a 16-character limit. The existing name remains unchanged if this argument is nil.
---@param icon string @ The path to the icon texture to assign to the macro. The existing icon remains unchanged if this argument is nil.
---@param body string @ The macro commands to be executed. If this string is longer than 255 characters, only the first 255 will be saved.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EditMacro)
function EditMacro(index_or_macroName, name, icon, body)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_EjectPassengerFromSeat)
function EjectPassengerFromSeat()
end

---Enables an AddOn for subsequent sessions.
---@param index_or_name unknown
---@param character string @ The name of the character (without realm) for whom to disable the addon, Defaults to the current character.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EnableAddOn)
function EnableAddOn(index_or_name, character)
end

---Enable all AddOns for subsequent sessions.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EnableAllAddOns)
function EnableAllAddOns()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_EnableSpellAutocast)
function EnableSpellAutocast()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_EndBoundTradeable)
function EndBoundTradeable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_EndRefund)
function EndRefund()
end

---Returns frame which follows current frame, or first frame if argument is nil. The order of iteration follows the order that the frames were created in.
---@param currentFrame table @ Frame) - current frame or nil to get first frame.
---@return table nextFrame
---[View Documents](https://wow.gamepedia.com/API_EnumerateFrames)
function EnumerateFrames(currentFrame)
end

---Retrieves all available server channels (zone dependent).
---@return unknown channel1unknown channel2unknown ...
---[View Documents](https://wow.gamepedia.com/API_EnumerateServerChannels)
function EnumerateServerChannels()
end

---Equips the currently picked up item to a specific inventory slot.
---@param slot number @ The InventorySlotId to place the item into.
---@return void
---[View Documents](https://wow.gamepedia.com/API_EquipCursorItem)
function EquipCursorItem(slot)
end

---Equips an item, optionally into a specified slot.
---@param itemId_or_itemName_or_itemLink unknown
---@param slot number @ optional) - The inventory slot to put the item in, obtained via GetInventorySlotInfo().
---@return void
---[View Documents](https://wow.gamepedia.com/API_EquipItemByName)
function EquipItemByName(itemId_or_itemName_or_itemLink, slot)
end

---Equips the currently pending Bind-on-Equip or Bind-on-Pickup item from the specified inventory slot.
---@param invSlot unknown @ InventorySlotID - The slot ID of the item being equipped
---@return void
---[View Documents](https://wow.gamepedia.com/API_EquipPendingItem)
function EquipPendingItem(invSlot)
end

---Applies all pending void transfers (and pays for the cost of any deposited items) [1]
---@return void
---[View Documents](https://wow.gamepedia.com/API_ExecuteVoidTransfer)
function ExecuteVoidTransfer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ExpandAllFactionHeaders)
function ExpandAllFactionHeaders()
end

---Expand a faction header row.
---@param rowIndex number @ The row index of the header to expand (Specifying a non-header row can have unpredictable results). The UPDATE_FACTION event is fired after the change since faction indexes will have been shifted around.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ExpandFactionHeader)
function ExpandFactionHeader(rowIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ExpandGuildTradeSkillHeader)
function ExpandGuildTradeSkillHeader()
end

---Expands the quest header.
---@param questID number @ The index of the header you wish to expand. - 0 to expand all quest headers
---@return void
---[View Documents](https://wow.gamepedia.com/API_ExpandQuestHeader)
function ExpandQuestHeader(questID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ExpandWarGameHeader)
function ExpandWarGameHeader()
end

---Toggle the At War status of a faction row.
---@param rowIndex number @ The row index of the faction to toggle the At War status for. The row must have a true canToggleAtWar value (From GetFactionInfo)
---@return void
---[View Documents](https://wow.gamepedia.com/API_FactionToggleAtWar)
function FactionToggleAtWar(rowIndex)
end

---Fills a table with localized class names, callable with localization-independent class IDs.
---@param classTable table @ The table you want to be filled with the data (does not have to be an empty table).
---@param isFemale boolean @ If true the table will be filled with female class names.
---@return void
---[View Documents](https://wow.gamepedia.com/API_FillLocalizedClassList)
function FillLocalizedClassList(classTable, isFemale)
end

---Needs summary.
---@param spellID number
---@return number baseSpellID
---[View Documents](https://wow.gamepedia.com/API_FindBaseSpellByID)
function FindBaseSpellByID(spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_FindFlyoutSlotBySpellID)
function FindFlyoutSlotBySpellID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_FindSpellBookSlotBySpellID)
function FindSpellBookSlotBySpellID()
end

---Needs summary.
---@param spellID number
---@return number overrideSpellID
---[View Documents](https://wow.gamepedia.com/API_FindSpellOverrideByID)
function FindSpellOverrideByID(spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_FlagTutorial)
function FlagTutorial()
end

---Flashes the game client icon in the Operating System (does not require a hardware event).
---@return void
---[View Documents](https://wow.gamepedia.com/API_FlashClientIcon)
function FlashClientIcon()
end

---Rotates the camera about the Z-axis.
---@param angle number
---@return void
---[View Documents](https://wow.gamepedia.com/API_FlipCameraYaw)
function FlipCameraYaw(angle)
end

---Returns whether a flyout contains a specific spell.
---@param flyoutID number @ flyout ID (as returned by GetSpellBookItemInfo or GetActionInfo).
---@param spellID number @ spell ID.
---@return boolean hasSpell
---[View Documents](https://wow.gamepedia.com/API_FlyoutHasSpell)
function FlyoutHasSpell(flyoutID, spellID)
end

---Sets the focus target.
---@param unit string @ Unit to focus.
---@return void
---[View Documents](https://wow.gamepedia.com/API_FocusUnit)
function FocusUnit(unit)
end

---Start following an allied unit
---@param unit string @ the UnitID to follow, e.g. target, party1, raid1, etc..
---@return void
---[View Documents](https://wow.gamepedia.com/API_FollowUnit)
function FollowUnit(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ForceLogout)
function ForceLogout()
end

---Instantly quits the game, bypassing the usual 20 seconds countdown.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ForceQuit)
function ForceQuit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ForfeitDuel)
function ForfeitDuel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_FrameXML_Debug)
function FrameXML_Debug()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMEuropaBugsEnabled)
function GMEuropaBugsEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMEuropaComplaintsEnabled)
function GMEuropaComplaintsEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMEuropaSuggestionsEnabled)
function GMEuropaSuggestionsEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMEuropaTicketsEnabled)
function GMEuropaTicketsEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMItemRestorationButtonEnabled)
function GMItemRestorationButtonEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMQuickTicketSystemEnabled)
function GMQuickTicketSystemEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMQuickTicketSystemThrottled)
function GMQuickTicketSystemThrottled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMReportLag)
function GMReportLag()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMRequestPlayerInfo)
function GMRequestPlayerInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMResponseResolve)
function GMResponseResolve()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMSurveyAnswer)
function GMSurveyAnswer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMSurveyAnswerSubmit)
function GMSurveyAnswerSubmit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMSurveyCommentSubmit)
function GMSurveyCommentSubmit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMSurveyNumAnswers)
function GMSurveyNumAnswers()
end

---Usage: GMSurveyGetQuestion(index)
---@return void
---[View Documents](https://wow.gamepedia.com/API_GMSurveyQuestion)
function GMSurveyQuestion()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GMSurveySubmit)
function GMSurveySubmit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GameMovieFinished)
function GameMovieFinished()
end

---Returns the expansion level the account has been flagged for.
---@return number expansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetAccountExpansionLevel)
function GetAccountExpansionLevel()
end

---Returns the category number the requested achievement belongs to.
---@param achievementID number @ ID of the achievement to retrieve information for.
---@return number categoryID
---[View Documents](https://wow.gamepedia.com/API_GetAchievementCategory)
function GetAchievementCategory(achievementID)
end

---Returns information about the comparison unit's achievements.
---@param achievementID number @ ID of the achievement to retrieve information for.
---@return boolean completednumber monthnumber daynumber year
---[View Documents](https://wow.gamepedia.com/API_GetAchievementComparisonInfo)
function GetAchievementComparisonInfo(achievementID)
end

---Returns information about the given Achievement's specified criteria.
---@param achievementID number
---@param criteriaIndex number @ Index of the criteria to query, ascending from 1 up to GetAchievementNumCriteria(achievementID).
---@param countHidden boolean
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementCriteriaInfo)
function GetAchievementCriteriaInfo(achievementID, criteriaIndex, countHidden)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementCriteriaInfoByID)
function GetAchievementCriteriaInfoByID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementGuildRep)
function GetAchievementGuildRep()
end

---Returns information about the given Achievement.
---@param achievementID_or_categoryID unknown
---@param index number @ An offset into the achievement category, between 1 and GetCategoryNumAchievements(categoryID)
---@return unknown idunknown nameunknown pointsunknown completedunknown monthunknown dayunknown yearunknown descriptionunknown flagsunknown iconunknown rewardTextunknown isGuildunknown wasEarnedByMeunknown earnedBy
---[View Documents](https://wow.gamepedia.com/API_GetAchievementInfo)
function GetAchievementInfo(achievementID_or_categoryID, index)
end

---Returns a achievementLink for the specified Achievement.
---@param AchievementID number @ The ID of the Achievement.
---@return string achievementLink
---[View Documents](https://wow.gamepedia.com/API_GetAchievementLink)
function GetAchievementLink(AchievementID)
end

---Returns the number of criteria for the given Achievement.
---@param achievementID unknown @ Uniquely identifies each achievement
---@return number numCriteria
---[View Documents](https://wow.gamepedia.com/API_GetAchievementNumCriteria)
function GetAchievementNumCriteria(achievementID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementNumRewards)
function GetAchievementNumRewards()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementReward)
function GetAchievementReward()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementSearchProgress)
function GetAchievementSearchProgress()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAchievementSearchSize)
function GetAchievementSearchSize()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetActionAutocast)
function GetActionAutocast()
end

---Returns the index of the currently-selected action bar page.
---@return number index
---[View Documents](https://wow.gamepedia.com/API_GetActionBarPage)
function GetActionBarPage()
end

---Gets the toggle states of the extra action bars.
---@return number bottomLeftStatenumber bottomRightStatenumber sideRightStatenumber sideRight2State
---[View Documents](https://wow.gamepedia.com/API_GetActionBarToggles)
function GetActionBarToggles()
end

---Returns information about the charges of a charge-accumulating player ability.
---@param slot number @ The action slot to retrieve data from.
---@return number currentChargesnumber maxChargesnumber cooldownStartnumber cooldownDurationnumber chargeModRate
---[View Documents](https://wow.gamepedia.com/API_GetActionCharges)
function GetActionCharges(slot)
end

---Retrieves the cooldown data of the action specified.
---@param slot number @ The action slot to retrieve data from.
---@return number startnumber durationnumber enablenumber modRate
---[View Documents](https://wow.gamepedia.com/API_GetActionCooldown)
function GetActionCooldown(slot)
end

---Gets the available count for an action, if applicable.
---@param actionSlot unknown
---@return unknown text
---[View Documents](https://wow.gamepedia.com/API_GetActionCount)
function GetActionCount(actionSlot)
end

---Returns information about a specific action.
---@param slot number @ Action slot to retrieve information about.
---@return string actionTypeunknown idunknown subType
---[View Documents](https://wow.gamepedia.com/API_GetActionInfo)
function GetActionInfo(slot)
end

---Returns information about a loss-of-control cooldown affecting an action.
---@param slot number @ action slot to query information about.
---@return number startnumber duration
---[View Documents](https://wow.gamepedia.com/API_GetActionLossOfControlCooldown)
function GetActionLossOfControlCooldown(slot)
end

---Gets the text label for an action.
---@param actionSlot unknown
---@return unknown text
---[View Documents](https://wow.gamepedia.com/API_GetActionText)
function GetActionText(actionSlot)
end

---Returns the filepath for an action's texture.
---@param actionSlot unknown
---@return unknown texture
---[View Documents](https://wow.gamepedia.com/API_GetActionTexture)
function GetActionTexture(actionSlot)
end

---Returns the information for a specific race's active artifact.
---@param raceIndex unknown
---@param artifactIndex number
---@return string artifactNamestring artifactDescriptionstring artifactRaritystring artifactIconstring hoverDescriptionnumber keystoneCountstring bgTexture
---[View Documents](https://wow.gamepedia.com/API_GetActiveArtifactByRace)
function GetActiveArtifactByRace(raceIndex, artifactIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetActiveLevel)
function GetActiveLevel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetActiveLootRollIDs)
function GetActiveLootRollIDs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetActiveQuestID)
function GetActiveQuestID()
end

---Returns the index of the current active specialization/talent/glyph group.
---@param isInspect boolean @ If true returns the information for the inspected unit instead of the player. Defaults to false.
---@return number activeSpec
---[View Documents](https://wow.gamepedia.com/API_GetActiveSpecGroup)
function GetActiveSpecGroup(isInspect)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetActiveTitle)
function GetActiveTitle()
end

---Returns the total time used by the specified AddOn.
---@param index_or_name unknown
---@return number time
---[View Documents](https://wow.gamepedia.com/API_GetAddOnCPUUsage)
function GetAddOnCPUUsage(index_or_name)
end

---Get the required dependencies for an AddOn.
---@param index_or_name unknown
---@return unknown dep1unknown dep2unknown dep3unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetAddOnDependencies)
function GetAddOnDependencies(index_or_name)
end

---Get the enabled state of an addon for a character
---@param character string @ The name of the character to check against or nil.
---@param addonIndex_or_AddOnName unknown
---@return number enabledState
---[View Documents](https://wow.gamepedia.com/API_GetAddOnEnableState)
function GetAddOnEnableState(character, addonIndex_or_AddOnName)
end

---Get information about an AddOn.
---@param index_or_name unknown
---@return string namestring titlestring notesboolean loadablestring reasonstring securityboolean newVersion
---[View Documents](https://wow.gamepedia.com/API_GetAddOnInfo)
function GetAddOnInfo(index_or_name)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAddOnMemoryUsage)
function GetAddOnMemoryUsage()
end

---Returns addon metadata.
---@param addon string @ Addon name to look up metadata for
---@param field string @ Field name. May be Title, Notes, Author, Version, or anything starting with X-
---@return string value
---[View Documents](https://wow.gamepedia.com/API_GetAddOnMetadata)
function GetAddOnMetadata(addon, field)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAddOnOptionalDependencies)
function GetAddOnOptionalDependencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAllowLowLevelRaid)
function GetAllowLowLevelRaid()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAlternativeDefaultLanguage)
function GetAlternativeDefaultLanguage()
end

---Returns the localized name for Archaeology.
---@return unknown izedName
---[View Documents](https://wow.gamepedia.com/API_GetArchaeologyInfo)
function GetArchaeologyInfo()
end

---Returns the information for a specific race used in Archaeology.
---@param raceIndex number @ Index of the race to query, between 1 and GetNumArchaeologyRaces().
---@return string raceNamenumber raceTexturenumber raceItemIDnumber numFragmentsCollectednumber numFragmentsRequirednumber maxFragments
---[View Documents](https://wow.gamepedia.com/API_GetArchaeologyRaceInfo)
function GetArchaeologyRaceInfo(raceIndex)
end

---Returns information about a branch of Archaeology.
---@param branchID number @ ID of the research branch (race) to query. The following are the valid IDs:
---@return string raceNamenumber raceTextureIDnumber raceItemIDnumber numFragmentsCollectednumber numFragmentsRequirednumber maxFragments
---[View Documents](https://wow.gamepedia.com/API_GetArchaeologyRaceInfoByID)
function GetArchaeologyRaceInfoByID(branchID)
end

---Gets the time left until the next resurrection cast.
---@return number timeleft
---[View Documents](https://wow.gamepedia.com/API_GetAreaSpiritHealerTime)
function GetAreaSpiritHealerTime()
end

---Needs summary.
---@return string areaText
---[View Documents](https://wow.gamepedia.com/API_GetAreaText)
function GetAreaText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetArenaOpponentSpec)
function GetArenaOpponentSpec()
end

---Returns the information for a specific race's artifact.
---@param raceIndex number @ Index of the race to pick the artifact from.
---@param artifactIndex number @ Index of the artifact.
---@return string artifactNamestring artifactDescriptionnumber artifactRaritystring artifactIconstring hoverDescriptionnumber keystoneCountstring bgTexturenumber firstCompletionTimenumber completionCount
---[View Documents](https://wow.gamepedia.com/API_GetArtifactInfoByRace)
function GetArtifactInfoByRace(raceIndex, artifactIndex)
end

---Returns information about current used fragments for the selected artifact.
---@return number numFragmentsCollectednumber numFragmentsAddednumber numFragmentsRequired
---[View Documents](https://wow.gamepedia.com/API_GetArtifactProgress)
function GetArtifactProgress()
end

---Returns attack power granted by particular amount of a particular stat.
---@param statId number @ Index of the stat (Strength, Agility, ...) to check the bonus AP of.
---@param amount number @ Amount of the stat to check the AP value of.
---@return number ap
---[View Documents](https://wow.gamepedia.com/API_GetAttackPowerForStat)
function GetAttackPowerForStat(statId, amount)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAutoCompletePresenceID)
function GetAutoCompletePresenceID()
end

---Returns a table of realm names for auto-completion.
---@param realmNames table @ If a table is provided, it will be populated with realm names; otherwise, a new table will be created.
---@return table realmNames
---[View Documents](https://wow.gamepedia.com/API_GetAutoCompleteRealms)
function GetAutoCompleteRealms(realmNames)
end

---Returns possible player names matching a given prefix string and specified requirements.
---@param text string @ first characters of the possible names to be autocompleted
---@param include number @ bit mask of filters that the results must match at least one of.
---@param exclude number @ bit mask of filters that the results must not match any of.
---@param maxResults number @ number of results desired.
---@param cursorPosition number @ position of the cursor within the editbox (i.e. how much of the text string should be matching).
---@return unknown nick1unknown nick2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetAutoCompleteResults)
function GetAutoCompleteResults(text, include, exclude, maxResults, cursorPosition)
end

---Returns whether guild invitations are being automatically declined.
---@return number enabled
---[View Documents](https://wow.gamepedia.com/API_GetAutoDeclineGuildInvites)
function GetAutoDeclineGuildInvites()
end

---Returns information about a popup quest notification.
---@param index number @ which popup to get information about, between 1 and GetNumAutoQuestPopUps()
---@return number questIDstring type
---[View Documents](https://wow.gamepedia.com/API_GetAutoQuestPopUp)
function GetAutoQuestPopUp(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAvailableBandwidth)
function GetAvailableBandwidth()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAvailableLevel)
function GetAvailableLevel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAvailableLocaleInfo)
function GetAvailableLocaleInfo()
end

---Two functions return lists of the available locales:
---@param ignoreLocalRestrictions boolean @ Returns the complete list, not only those locales which the game client might use in the current region (NA, Europe, etc.)
---@return unknown aaAAunknown bbBBunknown ccCCunknown ...
---[View Documents](https://wow.gamepedia.com/API_GetAvailableLocales)
function GetAvailableLocales(ignoreLocalRestrictions)
end

---Returns information about the type of an available quest.
---@param index number @ Index of the available quest to query, starting from 1.
---@return boolean isTrivialnumber frequencyboolean isRepeatableboolean isLegendary
---[View Documents](https://wow.gamepedia.com/API_GetAvailableQuestInfo)
function GetAvailableQuestInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAvailableTitle)
function GetAvailableTitle()
end

---Returns the average item level of the player's character and average item level equipped.
---@return number avgItemLevelnumber avgItemLevelEquippednumber avgItemLevelPvp
---[View Documents](https://wow.gamepedia.com/API_GetAverageItemLevel)
function GetAverageItemLevel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetAvoidance)
function GetAvoidance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBackgroundLoadingStatus)
function GetBackgroundLoadingStatus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBackpackAutosortDisabled)
function GetBackpackAutosortDisabled()
end

---Returns the name of the bag for the selected index
---@param index number @ number of the bag the item is in, 0 is your backpack, 1-4 are the four additional bags, numbered right to left
---@return string bagName
---[View Documents](https://wow.gamepedia.com/API_GetBagName)
function GetBagName(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBagSlotFlag)
function GetBagSlotFlag()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBankAutosortDisabled)
function GetBankAutosortDisabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBankBagSlotFlag)
function GetBankBagSlotFlag()
end

---Returns the price of a particular bank slot.
---@param numSlots number @ Number of slots already purchased.
---@return number cost
---[View Documents](https://wow.gamepedia.com/API_GetBankSlotCost)
function GetBankSlotCost(numSlots)
end

---Returns information about the current selection for a barber shop customization.
---@param catId number @ Ascending index of the customization category to retrieve information for.
---@return string nameunknown unknownunknown unknownnumber isCurrent
---[View Documents](https://wow.gamepedia.com/API_GetBarberShopStyleInfo)
function GetBarberShopStyleInfo(catId)
end

---Returns the total costs of the cosmetic changes.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBarberShopTotalCost)
function GetBarberShopTotalCost()
end

---Returns the faction played during a cross faction battleground.
---@return unknown myFaction
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldArenaFaction)
function GetBattlefieldArenaFaction()
end

---Get estimated wait time for a Battlefield's availability
---@return number waitTime
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldEstimatedWaitTime)
function GetBattlefieldEstimatedWaitTime()
end

---Used to position the flag icon on the world map and the battlefield minimap.
---@param index number @ Index to get the flag position from
---@return number flagXnumber flagYstring flagToken
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldFlagPosition)
function GetBattlefieldFlagPosition(index)
end

---Get shutdown timer for the battlefield instance.
---@return number expiration
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldInstanceExpiration)
function GetBattlefieldInstanceExpiration()
end

---Returns the time passed since the battleground started.
---@return number time
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldInstanceRunTime)
function GetBattlefieldInstanceRunTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldMapIconScale)
function GetBattlefieldMapIconScale()
end

---@param index number @ Index of queue to get the expiration from
---@return number expiration
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldPortExpiration)
function GetBattlefieldPortExpiration(index)
end

---Returns information about a player's score in battlegrounds.
---@param index number @ The characters index in battlegrounds, going from 1 to GetNumBattlefieldScores().
---@return string namenumber killingBlowsnumber honorableKillsnumber deathsnumber honorGainednumber factionstring racestring classstring classTokennumber damageDonenumber healingDoneunknown bgRatingunknown ratingChangeunknown preMatchMMRunknown mmrChangestring talentSpec
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldScore)
function GetBattlefieldScore(index)
end

---Get data from the custom battlefield scoreboard columns
---@param playerIndex number @ Player you want to grab the data for
---@param slotIndex number @ Column you want to grab the data from
---@return unknown battlefieldStatData
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldStatData)
function GetBattlefieldStatData(playerIndex, slotIndex)
end

---Get the status of the arena, battleground, or wargame that the player is either queued for or inside.
---@param index number @ Index of the battlefield you wish to view, in the range of 1 to GetMaxBattlefieldID()
---@return string statusstring mapNamenumber teamSizenumber registeredMatchunknown suspendedQueuestring queueTypestring gameTypestring roleunknown asGroupstring shortDescriptionstring longDescription
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldStatus)
function GetBattlefieldStatus(index)
end

---Returns information regarding an Arena team
---@param index number @ Which team to get information on, 0 is Green team and 1 is Gold Team
---@return string teamNamenumber oldTeamRatingnumber newTeamRatingnumber teamRating
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldTeamInfo)
function GetBattlefieldTeamInfo(index)
end

---Get time this player's been in the queue in milliseconds
---@param battlegroundQueuePosition number @ The queue position.
---@return number timeInQueue
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldTimeWaited)
function GetBattlefieldTimeWaited(battlegroundQueuePosition)
end

---Get the winner of the battlefield
---@return number winner
---[View Documents](https://wow.gamepedia.com/API_GetBattlefieldWinner)
function GetBattlefieldWinner()
end

---Returns information about a battleground type.
---@param index number @ battleground type index, 1 to GetNumBattlegroundTypes().
---@return string namenumber canEnternumber isHolidaynumber isRandomnumber battleGroundIDstring info
---[View Documents](https://wow.gamepedia.com/API_GetBattlegroundInfo)
function GetBattlegroundInfo(index)
end

---[NYI] Returns battlegrounds points earned by a team.
---@param team number @ team to query the points of; 0 for Horde, 1 for Alliance.
---@return number currentPointsnumber maxPoints
---[View Documents](https://wow.gamepedia.com/API_GetBattlegroundPoints)
function GetBattlegroundPoints(team)
end

---Returns the dungeon ID of the most appropriate Flex Raid instance for the player.
---@return number flexDungeonID
---[View Documents](https://wow.gamepedia.com/API_GetBestFlexRaidChoice)
function GetBestFlexRaidChoice()
end

---Returns the suggested/default Dungeon Id for the Raid Finder [1]
---@return number dungeonId
---[View Documents](https://wow.gamepedia.com/API_GetBestRFChoice)
function GetBestRFChoice()
end

---Returns the time spent logged in in current billing unit. This function is to limit players from playing the game for too long.
---@return number secondsRemaining
---[View Documents](https://wow.gamepedia.com/API_GetBillingTimeRested)
function GetBillingTimeRested()
end

---Finds the subzone the player's Hearthstone is set to.
---@return unknown bindLocation
---[View Documents](https://wow.gamepedia.com/API_GetBindLocation)
function GetBindLocation()
end

---Returns the command name and all keys currently bound to the specified binding.
---@param index number @ index of the binding to query, from 1 to GetNumBindings().
---@param mode number @ optional, defaults to 1) - ?
---@return string commandstring categoryunknown key1unknown key2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetBinding)
function GetBinding(index, mode)
end

---Returns the name of the action performed by the specified binding.
---@param binding string @ The name of the key (eg. BUTTON1, 1, CTRL-G)
---@param checkOverride boolean @ optional) - if true, override bindings will be checked, otherwise, only default (bindings.xml/SetBinding) bindings are consulted.
---@return string action
---[View Documents](https://wow.gamepedia.com/API_GetBindingAction)
function GetBindingAction(binding, checkOverride)
end

---Returns the binding action performed when the specified key combination is triggered.
---@param key string @ binding key to query, e.g. G, ALT-G, ALT-CTRL-SHIFT-F1.
---@return string bindingAction
---[View Documents](https://wow.gamepedia.com/API_GetBindingByKey)
function GetBindingByKey(key)
end

---Returns all keys currently bound to the command specified by command.  This function is almost identical to GetBinding(index) except it takes the command name as an argument instead of the index and doesn't return the command name along with the key bindings.
---@param command unknown @ The name of the command to get key bindings for (e.g. MOVEFORWARD, TOGGLEFRIENDSTAB)
---@return unknown key1unknown key2
---[View Documents](https://wow.gamepedia.com/API_GetBindingKey)
function GetBindingKey(command)
end

---Returns the localized string value for the given key and prefix. Essentially a glorified getglobal() function.
---@param key string @ optional) - The name of the key (e.g. UP, SHIFT-PAGEDOWN)
---@param prefix string @ optional) - The prefix of the variable name you're looking for.  Usually KEY_ or BINDING_NAME_.
---@param abbreviate boolean @ optional) - Whether to return an abbreviated version of the modifier keys
---@return string text
---[View Documents](https://wow.gamepedia.com/API_GetBindingText)
function GetBindingText(key, prefix, abbreviate)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBlockChance)
function GetBlockChance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBonusBarIndex)
function GetBonusBarIndex()
end

---Returns the current bonus action bar index.
---@return unknown offset
---[View Documents](https://wow.gamepedia.com/API_GetBonusBarOffset)
function GetBonusBarOffset()
end

---Returns information about the current client build.
---@return string versionstring buildstring datenumber tocversion
---[View Documents](https://wow.gamepedia.com/API_GetBuildInfo)
function GetBuildInfo()
end

---Return information about an item that can be bought back from a merchant.
---@param slotIndex number @ The index of a slot in the merchant's buyback inventory, between 1 and GetNumBuybackItems()
---@return string namenumber iconnumber pricenumber quantity
---[View Documents](https://wow.gamepedia.com/API_GetBuybackItemInfo)
function GetBuybackItemInfo(slotIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetBuybackItemLink)
function GetBuybackItemLink()
end

---Returns information on a console variable.
---@param name string @ name of the CVar to query the value of. Only accepts console variables (i.e. not console commands)
---@return string valuestring defaultValueboolean accountboolean characterboolean unknown5boolean setCvarOnlyboolean readOnly
---[View Documents](https://wow.gamepedia.com/API_GetCVarInfo)
function GetCVarInfo(name)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCVarSettingValidity)
function GetCVarSettingValidity()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCallPetSpellInfo)
function GetCallPetSpellInfo()
end

---Gets the current zoom level of the camera.
---@return number zoom
---[View Documents](https://wow.gamepedia.com/API_GetCameraZoom)
function GetCameraZoom()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCategoryAchievementPoints)
function GetCategoryAchievementPoints()
end

---Returns information about the given category.
---@param categoryID number
---@return string titlenumber parentCategoryIDnumber flags
---[View Documents](https://wow.gamepedia.com/API_GetCategoryInfo)
function GetCategoryInfo(categoryID)
end

---Returns the list of Achievement categories.
---@return table idTable
---[View Documents](https://wow.gamepedia.com/API_GetCategoryList)
function GetCategoryList()
end

---Returns the total, completed and incompleted number of achievements in a specific category.
---@param categoryId number @ Achievement category ID, as returned by GetCategoryList.
---@param includeAll boolean @ If true-equivalent, include all achievements, otherwise, only includes those currently visible
---@return number totalnumber completednumber incompleted
---[View Documents](https://wow.gamepedia.com/API_GetCategoryNumAchievements)
function GetCategoryNumAchievements(categoryId, includeAll)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCemeteryPreference)
function GetCemeteryPreference()
end

---Retrieves channels (and category headers) that would be displayed in Blizzards ChannelFrame.
---@param i unknown
---@return unknown nameunknown headerunknown collapsedunknown channelNumberunknown countunknown activeunknown categoryunknown voiceEnabledunknown voiceActive
---[View Documents](https://wow.gamepedia.com/API_GetChannelDisplayInfo)
function GetChannelDisplayInfo(i)
end

---@return unknown id1unknown name1unknown disabled1unknown id2unknown name2unknown disabled2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetChannelList)
function GetChannelList()
end

---Returns information about the specified channel.
---@param id_or_name unknown
---@return number idstring namenumber instanceIDboolean isCommunitiesChannel
---[View Documents](https://wow.gamepedia.com/API_GetChannelName)
function GetChannelName(id_or_name)
end

---Return the numeric type index for a specific chat type.
---@param typeCode string @ The type code for the chat type (One of the key values of the ChatTypeInfo table).
---@return number typeIndex
---[View Documents](https://wow.gamepedia.com/API_GetChatTypeIndex)
function GetChatTypeIndex(typeCode)
end

---Get the channels received by a chat window.
---@param frameId number @ The frame number of the chat frame to be queried (starts at 1).
---@return string name1number zone1string name2number zone2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetChatWindowChannels)
function GetChatWindowChannels(frameId)
end

---Retrieves configuration information about a chat window.
---@param frameIndex number @ The index of the chat window to get information for (starts at 1).
---@return string namenumber fontSizenumber rnumber gnumber bnumber alphanumber shownnumber lockednumber dockedunknown uninteractable
---[View Documents](https://wow.gamepedia.com/API_GetChatWindowInfo)
function GetChatWindowInfo(frameIndex)
end

---Returns chat types received by a chat window.
---@param index number @ Chat window index, ascending from 1.
---@return unknown type1unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetChatWindowMessages)
function GetChatWindowMessages(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetChatWindowSavedDimensions)
function GetChatWindowSavedDimensions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetChatWindowSavedPosition)
function GetChatWindowSavedPosition()
end

---Returns information about a class.
---@param classIndex number @ a number between 1 and GetNumClasses()
---@return string classNamestring classFilenumber classID
---[View Documents](https://wow.gamepedia.com/API_GetClassInfo)
function GetClassInfo(classIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetClickFrame)
function GetClickFrame()
end

---Returns the expansion level of the game client.
---@return number expansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetClientDisplayExpansionLevel)
function GetClientDisplayExpansionLevel()
end

---Returns the path to the texture used for a given amount of money.
---@param amount number @ amount of money in copper
---@return string texturePath
---[View Documents](https://wow.gamepedia.com/API_GetCoinIcon)
function GetCoinIcon(amount)
end

---Breaks down an amount of money into gold/silver/copper, inserts separator strings, and returns the resulting string.
---@param amount number @ the amount of money in copper (for example, the return value from GetMoney)
---@param separator unknown
---@return string formattedAmount
---[View Documents](https://wow.gamepedia.com/API_GetCoinText)
function GetCoinText(amount, separator)
end

---Breaks down an amount of money into gold/silver/copper, inserts appropriate |T texture strings for coin icons, and returns the resulting string.
---@param amount number @ the amount of money in copper (for example, the return value from GetMoney)
---@param fontHeight unknown @ Optional Number - the height of the coin icon; if not specified, defaults to 14.
---@return string formattedAmount
---[View Documents](https://wow.gamepedia.com/API_GetCoinTextureString)
function GetCoinTextureString(amount, fontHeight)
end

---Returns the number of points of a specific combat rating the player has.
---@param combatRatingIdentifier number @ One of the following values from FrameXML/PaperDollFrame.lua:
---@return number rating
---[View Documents](https://wow.gamepedia.com/API_GetCombatRating)
function GetCombatRating(combatRatingIdentifier)
end

---Returns the bonus, in percent (or other converted units, such as skill points), of a specific combat rating for the player.
---@param combatRatingIdentifier number @ One of the following values from FrameXML/PaperDollFrame.lua:
---@return number bonus
---[View Documents](https://wow.gamepedia.com/API_GetCombatRatingBonus)
function GetCombatRatingBonus(combatRatingIdentifier)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCombatRatingBonusForCombatRatingValue)
function GetCombatRatingBonusForCombatRatingValue()
end

---Retrieves the number of combo points gained by a player.
---@param unit string @ unitId) - Either player or vehicle.  (More strings/UnitIds may be possible but have not been seen in Blizzard code.)
---@param target string @ unitId) - Normally target, but can be any valid UnitId.
---@return number comboPoints
---[View Documents](https://wow.gamepedia.com/API_GetComboPoints)
function GetComboPoints(unit, target)
end

---Returns information about the companions you have.
---@param type string @ Companion type to query: CRITTER or MOUNT.
---@param id number @ Index of the slot to query. Starting at 1 and going up to GetNumCompanions(type).
---@return number creatureIDstring creatureNamenumber creatureSpellIDstring iconnumber issummonednumber mountType
---[View Documents](https://wow.gamepedia.com/API_GetCompanionInfo)
function GetCompanionInfo(type, id)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetComparisonAchievementPoints)
function GetComparisonAchievementPoints()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetComparisonCategoryNumAchievements)
function GetComparisonCategoryNumAchievements()
end

---Return the value of the requested Statistic from the comparison unit.
---@param achievementID number @ The ID of the Achievement.
---@return string value
---[View Documents](https://wow.gamepedia.com/API_GetComparisonStatistic)
function GetComparisonStatistic(achievementID)
end

---Populates a table with references to unused slots inside a container.
---@param index number @ the slot containing the bag, e.g. 0 for backpack, etc.
---@param returnTable table @ optional) Provide an empty table and the function will populate it with the free slots
---@return table returnTable
---[View Documents](https://wow.gamepedia.com/API_GetContainerFreeSlots)
function GetContainerFreeSlots(index, returnTable)
end

---Returns cooldown information for an item in your inventory
---@param bagID number @ number of the bag the item is in, 0 is your backpack, 1-4 are the four additional bags
---@param slot number @ slot number of the bag item you want the info for.
---@return unknown startTimeunknown durationunknown isEnabled
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemCooldown)
function GetContainerItemCooldown(bagID, slot)
end

---Returns current and maximum durability of an item in the character's bags.
---@param bag number @ Index of the bag slot the bag storing the item is in.
---@param slot number @ Index of the bag slot containing the item to query durability of.
---@return number currentnumber maximum
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemDurability)
function GetContainerItemDurability(bag, slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemEquipmentSetInfo)
function GetContainerItemEquipmentSetInfo()
end

---Returns the item id of the item in a particular container slot.
---@param bag number @ BagID) - Index of the bag to query.
---@param slot number @ Index of the slot within the bag to query; ascending from 1.
---@return number itemId
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemID)
function GetContainerItemID(bag, slot)
end

---Returns information about an item in a container slot.
---@param bagID number @ bagID) - number of the bag the item is in, e.g. 0 for your backpack.
---@param slot number @ index of the slot inside the bag to look up.
---@return unknown iconunknown itemCountunknown lockedunknown qualityunknown readableunknown lootableunknown itemLinkunknown isFilteredunknown noValueunknown itemID
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemInfo)
function GetContainerItemInfo(bagID, slot)
end

---Returns a link of the object located in the specified slot of a specified bag.
---@param bagID number @ Bag index (bagID). Valid indices are integers -2 through 11. 0 is the backpack.
---@param slotIndex number @ Slot index within the specified bag, ascending from 1. Slot 1 is typically the leftmost topmost slot.
---@return string itemLink
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemLink)
function GetContainerItemLink(bagID, slotIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemPurchaseCurrency)
function GetContainerItemPurchaseCurrency()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemPurchaseInfo)
function GetContainerItemPurchaseInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemPurchaseItem)
function GetContainerItemPurchaseItem()
end

---Returns whether the item in the slot is a quest item.
---@param bag number @ BagID) - Index of the bag to query.
---@param slot number @ Index of the slot within the bag (ascending from 1) to query.
---@return number isQuestItemnumber questIdnumber isActive
---[View Documents](https://wow.gamepedia.com/API_GetContainerItemQuestInfo)
function GetContainerItemQuestInfo(bag, slot)
end

---Returns the total number of free slots in the bag an the type of items that can go into it specified by the index.
---@param bagID number @ the slot containing the bag, e.g. 0 for backpack, etc.
---@return number numberOfFreeSlotsnumber bagType
---[View Documents](https://wow.gamepedia.com/API_GetContainerNumFreeSlots)
function GetContainerNumFreeSlots(bagID)
end

---Returns the total number of slots in the bag specified by the index.
---@param bagID number @ the slot containing the bag, e.g. 0 for backpack, etc.
---@return number numberOfSlots
---[View Documents](https://wow.gamepedia.com/API_GetContainerNumSlots)
function GetContainerNumSlots(bagID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCorpseRecoveryDelay)
function GetCorpseRecoveryDelay()
end

---Tracks the extent to which a player is wearing items touched by N'Zoth's influence.
---@return number corruption
---[View Documents](https://wow.gamepedia.com/API_GetCorruption)
function GetCorruption()
end

---Tracks how much the player has offset their exposure to dangers that result from wearing items touched by N'Zoth's influence.
---@return number corruptionResistance
---[View Documents](https://wow.gamepedia.com/API_GetCorruptionResistance)
function GetCorruptionResistance()
end

---Returns the player's critical hit chance.
---@return number critChance
---[View Documents](https://wow.gamepedia.com/API_GetCritChance)
function GetCritChance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCritChanceProvidesParryEffect)
function GetCritChanceProvidesParryEffect()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCriteriaSpell)
function GetCriteriaSpell()
end

---Returns the current arena season
---@return number season
---[View Documents](https://wow.gamepedia.com/API_GetCurrentArenaSeason)
function GetCurrentArenaSeason()
end

---Returns whether account- or character-specific bindings are active.
---@return number which
---[View Documents](https://wow.gamepedia.com/API_GetCurrentBindingSet)
function GetCurrentBindingSet()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentCombatTextEventInfo)
function GetCurrentCombatTextEventInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentEventID)
function GetCurrentEventID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentGlyphNameForSpell)
function GetCurrentGlyphNameForSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentGraphicsSetting)
function GetCurrentGraphicsSetting()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentGuildBankTab)
function GetCurrentGuildBankTab()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentKeyBoardFocus)
function GetCurrentKeyBoardFocus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentLevelFeatures)
function GetCurrentLevelFeatures()
end

---For the level you put in, it returns the ID of the spell that will become available.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentLevelSpells)
function GetCurrentLevelSpells()
end

---Returns a numeric ID representing the region the player is currently logged into.
---@return unknown regionID
---[View Documents](https://wow.gamepedia.com/API_GetCurrentRegion)
function GetCurrentRegion()
end

---Returns the name of the current region, as determined by the existing `GetCurrentRegion()` function.
---@return string regionName
---[View Documents](https://wow.gamepedia.com/API_GetCurrentRegionName)
function GetCurrentRegionName()
end

---Returns the index of the current resolution in effect
---@return unknown index
---[View Documents](https://wow.gamepedia.com/API_GetCurrentResolution)
function GetCurrentResolution()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCurrentScaledResolution)
function GetCurrentScaledResolution()
end

---Returns the title currently used by the player.
---@return number currentTitle
---[View Documents](https://wow.gamepedia.com/API_GetCurrentTitle)
function GetCurrentTitle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCursorDelta)
function GetCursorDelta()
end

---Returns information about what the mouse cursor is holding.
---@return unknown infoTypeunknown ...
---[View Documents](https://wow.gamepedia.com/API_GetCursorInfo)
function GetCursorInfo()
end

---Returns the amount of copper held on the cursor.
---@return number copper
---[View Documents](https://wow.gamepedia.com/API_GetCursorMoney)
function GetCursorMoney()
end

---Returns the cursor's position on the screen.
---@return number xnumber y
---[View Documents](https://wow.gamepedia.com/API_GetCursorPosition)
function GetCursorPosition()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetCustomizationDetails)
function GetCustomizationDetails()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDailyQuestsCompleted)
function GetDailyQuestsCompleted()
end

---Returns a chat link for a specific death.
---@param recapID number @ The specific death to view, from 1 to the most recent death.
---@return unknown recapLink
---[View Documents](https://wow.gamepedia.com/API_GetDeathRecapLink)
function GetDeathRecapLink(recapID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDefaultGraphicsQuality)
function GetDefaultGraphicsQuality()
end

---Returns the player's default language.
---@return string languagenumber languageID
---[View Documents](https://wow.gamepedia.com/API_GetDefaultLanguage)
function GetDefaultLanguage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDefaultScale)
function GetDefaultScale()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDefaultVideoOption)
function GetDefaultVideoOption()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDefaultVideoOptions)
function GetDefaultVideoOptions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDefaultVideoQualityOption)
function GetDefaultVideoQualityOption()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDemotionRank)
function GetDemotionRank()
end

---Returns detailed item level information about a given item.
---@param itemID_or_itemString_or_itemName_or_itemLink unknown
---@return number effectiveILvlboolean isPreviewnumber baseILvl
---[View Documents](https://wow.gamepedia.com/API_GetDetailedItemLevelInfo)
function GetDetailedItemLevelInfo(itemID_or_itemString_or_itemName_or_itemLink)
end

---Returns information about a difficulty.
---@param id number @ difficulty ID to query, ascending from 1.
---@return string namestring groupTypeboolean isHeroicboolean isChallengeModeboolean displayHeroicboolean displayMythicnumber toggleDifficultyID
---[View Documents](https://wow.gamepedia.com/API_GetDifficultyInfo)
function GetDifficultyInfo(id)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDodgeChance)
function GetDodgeChance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDodgeChanceFromAttribute)
function GetDodgeChanceFromAttribute()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDownloadedPercentage)
function GetDownloadedPercentage()
end

---Returns the player's currently selected dungeon difficulty.
---@return number difficultyID
---[View Documents](https://wow.gamepedia.com/API_GetDungeonDifficultyID)
function GetDungeonDifficultyID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDungeonForRandomSlot)
function GetDungeonForRandomSlot()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetDungeonInfo)
function GetDungeonInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetEquipmentNameFromSpell)
function GetEquipmentNameFromSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetEventCPUUsage)
function GetEventCPUUsage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetEventTime)
function GetEventTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetExistingSocketInfo)
function GetExistingSocketInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetExistingSocketLink)
function GetExistingSocketLink()
end

---Returns the logo and banner textures for an expansion id.
---@param expansionLevel number
---@return unknown info
---[View Documents](https://wow.gamepedia.com/API_GetExpansionDisplayInfo)
function GetExpansionDisplayInfo(expansionLevel)
end

---Needs summary.
---@param playerLevel number
---@return number expansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetExpansionForLevel)
function GetExpansionForLevel(playerLevel)
end

---Returns the expansion level currently accessible by the player.
---@return number expansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetExpansionLevel)
function GetExpansionLevel()
end

---Needs summary.
---@return boolean isExpansionTrialAccountnumber expansionTrialRemainingSeconds
---[View Documents](https://wow.gamepedia.com/API_GetExpansionTrialInfo)
function GetExpansionTrialInfo()
end

---Returns the player's expertise percentage for main hand, offhand and ranged attacks.
---@return number expertisenumber offhandExpertisenumber rangedExpertise
---[View Documents](https://wow.gamepedia.com/API_GetExpertise)
function GetExpertise()
end

---Returns the action bar page containing the extra bar/button.
---@return number extraPage
---[View Documents](https://wow.gamepedia.com/API_GetExtraBarIndex)
function GetExtraBarIndex()
end

---Returns information about the specified faction or faction header in the player's reputation pane.
---@param factionIndex number @ Index of the faction to query. Indices correspond to the rows currently displayed in the player's reptuation pane, and include headers, but do not include factions that are not currently displayed because their parent header is collapsed.
---@return number isCollapsednumber hasRepnumber isWatchednumber isChildnumber factionIDunknown hasBonusRepGainunknown canBeLFGBonus
---[View Documents](https://wow.gamepedia.com/API_GetFactionInfo)
function GetFactionInfo(factionIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFactionInfoByID)
function GetFactionInfoByID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFailedPVPTalentIDs)
function GetFailedPVPTalentIDs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFailedTalentIDs)
function GetFailedTalentIDs()
end

---Returns the FileDataID corresponding to the given game file path (texture, sound, model, etc.).
---@param filePath string @ The path to a game file. For example Interface/Icons/Temp.blp
---@return number fileID
---[View Documents](https://wow.gamepedia.com/API_GetFileIDFromPath)
function GetFileIDFromPath(filePath)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFileStreamingStatus)
function GetFileStreamingStatus()
end

---Returns the ID of a filtered achievement, resulting from a call to SetAchievementSearchString.
---@param index number @ The index of the filtered achievement to return the ID of, between 1 and GetNumFilteredAchievements().
---@return number achievementID
---[View Documents](https://wow.gamepedia.com/API_GetFilteredAchievementID)
function GetFilteredAchievementID(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFlexRaidDungeonInfo)
function GetFlexRaidDungeonInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFlyoutID)
function GetFlyoutID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFlyoutInfo)
function GetFlyoutInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFlyoutSlotInfo)
function GetFlyoutSlotInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFollowerTypeIDFromSpell)
function GetFollowerTypeIDFromSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFontInfo)
function GetFontInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFonts)
function GetFonts()
end

---Returns the total time used by and number of calls of a frame's event handlers.
---@param frame Frame @ Specifies the frame.
---@param includeChildren boolean @ If false, only event handlers of the specified frame are considered. If true or omitted, the values returned will include the handlers for all of the frame's children as well.
---@return number timenumber count
---[View Documents](https://wow.gamepedia.com/API_GetFrameCPUUsage)
function GetFrameCPUUsage(frame, includeChildren)
end

---Retrieve the current framerate (frames / second).
---@return number framerate
---[View Documents](https://wow.gamepedia.com/API_GetFramerate)
function GetFramerate()
end

---Returns all frames registered for the specified event, in dispatch order.
---@param event string @ Event for which to return registered frames, e.g. PLAYER_LOGOUT
---@return unknown frame1unknown frame2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetFramesRegisteredForEvent)
function GetFramesRegisteredForEvent(event)
end

---Returns information about the specified friendship in the player's reputation pane.
---@param factionID number @ ID of the friendship to retrieve information for, provided by GetFactionInfo (14th return).
---@return number friendIDnumber friendRepnumber friendMaxRepstring friendNamestring friendTextnumber friendTexturestring friendTextLevelnumber friendThresholdnumber nextFriendThreshold
---[View Documents](https://wow.gamepedia.com/API_GetFriendshipReputation)
function GetFriendshipReputation(factionID)
end

---Returns friendship rank indices. [1]
---@param factionID number @ provided by GetFactionInfo (14th return); defaults to the currently interacting NPC if omitted
---@return number currentRanknumber maxRank
---[View Documents](https://wow.gamepedia.com/API_GetFriendshipReputationRanks)
function GetFriendshipReputationRanks(factionID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetFunctionCPUUsage)
function GetFunctionCPUUsage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGMStatus)
function GetGMStatus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGMTicket)
function GetGMTicket()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGameMessageInfo)
function GetGameMessageInfo()
end

---Returns the realm's current time in hours and minutes.
---@return number hoursnumber minutes
---[View Documents](https://wow.gamepedia.com/API_GetGameTime)
function GetGameTime()
end

---Returns the supported graphics APIs for the system, D3D11_LEGACY, D3D11, D3D12, etc.
---@return string cvarValuesunknown ...
---[View Documents](https://wow.gamepedia.com/API_GetGraphicsAPIs)
function GetGraphicsAPIs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGraphicsDropdownIndexByMasterIndex)
function GetGraphicsDropdownIndexByMasterIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGreetingText)
function GetGreetingText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGroupMemberCounts)
function GetGroupMemberCounts()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildAchievementMemberInfo)
function GetGuildAchievementMemberInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildAchievementMembers)
function GetGuildAchievementMembers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildAchievementNumMembers)
function GetGuildAchievementNumMembers()
end

---Returns information about the given selected guild applicant.
---@param selectionID number @ The index of the selected applicant (from 1 to GetNumGuildApplicants()).
---@return unknown namenumber levelstring classboolean bQuestboolean bDungeonboolean bRaidboolean bPvPboolean bRPboolean bWeekdaysunknown bWeekendsboolean bTankboolean bHealerboolean bDamagestring commentnumber timeSincenumber timeLeft
---[View Documents](https://wow.gamepedia.com/API_GetGuildApplicantInfo)
function GetGuildApplicantInfo(selectionID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildApplicantSelection)
function GetGuildApplicantSelection()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankBonusDepositMoney)
function GetGuildBankBonusDepositMoney()
end

---Gets information about an item slot from the guild bank.
---@param tab number @ The index of the tab in the guild bank
---@param slot number @ The index of the slot in the chosen tab.
---@return number texturenumber itemCountboolean lockedboolean isFilterednumber quality
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankItemInfo)
function GetGuildBankItemInfo(tab, slot)
end

---Returns the item link for an item in the given Guild Bank tab and slot.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankItemLink)
function GetGuildBankItemLink()
end

---Returns the amount of money in the guild bank in copper.
---@return number retVal1
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankMoney)
function GetGuildBankMoney()
end

---gets a specific money transaction from the guild bank
---@param index number @ The index of the transaction to select. From 1 to GetNumGuildBankMoneyTransactions().
---@return string typeunknown namenumber amountnumber yearsnumber monthsnumber daysnumber hours
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankMoneyTransaction)
function GetGuildBankMoneyTransaction(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankTabCost)
function GetGuildBankTabCost()
end

---Gets display / player's access information regarding a guild bank tab.
---@param tab number @ The index of the guild bank tab. (result of GetCurrentGuildBankTab())
---@return string namestring iconboolean isViewableboolean canDepositnumber numWithdrawalsnumber remainingWithdrawalsboolean filtered
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankTabInfo)
function GetGuildBankTabInfo(tab)
end

---@param tab number @ guild bank tab number
---@return boolean canViewboolean canDepositboolean canEditnumber stacksPerDay
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankTabPermissions)
function GetGuildBankTabPermissions(tab)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankText)
function GetGuildBankText()
end

---Get information for specific item transaction from Guild Bank.
---@param tab number @ Tab number, ascending from 1 to GetNumGuildBankTabs().
---@param index number @ Transaction index, ascending from 1 to GetNumGuildBankTransactions(tab). Higher indices correspond to more recent entries.
---@return string typestring namestring itemLinknumber countnumber tab1number tab2number yearnumber monthnumber daynumber hour
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankTransaction)
function GetGuildBankTransaction(tab, index)
end

---Arguments none
---@return number dailyGoldWithdrawlLimit
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankWithdrawGoldLimit)
function GetGuildBankWithdrawGoldLimit()
end

---Returns the amount of money the player is allowed to withdraw from the guild bank.
---@return unknown withdrawLimit
---[View Documents](https://wow.gamepedia.com/API_GetGuildBankWithdrawMoney)
function GetGuildBankWithdrawMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildCategoryList)
function GetGuildCategoryList()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildChallengeInfo)
function GetGuildChallengeInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildCharterCost)
function GetGuildCharterCost()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildEventInfo)
function GetGuildEventInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildExpirationTime)
function GetGuildExpirationTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildFactionGroup)
function GetGuildFactionGroup()
end

---Returns the guild name and faction standing of the player.
---@return string guildNamestring descriptionnumber standingIDnumber barMinnumber barMaxnumber barValue
---[View Documents](https://wow.gamepedia.com/API_GetGuildFactionInfo)
function GetGuildFactionInfo()
end

---Returns guild-related information about a unit.
---@param unit string @ The unitId whose guild information you wish to query.
---@return string guildNamestring guildRankNamenumber guildRankIndexstring realm
---[View Documents](https://wow.gamepedia.com/API_GetGuildInfo)
function GetGuildInfo(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildInfoText)
function GetGuildInfoText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildLogoInfo)
function GetGuildLogoInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildMemberRecipes)
function GetGuildMemberRecipes()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildMembershipRequestInfo)
function GetGuildMembershipRequestInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildMembershipRequestSettings)
function GetGuildMembershipRequestSettings()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildNewsFilters)
function GetGuildNewsFilters()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildNewsMemberName)
function GetGuildNewsMemberName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildNewsSort)
function GetGuildNewsSort()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildPerkInfo)
function GetGuildPerkInfo()
end

---This function returns information about the last tradeskill you were looking at when you clicked View Crafters on a guild listing.
---@return number professionIDnumber recipeIDunknown unknown
---[View Documents](https://wow.gamepedia.com/API_GetGuildRecipeInfoPostQuery)
function GetGuildRecipeInfoPostQuery()
end

---Renders the name and online status of a guild member having a certain recipe.
---@param index number @ index, beginning with 1, of a list of members who can craft the recipe
---@return string nameboolean online
---[View Documents](https://wow.gamepedia.com/API_GetGuildRecipeMember)
function GetGuildRecipeMember(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildRecruitmentComment)
function GetGuildRecruitmentComment()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildRecruitmentSettings)
function GetGuildRecruitmentSettings()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildRenameRequired)
function GetGuildRenameRequired()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildRewardInfo)
function GetGuildRewardInfo()
end

---Returns information about a character in your current guild.
---@param index number @ From 1 to GetNumGuildMembers()
---@return string namestring rankNamenumber rankIndexnumber levelstring classDisplayNamestring zonestring publicNotestring officerNoteboolean isOnlinenumber statusstring classnumber achievementPointsnumber achievementRankboolean isMobileboolean canSoRnumber repStandingstring GUID
---[View Documents](https://wow.gamepedia.com/API_GetGuildRosterInfo)
function GetGuildRosterInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetGuildRosterLargestAchievementPoints)
function GetGuildRosterLargestAchievementPoints()
end

---Returns a specific guild member's last seen time.
---@param index number @ index of the guild roster entry you wish to query.
---@return number yearsOfflinenumber monthsOfflinenumber daysOfflinenumber hoursOffline
---[View Documents](https://wow.gamepedia.com/API_GetGuildRosterLastOnline)
function GetGuildRosterLastOnline(index)
end

---Retrieves the guild's Message of the Day.
---@return string motd
---[View Documents](https://wow.gamepedia.com/API_GetGuildRosterMOTD)
function GetGuildRosterMOTD()
end

---Returns index of the current selected guild member in the guild roster according the active sorting. If none is selected, the return value is 0 (zero).
---@return unknown selectedGuildMember
---[View Documents](https://wow.gamepedia.com/API_GetGuildRosterSelection)
function GetGuildRosterSelection()
end

---Returns 1 if the guild roster is currently set to show offline members, nil otherwise.
---@return number showoffline
---[View Documents](https://wow.gamepedia.com/API_GetGuildRosterShowOffline)
function GetGuildRosterShowOffline()
end

---Returns File IDs of tabard textures used in guild bank logo.
---@return number tabardBackgroundUppernumber tabardBackgroundLowernumber tabardEmblemUppernumber tabardEmblemLowernumber tabardBorderUppernumber tabardBorderLower
---[View Documents](https://wow.gamepedia.com/API_GetGuildTabardFiles)
function GetGuildTabardFiles()
end

---Returns information about a guild tradeskill
---@param index number @ The index of the tradeskill from GetNumGuildTradeSkill().
---@return number skillIDboolean isCollapsedstring iconTexturestring headerNamenumber numOnlinenumber numVisiblenumber numPlayersstring playerNamestring playerNameWithRealmstring classboolean onlinestring zonenumber skillstring classFileNameboolean isMobilenumber isAway
---[View Documents](https://wow.gamepedia.com/API_GetGuildTradeSkillInfo)
function GetGuildTradeSkillInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetHaste)
function GetHaste()
end

---Returns the amount of Melee Hit %, not from Melee Hit Rating, that your character has.
---@return number hitModifier
---[View Documents](https://wow.gamepedia.com/API_GetHitModifier)
function GetHitModifier()
end

---Returns names of characters in your home (non-instance) party.
---@param homePlayers table @ table to populate and return; a new table is created if this argument is omitted.
---@return table homePlayers
---[View Documents](https://wow.gamepedia.com/API_GetHomePartyInfo)
function GetHomePartyInfo(homePlayers)
end

---Returns information about a message in the mailbox.
---@param index number @ the index of the message (ascending from 1).
---@return number textCreatednumber canReplynumber isGM
---[View Documents](https://wow.gamepedia.com/API_GetInboxHeaderInfo)
function GetInboxHeaderInfo(index)
end

---Returns information about an auction house invoice.
---@param index number @ the index of the message (1 is the first message)
---@return string invoiceTypestring itemNamestring playerNamenumber bidnumber buyoutnumber depositnumber consignment
---[View Documents](https://wow.gamepedia.com/API_GetInboxInvoiceInfo)
function GetInboxInvoiceInfo(index)
end

---Provides information about an item attached to a message in the player's mailbox.
---@param index number @ The index of the message to query, in the range [1,GetInboxNumItems()]
---@param itemIndex number @ The index of the item to query, in the range [1,ATTACHMENTS_MAX_RECEIVE]
---@return string namenumber itemIDstring texturenumber countnumber qualitynumber canUse
---[View Documents](https://wow.gamepedia.com/API_GetInboxItem)
function GetInboxItem(index, itemIndex)
end

---Returns the itemLink of an item attached to a message in the player's mailbox.
---@param message number @ The index of the message to query, in the range of [1,GetInboxNumItems()]
---@param attachment number @ The index of the attachment to query, in the range of [1,ATTACHMENTS_MAX_RECEIVE]
---@return unknown itemLink
---[View Documents](https://wow.gamepedia.com/API_GetInboxItemLink)
function GetInboxItemLink(message, attachment)
end

---@return unknown numItemsunknown totalItems
---[View Documents](https://wow.gamepedia.com/API_GetInboxNumItems)
function GetInboxNumItems()
end

---Returns information about a mailbox item.
---@param index number @ the index of the message (1 is the first message)
---@return string bodyTextstring stationaryMiddlestring stationaryEdgeboolean isTakeableboolean isInvoice
---[View Documents](https://wow.gamepedia.com/API_GetInboxText)
function GetInboxText(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInsertItemsLeftToRight)
function GetInsertItemsLeftToRight()
end

---Returns the inspected unit's rated PvP stats.
---@param bracketId number @ rated PvP bracket to query, ascending from 1 for 2v2, 3v3, and 5v5 arenas, and Rated Battlegrounds respectively.
---@return number ratingnumber seasonPlayednumber seasonWonnumber weeklyPlayednumber weeklyWon
---[View Documents](https://wow.gamepedia.com/API_GetInspectArenaData)
function GetInspectArenaData(bracketId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInspectGuildInfo)
function GetInspectGuildInfo()
end

---Get the honor information about the inspected unit.
---@return number todayHKnumber todayHonornumber yesterdayHKnumber yesterdayHonornumber lifetimeHKnumber lifetimeRank
---[View Documents](https://wow.gamepedia.com/API_GetInspectHonorData)
function GetInspectHonorData()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInspectRatedBGData)
function GetInspectRatedBGData()
end

---Returns a number representing the current active specialization of a given unit.
---@param unit string @ The unitid of the player to request the specialization of.
---@return number id
---[View Documents](https://wow.gamepedia.com/API_GetInspectSpecialization)
function GetInspectSpecialization(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInspectTalent)
function GetInspectTalent()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInstanceBootTimeRemaining)
function GetInstanceBootTimeRemaining()
end

---Returns information about the map instance the player is currently in.
---@return unknown nameunknown instanceTypeunknown difficultyIDunknown difficultyNameunknown maxPlayersunknown dynamicDifficultyunknown isDynamicunknown instanceIDunknown instanceGroupSizeunknown LfgDungeonID
---[View Documents](https://wow.gamepedia.com/API_GetInstanceInfo)
function GetInstanceInfo()
end

---Returns information about the instance lock timer for the current instance.
---@return number lockTimeleftboolean isPreviousInstancenumber encountersTotalnumber encountersComplete
---[View Documents](https://wow.gamepedia.com/API_GetInstanceLockTimeRemaining)
function GetInstanceLockTimeRemaining()
end

---Returns information about bosses in the instance the player is about to be saved to.
---@param id number @ Index of the boss to query, ascending from 1 to encountersTotal return value from GetInstanceLockTimeRemaining.
---@return string bossNamestring textureboolean isKilled
---[View Documents](https://wow.gamepedia.com/API_GetInstanceLockTimeRemainingEncounter)
function GetInstanceLockTimeRemainingEncounter(id)
end

---Returns one of several codes describing the status of an equipped item. The main use for this function is generalized durability checks.
---@param index string @ one of the following:
---@return number alertStatus
---[View Documents](https://wow.gamepedia.com/API_GetInventoryAlertStatus)
function GetInventoryAlertStatus(index)
end

---Determine if an inventory item is broken (no durability)
---@param unit string @ The UnitId of the unit whose inventory is to be queried.
---@param slotId number @ The inventory slot to be queried, obtained via GetInventorySlotInfo.
---@return number isBroken
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemBroken)
function GetInventoryItemBroken(unit, slotId)
end

---Get cooldown information for an inventory item.
---@param unit string @ The UnitId of the unit whose inventory is to be queried.
---@param slotId number @ The inventory slot to be queried, obtained via GetInventorySlotInfo.
---@return number startnumber durationnumber enable
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemCooldown)
function GetInventoryItemCooldown(unit, slotId)
end

---Determine the quantity of an item in an inventory slot.
---@param unit string @ The UnitId of the unit whose inventory is to be queried.
---@param slotId number @ The inventory slot to be queried, obtained via GetInventorySlotInfo.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemCount)
function GetInventoryItemCount(unit, slotId)
end

---Returns current and maximum durability of an equipped item.
---@param slot number @ Inventory slot index to query durability of.
---@return number currentnumber maximum
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemDurability)
function GetInventoryItemDurability(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemEquippedUnusable)
function GetInventoryItemEquippedUnusable()
end

---Returns the item id of the item in the specified inventory slot
---@param unit string @ The UnitId of the unit whose inventory is to be queried.
---@param invSlot number @ InventorySlotId) - index of the inventory slot to query.
---@return number itemIdnumber unknown
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemID)
function GetInventoryItemID(unit, invSlot)
end

---Get the itemLink for the specified item.
---@param unit unknown
---@param slotId unknown @ InventorySlotId - The inventory slot to be queried, obtained via GetInventorySlotInfo().
---@return unknown itemLink
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemLink)
function GetInventoryItemLink(unit, slotId)
end

---Return the quality of an inventory item.
---@param unitId string @ The UnitId of the unit whose inventory is to be queried.
---@param slotId number @ The InventorySlotId to be queried, obtained via GetInventorySlotInfo().
---@return unknown quality
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemQuality)
function GetInventoryItemQuality(unitId, slotId)
end

---Return the texture for an inventory item.
---@param unit string @ The UnitId of the unit whose inventory is to be queried.
---@param slotId number @ The inventory slot to be queried, obtained via GetInventorySlotInfo.
---@return string texture
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemTexture)
function GetInventoryItemTexture(unit, slotId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetInventoryItemsForSlot)
function GetInventoryItemsForSlot()
end

---Return information about a specific inventory slot
---@param slotName string @ InventorySlotName to query (e.g. HEADSLOT).
---@return number slotIdstring textureNameboolean checkRelic
---[View Documents](https://wow.gamepedia.com/API_GetInventorySlotInfo)
function GetInventorySlotInfo(slotName)
end

---Retrieves information about a player that could be invited.
---@param invite unknown @ unknown - return value of function GetNextPendingInviteConfirmation
---@return number confirmationTypestring namestring guidboolean rolesInvalidboolean willConvertToRaidnumber levelnumber specnumber itemLevel
---[View Documents](https://wow.gamepedia.com/API_GetInviteConfirmationInfo)
function GetInviteConfirmationInfo(invite)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemChildInfo)
function GetItemChildInfo()
end

---Returns the name of the item type.
---@param classID number @ ID of the ItemType
---@return string name
---[View Documents](https://wow.gamepedia.com/API_GetItemClassInfo)
function GetItemClassInfo(classID)
end

---Returns cooldown information for the item.
---@param itemID number @ The numeric ID of the item. ie. 12345
---@return number startTimenumber durationnumber enable
---[View Documents](https://wow.gamepedia.com/API_GetItemCooldown)
function GetItemCooldown(itemID)
end

---Returns count information for the item.
---@param itemID_or_itemName_or_itemLink unknown
---@param includeBank boolean @ true: count includes bank items
---@param includeCharges boolean @ true: count is charges if any, otherwise number of items
---@return number count
---[View Documents](https://wow.gamepedia.com/API_GetItemCount)
function GetItemCount(itemID_or_itemName_or_itemLink, includeBank, includeCharges)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemCreationContext)
function GetItemCreationContext()
end

---Gets the bitfield of what types of bags an item can go into or contain.
---@param itemId_or_itemName_or_itemLink unknown
---@return unknown bagType
---[View Documents](https://wow.gamepedia.com/API_GetItemFamily)
function GetItemFamily(itemId_or_itemName_or_itemLink)
end

---Takes an item with a gem in it, and an index from 1-3, and returns the name and link for the gem at that index.
---@param name_or_itemlink unknown
---@param index number @ The index of the desired gem. 1, 2, or 3
---@return string itemNamestring itemLink
---[View Documents](https://wow.gamepedia.com/API_GetItemGem)
function GetItemGem(name_or_itemlink, index)
end

---Returns an item's icon texture.
---@param itemID number @ The numeric ID of the item to query e.g. 23405 for  [Farstrider's Tunic].
---@return number icon
---[View Documents](https://wow.gamepedia.com/API_GetItemIcon)
function GetItemIcon(itemID)
end

---Returns information about an item.
---@param itemInfo string @ ItemLink, Name or ID
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemInfo)
function GetItemInfo(itemInfo)
end

---Returns instantly-available information about a specific item.
---@param itemID_or_itemString_or_itemName_or_itemLink unknown
---@return number itemIDunknown itemTypeunknown itemSubTypeunknown itemEquipLocunknown iconunknown itemClassIDunknown itemSubClassID
---[View Documents](https://wow.gamepedia.com/API_GetItemInfoInstant)
function GetItemInfoInstant(itemID_or_itemString_or_itemName_or_itemLink)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemInventorySlotInfo)
function GetItemInventorySlotInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemLevelColor)
function GetItemLevelColor()
end

---Returns the proposed item level increment for the item being considered for upgrading.
---@return number itemLevelIncrement
---[View Documents](https://wow.gamepedia.com/API_GetItemLevelIncrement)
function GetItemLevelIncrement()
end

---Returns RGB color codes for an item quality.
---@param quality number @ Enum.ItemQuality
---@return number rnumber gnumber bstring hex
---[View Documents](https://wow.gamepedia.com/API_GetItemQualityColor)
function GetItemQualityColor(quality)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemSetInfo)
function GetItemSetInfo()
end

---Returns which specializations an item is useful for.
---@param itemLink_or_itemID_or_itemName unknown
---@param specTable table @ if provided, this table will be populated with the results and returned; otherwise, a new table will be created.
---@return table specTable
---[View Documents](https://wow.gamepedia.com/API_GetItemSpecInfo)
function GetItemSpecInfo(itemLink_or_itemID_or_itemName, specTable)
end

---Return spell information about a specific item.
---@param itemID_or_itemString_or_itemName_or_itemLink unknown
---@return string spellNamenumber spellID
---[View Documents](https://wow.gamepedia.com/API_GetItemSpell)
function GetItemSpell(itemID_or_itemString_or_itemName_or_itemLink)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemStatDelta)
function GetItemStatDelta()
end

---Returns a table of stats for an item.
---@param itemLink unknown
---@param statTable unknown
---@return unknown stats
---[View Documents](https://wow.gamepedia.com/API_GetItemStats)
function GetItemStats(itemLink, statTable)
end

---Returns the name of the item subtype.
---@param classID number @ ID of the ItemType
---@param subClassID number @ ID of the item subtype
---@return string nameboolean isArmorType
---[View Documents](https://wow.gamepedia.com/API_GetItemSubClassInfo)
function GetItemSubClassInfo(classID, subClassID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemUniqueness)
function GetItemUniqueness()
end

---Returns the current (upgraded) item level of the item being considered for upgrades.
---@return number itemLevel
---[View Documents](https://wow.gamepedia.com/API_GetItemUpdateLevel)
function GetItemUpdateLevel()
end

---Returns the effect of upgrading an item on one of its effects.
---@param effectIndex number @ Index of the effect to query, ascending from 1 to GetNumItemUpgradeEffects().
---@return string leftTextstring rightText
---[View Documents](https://wow.gamepedia.com/API_GetItemUpgradeEffect)
function GetItemUpgradeEffect(effectIndex)
end

---Returns information for the item that is placed in the upgrade frame.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemUpgradeItemInfo)
function GetItemUpgradeItemInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetItemUpgradeStats)
function GetItemUpgradeStats()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetJailersTowerLevel)
function GetJailersTowerLevel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetJournalInfoForSpellConfirmation)
function GetJournalInfoForSpellConfirmation()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDChoiceCollapseState)
function GetLFDChoiceCollapseState()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDChoiceEnabledState)
function GetLFDChoiceEnabledState()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDChoiceOrder)
function GetLFDChoiceOrder()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDLockInfo)
function GetLFDLockInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDLockPlayerCount)
function GetLFDLockPlayerCount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDRoleLockInfo)
function GetLFDRoleLockInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFDRoleRestrictions)
function GetLFDRoleRestrictions()
end

---Returns information about an LFG Kick vote currently in progress.
---@return number totalVotesnumber bootVotesnumber timeLeftstring reason
---[View Documents](https://wow.gamepedia.com/API_GetLFGBootProposal)
function GetLFGBootProposal()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGCategoryForID)
function GetLFGCategoryForID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGCompletionReward)
function GetLFGCompletionReward()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGCompletionRewardItem)
function GetLFGCompletionRewardItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGCompletionRewardItemLink)
function GetLFGCompletionRewardItemLink()
end

---Returns the time at which you may once again use the dungeon finder after prematurely leaving a group.
---@return number expiryTime
---[View Documents](https://wow.gamepedia.com/API_GetLFGDeserterExpiration)
function GetLFGDeserterExpiration()
end

---Returns info about a specific encounter in an LFG/RF dungeon.
---@param dungeonID number @ Ranging from 1 to around 2000 in patch 8.1.5
---@param encounterIndex number @ Index from 1 to GetLFGDungeonNumEncounters(). For multi-part raids, many bosses will never be accessible to players because they were in an earlier 'wing'.
---@return string bossNamestring textureboolean isKilledboolean unknown4
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonEncounterInfo)
function GetLFGDungeonEncounterInfo(dungeonID, encounterIndex)
end

---Retrieves specific dungeon information, not limited by player level and all dungeons can be looked up.
---@param dungeonID number @ Numeric ID to uniquely identify each dungeon
---@return unknown nameunknown typeIDunknown subtypeIDunknown minLevelunknown maxLevelunknown recLevelunknown minRecLevelunknown maxRecLevelunknown expansionLevelunknown groupIDunknown textureFilenameunknown difficultyunknown maxPlayersunknown descriptionunknown isHolidayunknown bonusRepAmountunknown minPlayersunknown isTimeWalkerunknown name2unknown minGearLevel
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonInfo)
function GetLFGDungeonInfo(dungeonID)
end

---Returns the number of encounters and number of completed encounters for a specified dungeon ID.
---@param dungeonID number @ Ranging from 1 to around 2000 in patch 8.1.5
---@return number numEncountersnumber numCompleted
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonNumEncounters)
function GetLFGDungeonNumEncounters(dungeonID)
end

---Retrieves information on the weekly limits for currency rewards from the dungeon system (i.e. Valor Point Cap)
---@param VALOR_TIER1_LFG_ID number @ id of the dungeon type for which information is being sought (currently 301)
---@return number currencyIDnumber DungeonIDnumber Quantitynumber Limitnumber overallQuantitynumber overallLimitnumber periodPurseQuantitynumber periodPurseLimitnumber purseQuantitynumber purseLimit
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonRewardCapBarInfo)
function GetLFGDungeonRewardCapBarInfo(VALOR_TIER1_LFG_ID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonRewardCapInfo)
function GetLFGDungeonRewardCapInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonRewardInfo)
function GetLFGDungeonRewardInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonRewardLink)
function GetLFGDungeonRewardLink()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonRewards)
function GetLFGDungeonRewards()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonShortageRewardInfo)
function GetLFGDungeonShortageRewardInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGDungeonShortageRewardLink)
function GetLFGDungeonShortageRewardLink()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGInfoServer)
function GetLFGInfoServer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGInviteRoleAvailability)
function GetLFGInviteRoleAvailability()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGInviteRoleRestrictions)
function GetLFGInviteRoleRestrictions()
end

---Returns information about the current LFD group invite.
---@return number completedEncountersnumber numMembersboolean isLeaderboolean isHolidaynumber proposalCategory
---[View Documents](https://wow.gamepedia.com/API_GetLFGProposal)
function GetLFGProposal()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGProposalEncounter)
function GetLFGProposalEncounter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGProposalMember)
function GetLFGProposalMember()
end

---Returns the current state and wait times for being in queue.
---@param category number @ Depending on which type of LFG you're looking for.
---@param activeID number @ ?Optional.  Could be nil. - Specific LFG 'forming group' ID
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGQueueStats)
function GetLFGQueueStats(category, activeID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGQueuedList)
function GetLFGQueuedList()
end

---Returns the time at which you may once again queue for a random dungeon.
---@return number expiryTime
---[View Documents](https://wow.gamepedia.com/API_GetLFGRandomCooldownExpiration)
function GetLFGRandomCooldownExpiration()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGRandomDungeonInfo)
function GetLFGRandomDungeonInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGReadyCheckUpdate)
function GetLFGReadyCheckUpdate()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGReadyCheckUpdateBattlegroundInfo)
function GetLFGReadyCheckUpdateBattlegroundInfo()
end

---Return information concerning the LFG Call to Arms rewards.
---@param dungeonID number @ LfgDungeonID - The type of the dungeons to queue for. See table below.
---@param shortageSeverity number @ A number from 1 to LFG_ROLE_NUM_SHORTAGE_TYPES. See below for specific shortage types.
---@return boolean eligibleboolean forTankboolean forHealerboolean forDamagenumber itemCountnumber moneynumber xp
---[View Documents](https://wow.gamepedia.com/API_GetLFGRoleShortageRewards)
function GetLFGRoleShortageRewards(dungeonID, shortageSeverity)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGRoleUpdate)
function GetLFGRoleUpdate()
end

---Returns the name of the battleground queue triggering a role check.
---@return string queueName
---[View Documents](https://wow.gamepedia.com/API_GetLFGRoleUpdateBattlegroundInfo)
function GetLFGRoleUpdateBattlegroundInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGRoleUpdateMember)
function GetLFGRoleUpdateMember()
end

---Returns the objectives you are currently flagged to as LFG. Usage:  dungeonType, dungeonID = GetLFGRoleUpdateSlot(slot);
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGRoleUpdateSlot)
function GetLFGRoleUpdateSlot()
end

---Returns what roles you signed up as in the Dungeon Finder.
---@return boolean isLeaderboolean isTankboolean isHealerboolean isDPS
---[View Documents](https://wow.gamepedia.com/API_GetLFGRoles)
function GetLFGRoles()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLFGSuspendedPlayers)
function GetLFGSuspendedPlayers()
end

---Seems to be for used ordering the LFR list [1]
---@param LFRRaidList table @ ?
---@return table raidList
---[View Documents](https://wow.gamepedia.com/API_GetLFRChoiceOrder)
function GetLFRChoiceOrder(LFRRaidList)
end

---Returns the language specified by the index that your character can speak.
---@param index number @ Ranging from 1 up to GetNumLanguages()
---@return string languagenumber languageID
---[View Documents](https://wow.gamepedia.com/API_GetLanguageByIndex)
function GetLanguageByIndex(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLatestCompletedAchievements)
function GetLatestCompletedAchievements()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLatestCompletedComparisonAchievements)
function GetLatestCompletedComparisonAchievements()
end

---Returns up to three names of senders of unread mail in the character's inbox.
---@return unknown sender1unknown sender2unknown sender3
---[View Documents](https://wow.gamepedia.com/API_GetLatestThreeSenders)
function GetLatestThreeSenders()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLatestUpdatedComparisonStats)
function GetLatestUpdatedComparisonStats()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLatestUpdatedStats)
function GetLatestUpdatedStats()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLegacyRaidDifficultyID)
function GetLegacyRaidDifficultyID()
end

---Returns a list of dungeon/raid IDs that are advertised as available at a given level.
---@param level number @ level at which to list newly-available instances.
---@param isRaid boolean @ true to list raid instances, false to list dungeons.
---@return unknown id1unknown id2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetLevelUpInstances)
function GetLevelUpInstances(level, isRaid)
end

---Returns the player's Leech %.
---@return unknown Leech
---[View Documents](https://wow.gamepedia.com/API_GetLifesteal)
function GetLifesteal()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLocalGameTime)
function GetLocalGameTime()
end

---Returns information about the client locale.
---@return unknown e
---[View Documents](https://wow.gamepedia.com/API_GetLocale)
function GetLocale()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLookingForGuildComment)
function GetLookingForGuildComment()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLookingForGuildSettings)
function GetLookingForGuildSettings()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLooseMacroIcons)
function GetLooseMacroIcons()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLooseMacroItemIcons)
function GetLooseMacroItemIcons()
end

---Returns a table with all of the loot info for the current loot window.
---@return table info
---[View Documents](https://wow.gamepedia.com/API_GetLootInfo)
function GetLootInfo()
end

---Retrieves the Loot Method and (if applicable) Master Looter idenity.
---@return string lootmethodnumber masterlooterPartyIDnumber masterlooterRaidID
---[View Documents](https://wow.gamepedia.com/API_GetLootMethod)
function GetLootMethod()
end

---Returns information about the loot event with rollID.
---@param rollID number @ The number increments by 1 for each new roll. The count is not reset by reloading the UI.
---@return string texturestring namenumber countnumber qualitynumber bindOnPickUpnumber canNeednumber canGreednumber canDisenchantnumber reasonNeednumber reasonGreednumber reasonDisenchantnumber deSkillRequired
---[View Documents](https://wow.gamepedia.com/API_GetLootRollItemInfo)
function GetLootRollItemInfo(rollID)
end

---Retrieves the itemLink of an item being rolled on.
---@param id number @ id is a number used by the server to keep track of items being rolled on.  It is generated server side and transmitted to the client.
---@return unknown itemLink
---[View Documents](https://wow.gamepedia.com/API_GetLootRollItemLink)
function GetLootRollItemLink(id)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetLootRollTimeLeft)
function GetLootRollTimeLeft()
end

---Returns information about the contents of a loot slot.
---@param slot number @ the index of the loot (1 is the first item, typically coin)
---@return string lootIconstring lootNamenumber lootQuantitynumber currencyIDnumber lootQualityboolean lockedboolean isQuestItemnumber questIDboolean isActive
---[View Documents](https://wow.gamepedia.com/API_GetLootSlotInfo)
function GetLootSlotInfo(slot)
end

---Retrieves the itemLink of one item in the current loot window.
---@param index number @ The index of the item in the list to retrieve info from (1 to GetNumLootItems())
---@return string itemLink
---[View Documents](https://wow.gamepedia.com/API_GetLootSlotLink)
function GetLootSlotLink(index)
end

---Returns an integer loot type for a given loot slot.
---@param slotIndex number @ Position in loot window to query, from 1 - GetNumLootItems().
---@return number slotType
---[View Documents](https://wow.gamepedia.com/API_GetLootSlotType)
function GetLootSlotType(slotIndex)
end

---Returns information about the source of the objects in a loot slot.
---@param lootSlot number @ index of the loot slot, ascending from 1 up to GetNumLootItems()
---@return unknown guid1unknown quant1unknown guid2unknown quant2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetLootSourceInfo)
function GetLootSourceInfo(lootSlot)
end

---Returns the player's current loot specialization.
---@return number specID
---[View Documents](https://wow.gamepedia.com/API_GetLootSpecialization)
function GetLootSpecialization()
end

---Returns the currently active loot threshold as a number.
---@return number threshold
---[View Documents](https://wow.gamepedia.com/API_GetLootThreshold)
function GetLootThreshold()
end

---Returns the body (macro text) of a macro.
---@param macroIndex_or_name unknown
---@return string body
---[View Documents](https://wow.gamepedia.com/API_GetMacroBody)
function GetMacroBody(macroIndex_or_name)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMacroIcons)
function GetMacroIcons()
end

---Returns macro slot index containing a macro with the specified name.
---@param name string @ Macro name to query.
---@return number macroSlot
---[View Documents](https://wow.gamepedia.com/API_GetMacroIndexByName)
function GetMacroIndexByName(name)
end

---Return information about a macro.
---@param name_or_macroSlot unknown
---@return string namenumber iconstring bodynumber isLocal
---[View Documents](https://wow.gamepedia.com/API_GetMacroInfo)
function GetMacroInfo(name_or_macroSlot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMacroItem)
function GetMacroItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMacroItemIcons)
function GetMacroItemIcons()
end

---Returns information about the spell a given macro is set to cast.
---@param slot_or_macroName unknown
---@return number id
---[View Documents](https://wow.gamepedia.com/API_GetMacroSpell)
function GetMacroSpell(slot_or_macroName)
end

---Gets the player's current mana regeneration rates (in mana per 1 seconds).
---@return number basenumber casting
---[View Documents](https://wow.gamepedia.com/API_GetManaRegen)
function GetManaRegen()
end

---Returns the name of the player at the specified index, who would receive an item assigned by GiveMasterLoot(slot, index) using the same index.
---@param slot unknown @ The loot slot number of the item you want to get information about
---@param index unknown @ The number of the player whose name you wish to return. Typically between 1 and 40.  Can exceed the value of GetNumRaidMembers()
---@return unknown candidate
---[View Documents](https://wow.gamepedia.com/API_GetMasterLootCandidate)
function GetMasterLootCandidate(slot, index)
end

---Returns the (raw) mastery of the player.
---@return number mastery
---[View Documents](https://wow.gamepedia.com/API_GetMastery)
function GetMastery()
end

---Returns the effect of player's current Mastery.
---@return number masterynumber coefficient
---[View Documents](https://wow.gamepedia.com/API_GetMasteryEffect)
function GetMasteryEffect()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMawPowerLinkBySpellID)
function GetMawPowerLinkBySpellID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxArenaCurrency)
function GetMaxArenaCurrency()
end

---Returns the max number of battlefields you can queue for [1]
---@return number maxBattlefieldID
---[View Documents](https://wow.gamepedia.com/API_GetMaxBattlefieldID)
function GetMaxBattlefieldID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxCombatRatingBonus)
function GetMaxCombatRatingBonus()
end

---Maps an expansion level to a maximum character level for that expansion.
---@param expansionLevel number
---@return number maxLevel
---[View Documents](https://wow.gamepedia.com/API_GetMaxLevelForExpansionLevel)
function GetMaxLevelForExpansionLevel(expansionLevel)
end

---Returns the highest reachable character level for the latest expansion.
---@return number maxLevel
---[View Documents](https://wow.gamepedia.com/API_GetMaxLevelForLatestExpansion)
function GetMaxLevelForLatestExpansion()
end

---Returns the highest reachable character level for the players' owned expansion level.
---@return number maxLevel
---[View Documents](https://wow.gamepedia.com/API_GetMaxLevelForPlayerExpansion)
function GetMaxLevelForPlayerExpansion()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxNumCUFProfiles)
function GetMaxNumCUFProfiles()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxPlayerLevel)
function GetMaxPlayerLevel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxRenderScale)
function GetMaxRenderScale()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxRewardCurrencies)
function GetMaxRewardCurrencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMaxSpellStartRecoveryOffset)
function GetMaxSpellStartRecoveryOffset()
end

---Returns the number of available talent tiers.
---@return number tiers
---[View Documents](https://wow.gamepedia.com/API_GetMaxTalentTier)
function GetMaxTalentTier()
end

---Needs summary.
---@return number expansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetMaximumExpansionLevel)
function GetMaximumExpansionLevel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMeleeHaste)
function GetMeleeHaste()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMerchantCurrencies)
function GetMerchantCurrencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMerchantFilter)
function GetMerchantFilter()
end

---The itemCount is the number of different types of items required, not how many of those types.  For example, the Scout's Tabard which requires 3 Arathi Basin Marks of Honor and 3 Warsong Gulch Marks of Honor would return a 2 for the item count.  To find out how many of each item is required, use the GetMerchantItemCostItem function.
---@param index number @ The index of the item in the merchant's inventory
---@return number itemCount
---[View Documents](https://wow.gamepedia.com/API_GetMerchantItemCostInfo)
function GetMerchantItemCostInfo(index)
end

---Returns information about an item's token/currency cost.
---@param index number @ Slot in the merchant's inventory to query.
---@param itemIndex number @ The index for the required item cost type, ascending from 1 to itemCount returned by GetMerchantItemCostInfo.
---@return string itemTexturenumber itemValuestring itemLinkstring currencyName
---[View Documents](https://wow.gamepedia.com/API_GetMerchantItemCostItem)
function GetMerchantItemCostItem(index, itemIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMerchantItemID)
function GetMerchantItemID()
end

---Returns information about a merchant's item.
---@param index number @ The index of the item in the merchant's inventory
---@return string namestring texturenumber pricenumber quantitynumber numAvailableunknown isPurchasablenumber isUsablenumber extendedCost
---[View Documents](https://wow.gamepedia.com/API_GetMerchantItemInfo)
function GetMerchantItemInfo(index)
end

---Returns a link to the indexed item in the merchant's inventory.
---@param index number @ The index of the item in the merchant's inventory
---@return unknown link
---[View Documents](https://wow.gamepedia.com/API_GetMerchantItemLink)
function GetMerchantItemLink(index)
end

---Gets the maximum stack size for an item from the active merchant.
---@param index number @ The index of the item in the merchant's inventory.
---@return number maxStack
---[View Documents](https://wow.gamepedia.com/API_GetMerchantItemMaxStack)
function GetMerchantItemMaxStack(index)
end

---Returns the number of items a merchant carries.
---@return number numItems
---[View Documents](https://wow.gamepedia.com/API_GetMerchantNumItems)
function GetMerchantNumItems()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMinRenderScale)
function GetMinRenderScale()
end

---Returns the zone text, that is displayed over the minimap
---@return string zone
---[View Documents](https://wow.gamepedia.com/API_GetMinimapZoneText)
function GetMinimapZoneText()
end

---Needs summary.
---@return number expansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetMinimumExpansionLevel)
function GetMinimumExpansionLevel()
end

---Gives information about the mirror bar. (Spirit release, exhaustion/fatigue, etc)
---@param id number @ timer index, from 1 to MIRRORTIMER_NUMTIMERS (3 as of 3.2). In general, the following correspondence holds: 1 = Fatigue, 2 = Breath, 3 = Feign Death.
---@return string timernumber initialnumber maxvaluenumber scalenumber pausedstring label
---[View Documents](https://wow.gamepedia.com/API_GetMirrorTimerInfo)
function GetMirrorTimerInfo(id)
end

---Returns the current value of a mirror timer (fatigue, breath, feign death etc).
---@param timer string @ the first return value from GetMirrorTimerInfo, identifying the timer queried. Valid values include EXHAUSTION, BREATH and FEIGNDEATH.
---@return number value
---[View Documents](https://wow.gamepedia.com/API_GetMirrorTimerProgress)
function GetMirrorTimerProgress(timer)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetModResilienceDamageReduction)
function GetModResilienceDamageReduction()
end

---Returns the modifier key assigned to the given action.
---@param action string @ The action to query. Actions defined by Blizzard:
---@return string key
---[View Documents](https://wow.gamepedia.com/API_GetModifiedClick)
function GetModifiedClick(action)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetModifiedClickAction)
function GetModifiedClickAction()
end

---Returns an integer value of your held money.
---@return number money
---[View Documents](https://wow.gamepedia.com/API_GetMoney)
function GetMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMonitorAspectRatio)
function GetMonitorAspectRatio()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMonitorCount)
function GetMonitorCount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMonitorName)
function GetMonitorName()
end

---Returns the name of the button responsible causing the OnClick handler to fire.
---@return string buttonName
---[View Documents](https://wow.gamepedia.com/API_GetMouseButtonClicked)
function GetMouseButtonClicked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMouseButtonName)
function GetMouseButtonName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMouseClickFocus)
function GetMouseClickFocus()
end

---Returns the frame that is currently receiving mouse events.  The frame must have enableMouse=true
---@return table frameID
---[View Documents](https://wow.gamepedia.com/API_GetMouseFocus)
function GetMouseFocus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMouseMotionFocus)
function GetMouseMotionFocus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMovieDownloadProgress)
function GetMovieDownloadProgress()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetMultiCastBarIndex)
function GetMultiCastBarIndex()
end

---Returns a list of valid totem spells for the specified totem bar slot.
---@param slot number @ The totem bar slot number:
---@return number totem1number totem2number totem3number totem4number totem5number totem6number totem7
---[View Documents](https://wow.gamepedia.com/API_GetMultiCastTotemSpells)
function GetMultiCastTotemSpells(slot)
end

---Produces a table describing all the harmful consequences of wearing corrupted gear without resistance.
---@return table corruptionEffects
---[View Documents](https://wow.gamepedia.com/API_GetNegativeCorruptionEffectInfo)
function GetNegativeCorruptionEffectInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNetIpTypes)
function GetNetIpTypes()
end

---Returns various network statistics.
---@return number bandwidthInnumber bandwidthOutnumber latencyHomenumber latencyWorld
---[View Documents](https://wow.gamepedia.com/API_GetNetStats)
function GetNetStats()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNewSocketInfo)
function GetNewSocketInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNewSocketLink)
function GetNewSocketLink()
end

---Return the next achievement in a chain.
---@param achievementID number @ The ID of the Achievement
---@return number nextAchievementID
---[View Documents](https://wow.gamepedia.com/API_GetNextAchievement)
function GetNextAchievement(achievementID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNextCompleatedTutorial)
function GetNextCompleatedTutorial()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNextPendingInviteConfirmation)
function GetNextPendingInviteConfirmation()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNormalizedRealmName)
function GetNormalizedRealmName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumActiveQuests)
function GetNumActiveQuests()
end

---Get the number of user supplied AddOns.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_GetNumAddOns)
function GetNumAddOns()
end

---Returns the number of Archaeology races in the game.
---@return number numRaces
---[View Documents](https://wow.gamepedia.com/API_GetNumArchaeologyRaces)
function GetNumArchaeologyRaces()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumArenaOpponentSpecs)
function GetNumArenaOpponentSpecs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumArenaOpponents)
function GetNumArenaOpponents()
end

---Returns the amount of artifacts the player has acquired from the provided race.
---@param raceIndex number @ Index of the race to be selected.
---@return number numProjects
---[View Documents](https://wow.gamepedia.com/API_GetNumArtifactsByRace)
function GetNumArtifactsByRace(raceIndex)
end

---Returns the number of popup quest notifications being shown.
---@return number numPopups
---[View Documents](https://wow.gamepedia.com/API_GetNumAutoQuestPopUps)
function GetNumAutoQuestPopUps()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumAvailableQuests)
function GetNumAvailableQuests()
end

---Returns information about the number of purchased bank bag slots.
---@return number numSlotsnumber full
---[View Documents](https://wow.gamepedia.com/API_GetNumBankSlots)
function GetNumBankSlots()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumBattlefieldFlagPositions)
function GetNumBattlefieldFlagPositions()
end

---Appears to return the number of scores in the battleground/field scoreboard:
---@return unknown numBattlefieldScores
---[View Documents](https://wow.gamepedia.com/API_GetNumBattlefieldScores)
function GetNumBattlefieldScores()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumBattlefieldVehicles)
function GetNumBattlefieldVehicles()
end

---Returns the number of battleground types.
---@return number numBattlegrounds
---[View Documents](https://wow.gamepedia.com/API_GetNumBattlegroundTypes)
function GetNumBattlegroundTypes()
end

---Returns the total number of key bindings listed in the key bindings window.  This includes not only actions that can be bound, but also the category headers in the window.  This would generally be used in conjunction with GetBinding to loop through and set/get all of the key bindings available.
---@return unknown numKeyBindings
---[View Documents](https://wow.gamepedia.com/API_GetNumBindings)
function GetNumBindings()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumBuybackItems)
function GetNumBuybackItems()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumChannelMembers)
function GetNumChannelMembers()
end

---Returns the number of existing player classes.
---@return number numClasses
---[View Documents](https://wow.gamepedia.com/API_GetNumClasses)
function GetNumClasses()
end

---Returns the number of companions you have.
---@param type string @ Type of companions to count: CRITTER, or MOUNT.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_GetNumCompanions)
function GetNumCompanions(type)
end

---Returns the number of completed achievements for the comparison player.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumComparisonCompletedAchievements)
function GetNumComparisonCompletedAchievements()
end

---Return the total number of Achievements, and number completed.
---@return number totalnumber completed
---[View Documents](https://wow.gamepedia.com/API_GetNumCompletedAchievements)
function GetNumCompletedAchievements()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumDeclensionSets)
function GetNumDeclensionSets()
end

---This function returns the number of channels and headers currently displayed by ChannelFrame. Usually used to loop through all available channels/headers to perfom API GetChannelDisplayInfo on them.  Note that this function only retrieves the number of visible channels/headers! Those subchannels that are hidden by a collapsed header are not counted.
---@return unknown channelCount
---[View Documents](https://wow.gamepedia.com/API_GetNumDisplayChannels)
function GetNumDisplayChannels()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumDungeonForRandomSlot)
function GetNumDungeonForRandomSlot()
end

---Needs summary.
---@return number numExpansions
---[View Documents](https://wow.gamepedia.com/API_GetNumExpansions)
function GetNumExpansions()
end

---Returns the number of lines in the faction display.
---@return number numFactions
---[View Documents](https://wow.gamepedia.com/API_GetNumFactions)
function GetNumFactions()
end

---Returns the number of achievements that match the search string specified calling SetAchievementSearchString
---@return number numFiltered
---[View Documents](https://wow.gamepedia.com/API_GetNumFilteredAchievements)
function GetNumFilteredAchievements()
end

---Returns the number of available Flexible Raid instances.
---@return number numInstances
---[View Documents](https://wow.gamepedia.com/API_GetNumFlexRaidDungeons)
function GetNumFlexRaidDungeons()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumFlyouts)
function GetNumFlyouts()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumFrames)
function GetNumFrames()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGroupChannels)
function GetNumGroupChannels()
end

---Returns the total number of players in a group.
---@param groupType unknown @ Optional - One of the following:
---@return number numGroupMembers
---[View Documents](https://wow.gamepedia.com/API_GetNumGroupMembers)
function GetNumGroupMembers(groupType)
end

---Returns the total number of applicants to your guild received trough the Guild Finder.
---@return number numApplicants
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildApplicants)
function GetNumGuildApplicants()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildBankMoneyTransactions)
function GetNumGuildBankMoneyTransactions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildBankTabs)
function GetNumGuildBankTabs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildBankTransactions)
function GetNumGuildBankTransactions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildChallenges)
function GetNumGuildChallenges()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildEvents)
function GetNumGuildEvents()
end

---Returns the number of guild members.
---@return number numTotalGuildMembersnumber numOnlineGuildMembersnumber numOnlineAndMobileMembers
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildMembers)
function GetNumGuildMembers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildMembershipRequests)
function GetNumGuildMembershipRequests()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildNews)
function GetNumGuildNews()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildPerks)
function GetNumGuildPerks()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildRewards)
function GetNumGuildRewards()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumGuildTradeSkill)
function GetNumGuildTradeSkill()
end

---Returns the number of item effects affected by upgrading the current item.
---@return number numUpgradeEffects
---[View Documents](https://wow.gamepedia.com/API_GetNumItemUpgradeEffects)
function GetNumItemUpgradeEffects()
end

---Returns the number of languages your character can speak.
---@return number NumLanguages
---[View Documents](https://wow.gamepedia.com/API_GetNumLanguages)
function GetNumLanguages()
end

---Returns the slot number of the last item in the loot window (the item window must be opened).
---@return number numLootItems
---[View Documents](https://wow.gamepedia.com/API_GetNumLootItems)
function GetNumLootItems()
end

---Return the number of macros the player has.
---@return number globalnumber perChar
---[View Documents](https://wow.gamepedia.com/API_GetNumMacros)
function GetNumMacros()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumMembersInRank)
function GetNumMembersInRank()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumModifiedClickActions)
function GetNumModifiedClickActions()
end

---Gets the number of names that have signed the open petition.
---@return number numNames
---[View Documents](https://wow.gamepedia.com/API_GetNumPetitionNames)
function GetNumPetitionNames()
end

---Returns the number of reward choices in the quest you're currently completing.
---@return number numChoices
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestChoices)
function GetNumQuestChoices()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestCurrencies)
function GetNumQuestCurrencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestItemDrops)
function GetNumQuestItemDrops()
end

---Returns the number of items nessecary to complete a particular quest.
---@return number numRequiredItems
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestItems)
function GetNumQuestItems()
end

---Returns the number of objectives for a given quest.
---@param questID number @ Identifier of the quest. If not provided, default to the currently selected Quest, via SelectQuestLogEntry().
---@return number numQuestLogLeaderBoards
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLeaderBoards)
function GetNumQuestLeaderBoards(questID)
end

---Returns the number of options someone has when getting a quest item.
---@return number numQuestChoices
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLogChoices)
function GetNumQuestLogChoices()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLogRewardCurrencies)
function GetNumQuestLogRewardCurrencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLogRewardFactions)
function GetNumQuestLogRewardFactions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLogRewardSpells)
function GetNumQuestLogRewardSpells()
end

---Returns the count of the rewards for a particular quest.
---@return number numQuestRewards
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLogRewards)
function GetNumQuestLogRewards()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestLogTasks)
function GetNumQuestLogTasks()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestPOIWorldEffects)
function GetNumQuestPOIWorldEffects()
end

---Returns the number of items unconditionally rewarded by the quest being completed.
---@return number numRewards
---[View Documents](https://wow.gamepedia.com/API_GetNumQuestRewards)
function GetNumQuestRewards()
end

---Returns the number of available Raid Finder dungeons [1]
---@return number numRFDungeons
---[View Documents](https://wow.gamepedia.com/API_GetNumRFDungeons)
function GetNumRFDungeons()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumRaidProfiles)
function GetNumRaidProfiles()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumRandomDungeons)
function GetNumRandomDungeons()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumRandomScenarios)
function GetNumRandomScenarios()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumRecruitingGuilds)
function GetNumRecruitingGuilds()
end

---Returns the number of currency rewards for the quest currently being viewed in the quest log or quest info frame.
---@return number numCurrencies
---[View Documents](https://wow.gamepedia.com/API_GetNumRewardCurrencies)
function GetNumRewardCurrencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumRewardSpells)
function GetNumRewardSpells()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumRoutes)
function GetNumRoutes()
end

---Returns the number of instances for which the player currently has lockout data saved.
---@return number numInstances
---[View Documents](https://wow.gamepedia.com/API_GetNumSavedInstances)
function GetNumSavedInstances()
end

---Returns the number of world bosses the player currently cannot receive loot from.
---@return number numSavedWorldBosses
---[View Documents](https://wow.gamepedia.com/API_GetNumSavedWorldBosses)
function GetNumSavedWorldBosses()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumScenarios)
function GetNumScenarios()
end

---Returns the number of shapeshift buttons (stances for Warriors, auras for Paladins, forms for Druids, etc) the player currently has.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumShapeshiftForms)
function GetNumShapeshiftForms()
end

---Returns the number of sockets in the item currently in the item socketing window.
---@return unknown SocketCount
---[View Documents](https://wow.gamepedia.com/API_GetNumSockets)
function GetNumSockets()
end

---Returns the number of specialization group (dual specs) the player has.
---@param b boolean @ In theory this returns information for the inspected target instead of the player. In practice, this seems to return 0 if true. Defaults to false.
---@return number numSpecGroups
---[View Documents](https://wow.gamepedia.com/API_GetNumSpecGroups)
function GetNumSpecGroups(b)
end

---Returns the number of available specializations.
---@param isInspect boolean @ if true, return information for the inspected unit; false by default
---@param isPet boolean @ if true, return information for the player's pet; false by default
---@return unknown numSpecializations
---[View Documents](https://wow.gamepedia.com/API_GetNumSpecializations)
function GetNumSpecializations(isInspect, isPet)
end

---Returns the number of specializations available to a particular class.
---@param classID number @ classId) - class ID to return information about.
---@return unknown numSpecializations
---[View Documents](https://wow.gamepedia.com/API_GetNumSpecializationsForClassID)
function GetNumSpecializationsForClassID(classID)
end

---Retrieves the number of tabs in the player's spellbook.
---@return number numTabs
---[View Documents](https://wow.gamepedia.com/API_GetNumSpellTabs)
function GetNumSpellTabs()
end

---Returns the number of other players in the player's party (5-man sub-group).
---@param groupType unknown @ Optional - One of the following:
---@return number numSubgroupMembers
---[View Documents](https://wow.gamepedia.com/API_GetNumSubgroupMembers)
function GetNumSubgroupMembers(groupType)
end

---Returns the number of the highest Title ID.
---@return number numTitles
---[View Documents](https://wow.gamepedia.com/API_GetNumTitles)
function GetNumTitles()
end

---Returns the total number of tracked achievements.
---@return number numTracked
---[View Documents](https://wow.gamepedia.com/API_GetNumTrackedAchievements)
function GetNumTrackedAchievements()
end

---Returns the number of available tracking methods.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumTrackingTypes)
function GetNumTrackingTypes()
end

---Returns the number of trainer services.
---@return number numTrainerServices
---[View Documents](https://wow.gamepedia.com/API_GetNumTrainerServices)
function GetNumTrainerServices()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumTreasurePickerItems)
function GetNumTreasurePickerItems()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumUnspentPvpTalents)
function GetNumUnspentPvpTalents()
end

---Returns the number of unspent talents.
---@return number numUnspentTalents
---[View Documents](https://wow.gamepedia.com/API_GetNumUnspentTalents)
function GetNumUnspentTalents()
end

---Returns the number of items being deposited into the Void Storage [1]
---@return number numDeposits
---[View Documents](https://wow.gamepedia.com/API_GetNumVoidTransferDeposit)
function GetNumVoidTransferDeposit()
end

---Returns the number of items being withdrawed from the Void Storage [1]
---@return number numWithdrawals
---[View Documents](https://wow.gamepedia.com/API_GetNumVoidTransferWithdrawal)
function GetNumVoidTransferWithdrawal()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumWarGameTypes)
function GetNumWarGameTypes()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetNumWorldPVPAreas)
function GetNumWorldPVPAreas()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetOSLocale)
function GetOSLocale()
end

---Returns texture coordinates of an object icon.
---@param objectIcon number @ index of the object icon to retrieve texture coordinates for, ascending from -2.
---@return number leftnumber rightnumber topnumber bottom
---[View Documents](https://wow.gamepedia.com/API_GetObjectIconTextureCoords)
function GetObjectIconTextureCoords(objectIcon)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetObjectiveText)
function GetObjectiveText()
end

---Returns whether you're currently passing on all loot.
---@return number optedOut
---[View Documents](https://wow.gamepedia.com/API_GetOptOutOfLoot)
function GetOptOutOfLoot()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetOverrideAPBySpellPower)
function GetOverrideAPBySpellPower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetOverrideBarIndex)
function GetOverrideBarIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetOverrideBarSkin)
function GetOverrideBarSkin()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetOverrideSpellPowerByAP)
function GetOverrideSpellPowerByAP()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPOITextureCoords)
function GetPOITextureCoords()
end

---Checks to see if the player has enabled PvP (Permaflagged).
---@return unknown ispvp
---[View Documents](https://wow.gamepedia.com/API_GetPVPDesired)
function GetPVPDesired()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPVPGearStatRules)
function GetPVPGearStatRules()
end

---Gets the statistics about your lifetime PVP contributions.
---@return number honorableKillsnumber dishonorableKillsnumber highestRank
---[View Documents](https://wow.gamepedia.com/API_GetPVPLifetimeStats)
function GetPVPLifetimeStats()
end

---Returns which roles the player is willing to perform in PvP battlegrounds.
---@return boolean tankboolean healerboolean dps
---[View Documents](https://wow.gamepedia.com/API_GetPVPRoles)
function GetPVPRoles()
end

---Gets the amount of honorable kills and honor points you have for the current session ( today ).
---@return number hknumber hp
---[View Documents](https://wow.gamepedia.com/API_GetPVPSessionStats)
function GetPVPSessionStats()
end

---Returns the amount of time left on your PVP flag.
---@return number ms
---[View Documents](https://wow.gamepedia.com/API_GetPVPTimer)
function GetPVPTimer()
end

---Gets the player's PVP contribution statistics for the previous day.
---@return number hknumber dknumber contribution
---[View Documents](https://wow.gamepedia.com/API_GetPVPYesterdayStats)
function GetPVPYesterdayStats()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetParryChance)
function GetParryChance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetParryChanceFromAttribute)
function GetParryChanceFromAttribute()
end

---Returns a list of raidmembers with a main tank or main assist role.
---@param assignment string @ The role to search, either MAINTANK or MAINASSIST (not case-sensitive).
---@param raidmember string @ UnitId
---@param exactMatch boolean
---@return number raidIndex1number raidIndex2
---[View Documents](https://wow.gamepedia.com/API_GetPartyAssignment)
function GetPartyAssignment(assignment, raidmember, exactMatch)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPartyLFGBackfillInfo)
function GetPartyLFGBackfillInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPartyLFGID)
function GetPartyLFGID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPendingGlyphName)
function GetPendingGlyphName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPendingInviteConfirmations)
function GetPendingInviteConfirmations()
end

---Returns information about the player's personal PvP rating in a specific bracket.
---@param index number @ PvP bracket index ascending from 1 for 2v2, 3v3, 5v5 and 10v10 rated battlegrounds.
---@return number ratingnumber seasonBestnumber weeklyBestnumber seasonPlayednumber seasonWonnumber weeklyPlayednumber weeklyWonnumber cap
---[View Documents](https://wow.gamepedia.com/API_GetPersonalRatedInfo)
function GetPersonalRatedInfo(index)
end

---Returns cooldown information for the pet action in the specified pet action bar slot.
---@param index number @ The index of the pet action button you want to query for cooldown info.
---@return number startTimenumber durationboolean enable
---[View Documents](https://wow.gamepedia.com/API_GetPetActionCooldown)
function GetPetActionCooldown(index)
end

---Returns information on the specified pet action.
---@param index number @ The index of the pet action button you want to query.
---@return string namestring subtextstring textureboolean isTokenboolean isActiveboolean autoCastAllowedboolean autoCastEnabled
---[View Documents](https://wow.gamepedia.com/API_GetPetActionInfo)
function GetPetActionInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetActionSlotUsable)
function GetPetActionSlotUsable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetActionsUsable)
function GetPetActionsUsable()
end

---Returns the pet's current XP total, and the XP total required for the next level.
---@return number currXPnumber nextXP
---[View Documents](https://wow.gamepedia.com/API_GetPetExperience)
function GetPetExperience()
end

---Returns the food types the current pet can eat.
---@return unknown petFoodList
---[View Documents](https://wow.gamepedia.com/API_GetPetFoodTypes)
function GetPetFoodTypes()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetIcon)
function GetPetIcon()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetMeleeHaste)
function GetPetMeleeHaste()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetSpellBonusDamage)
function GetPetSpellBonusDamage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetTalentTree)
function GetPetTalentTree()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetTimeRemaining)
function GetPetTimeRemaining()
end

---Gets the information for a petition being viewed.
---@return string petitionTypestring titlestring bodyTextnumber maxSigsstring originatorboolean isOriginatornumber minSigs
---[View Documents](https://wow.gamepedia.com/API_GetPetitionInfo)
function GetPetitionInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPetitionNameInfo)
function GetPetitionNameInfo()
end

---Returns physical screen size of game.
---@return number widthnumber height
---[View Documents](https://wow.gamepedia.com/API_GetPhysicalScreenSize)
function GetPhysicalScreenSize()
end

---Returns an active buff/debuff by spell ID on the player character.
---@param spellID number
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPlayerAuraBySpellID)
function GetPlayerAuraBySpellID(spellID)
end

---Returns the direction the player character is currently facing.
---@return number facing
---[View Documents](https://wow.gamepedia.com/API_GetPlayerFacing)
function GetPlayerFacing()
end

---Returns basic information about another player from their GUID.
---@param guid string @ The GUID of the player you're querying.
---@return unknown izedClassstring englishClassunknown izedRacestring englishRacenumber sexstring namestring realm
---[View Documents](https://wow.gamepedia.com/API_GetPlayerInfoByGUID)
function GetPlayerInfoByGUID(guid)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPlayerTradeCurrency)
function GetPlayerTradeCurrency()
end

---Gets the amount of money in the trade window for the current user.
---@return string playerTradeMoney
---[View Documents](https://wow.gamepedia.com/API_GetPlayerTradeMoney)
function GetPlayerTradeMoney()
end

---Returns information about a spell on the possession bar.
---@param index number @ The slot of the possess bar to check, ascending from 1.
---@return string texturenumber spellIDboolean enabled
---[View Documents](https://wow.gamepedia.com/API_GetPossessInfo)
function GetPossessInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPowerRegen)
function GetPowerRegen()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPowerRegenForPowerType)
function GetPowerRegenForPowerType()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPrevCompleatedTutorial)
function GetPrevCompleatedTutorial()
end

---Return the previous achievement in a chain.
---@param achievementID number @ The ID of the Achievement
---@return number previousAchievementID
---[View Documents](https://wow.gamepedia.com/API_GetPreviousAchievement)
function GetPreviousAchievement(achievementID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPreviousArenaSeason)
function GetPreviousArenaSeason()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPrimarySpecialization)
function GetPrimarySpecialization()
end

---Gets details on a profession from its index including name, icon, and skill level.
---@param index number @ The skill index number (can be found with API GetProfessions())
---@return string namestring iconnumber skillLevelnumber maxSkillLevelnumber numAbilitiesnumber spelloffsetnumber skillLinenumber skillModifiernumber specializationIndexnumber specializationOffset
---[View Documents](https://wow.gamepedia.com/API_GetProfessionInfo)
function GetProfessionInfo(index)
end

---Returns spell tab indices of the player's current professions
---@return number prof1number prof2number archaeologynumber fishingnumber cooking
---[View Documents](https://wow.gamepedia.com/API_GetProfessions)
function GetProfessions()
end

---Returns quest progress text, displayed by the NPC before the player hits Continue.
---@return string progress
---[View Documents](https://wow.gamepedia.com/API_GetProgressText)
function GetProgressText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPromotionRank)
function GetPromotionRank()
end

---Returns the effect of PvP Power on damage dealt to players.
---@return number pvpDamage
---[View Documents](https://wow.gamepedia.com/API_GetPvpPowerDamage)
function GetPvpPowerDamage()
end

---Returns the effect of PvP power on Healing Power.
---@return number pvpHealing
---[View Documents](https://wow.gamepedia.com/API_GetPvpPowerHealing)
function GetPvpPowerHealing()
end

---Returns information about a PvP (honor) talent.
---@param talentID number @ Talent ID.
---@param specGroupIndex number @ ? - Index of active specialization group (GetActiveSpecGroup); if nil, the selected/available return values will always be false.
---@param isInspect boolean @ ? - If non-nil, returns information based on inspectedUnit.
---@param inspectUnit unknown
---@return number talentIDunknown nameunknown iconunknown selectedunknown availableunknown spellIDunknown unlockedunknown rowunknown columnunknown knownunknown grantedByAura
---[View Documents](https://wow.gamepedia.com/API_GetPvpTalentInfoByID)
function GetPvpTalentInfoByID(talentID, specGroupIndex, isInspect, inspectUnit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPvpTalentInfoBySpecialization)
function GetPvpTalentInfoBySpecialization()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetPvpTalentLink)
function GetPvpTalentLink()
end

---Returns the material string associated with the particular quest. The material string is non-nil if this quest uses a custom texture other than the default Parchment texture.
---@return string material
---[View Documents](https://wow.gamepedia.com/API_GetQuestBackgroundMaterial)
function GetQuestBackgroundMaterial()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestCurrencyID)
function GetQuestCurrencyID()
end

---Returns information about a currency token rewarded from the quest currently being viewed in the quest info frame.
---@param itemType string @ The category of the currency to query. Currently reward is the only category in use for currencies.
---@param index number @ The index of the currency to query, in the range [1,GetNumRewardCurrencies()].
---@return string namestring texturenumber numItemsnumber quality
---[View Documents](https://wow.gamepedia.com/API_GetQuestCurrencyInfo)
function GetQuestCurrencyInfo(itemType, index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestExpansion)
function GetQuestExpansion()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestFactionGroup)
function GetQuestFactionGroup()
end

---Returns the quest ID of the quest being offered/discussed with an NPC.
---@return number questID
---[View Documents](https://wow.gamepedia.com/API_GetQuestID)
function GetQuestID()
end

---Returns information about a quest's item rewards or requirements.
---@param type string @ type of the item to query. One of the following values:
---@param index number @ index of the item of the specified type to return information about, ascending from 1.
---@return string namestring texturenumber countnumber qualitynumber isUsable
---[View Documents](https://wow.gamepedia.com/API_GetQuestItemInfo)
function GetQuestItemInfo(type, index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestItemInfoLootType)
function GetQuestItemInfoLootType()
end

---Returns link to the quest item.
---@param type string @ required, reward or choice
---@param index number @ Quest reward item index.
---@return string itemLink
---[View Documents](https://wow.gamepedia.com/API_GetQuestItemLink)
function GetQuestItemLink(type, index)
end

---At an unknown point between patches 6.2 and 7.3.2, this function's argument was changed to take a QuestID instead of a quest log index.
---@param QuestID number @ Unique identifier for a quest.
---@return string QuestLink
---[View Documents](https://wow.gamepedia.com/API_GetQuestLink)
function GetQuestLink(QuestID)
end

---Returns a bunch of data about a quest reward choice from the quest log.
---@param itemNum number @ The item number to get info on
---@return string namestring texturenumber numItemsnumber qualityboolean isUsable
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogChoiceInfo)
function GetQuestLogChoiceInfo(itemNum)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogChoiceInfoLootType)
function GetQuestLogChoiceInfoLootType()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogCompletionText)
function GetQuestLogCompletionText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogCriteriaSpell)
function GetQuestLogCriteriaSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogItemDrop)
function GetQuestLogItemDrop()
end

---@param type string @ required, reward or choice
---@param index table @ Integer - Quest reward item index (starts with 1).
---@return string itemLink
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogItemLink)
function GetQuestLogItemLink(type, index)
end

---Returns information about a quest objective.
---@param i number @ Index of the quest objective to query, ascending from 1 to GetNumQuestLeaderBoards(questIndex).
---@param questIndex unknown @ Optional Number - Index of the quest log entry to query, ascending from 1 to GetNumQuestLogEntries. If not provided or invalid, defaults to the currently selected quest (via SelectQuestLogEntry)
---@return string descriptionstring objectiveTypeboolean isCompleted
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogLeaderBoard)
function GetQuestLogLeaderBoard(i, questIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogPortraitGiver)
function GetQuestLogPortraitGiver()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogPortraitTurnIn)
function GetQuestLogPortraitTurnIn()
end

---Returns the description and objectives required for the selected (the one highlighted in the quest log) quest.
---@return unknown questDescriptionunknown questObjectives
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogQuestText)
function GetQuestLogQuestText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogQuestType)
function GetQuestLogQuestType()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardArtifactXP)
function GetQuestLogRewardArtifactXP()
end

---Provides information about a currency reward for the quest currently being viewed in the quest log, or of the provided questId.
---@param index number @ The index of the currency to query, in the range of [1,GetNumRewardCurrencies()]
---@param questId unknown
---@return string namestring texturenumber numItemsnumber currencyIdnumber quality
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardCurrencyInfo)
function GetQuestLogRewardCurrencyInfo(index, questId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardFactionInfo)
function GetQuestLogRewardFactionInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardHonor)
function GetQuestLogRewardHonor()
end

---GetQuestLogRewardInfo returns information about mandatory quest reward items.
---@param itemIndex number @ Index of the item reward to query, up to GetNumQuestLogRewards
---@param questID number @ Unique identifier for a quest.
---@return string itemNamestring itemTexturenumber numItemsnumber qualityboolean isUsablenumber itemIDnumber itemLevel
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardInfo)
function GetQuestLogRewardInfo(itemIndex, questID)
end

---GetQuestLogRewardMoney returns a number representing the amount of copper rewarded by a particular quest in the quest log.
---@param questID number @ Unique identifier for a quest.
---@return unknown money
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardMoney)
function GetQuestLogRewardMoney(questID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardSkillPoints)
function GetQuestLogRewardSkillPoints()
end

---Returns information about the spell reward of the current selected quest.
---@param rewardIndex number @ The index of the spell reward to get the details for
---@param questID number @ Unique QuestID for the quest to be queried.
---@return string texturestring nameboolean isTradeskillSpellboolean isSpellLearnedunknown hideSpellLearnTextboolean isBoostSpellnumber garrFollowerIDunknown genericUnlocknumber spellID
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardSpell)
function GetQuestLogRewardSpell(rewardIndex, questID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardTitle)
function GetQuestLogRewardTitle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogRewardXP)
function GetQuestLogRewardXP()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogSpecialItemCooldown)
function GetQuestLogSpecialItemCooldown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogSpecialItemInfo)
function GetQuestLogSpecialItemInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogSpellLink)
function GetQuestLogSpellLink()
end

---Gets the seconds left for the current quest that is being timed.
---@return unknown timeLeft
---[View Documents](https://wow.gamepedia.com/API_GetQuestLogTimeLeft)
function GetQuestLogTimeLeft()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestMoneyToGet)
function GetQuestMoneyToGet()
end

---Returns information about a quest objective.
---@param questID number @ Unique identifier of the quest.
---@param objectiveIndex unknown @ Index of the quest objective to query, ascending from 1 to GetNumQuestLeaderBoards(questIndex) or to numObjectives from GetTaskInfo(questID).
---@param Boolean unknown @ Required to actually obtain quest text.
---@return string textstring objectiveTypeboolean finished
---[View Documents](https://wow.gamepedia.com/API_GetQuestObjectiveInfo)
function GetQuestObjectiveInfo(questID, objectiveIndex, Boolean)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestPOIBlobCount)
function GetQuestPOIBlobCount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestPOILeaderBoard)
function GetQuestPOILeaderBoard()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestPOIs)
function GetQuestPOIs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestPortraitGiver)
function GetQuestPortraitGiver()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestPortraitTurnIn)
function GetQuestPortraitTurnIn()
end

---Returns a quest's objective completion percentage.
---@param questID number @ Unique identifier of the quest.
---@return number percent
---[View Documents](https://wow.gamepedia.com/API_GetQuestProgressBarPercent)
function GetQuestProgressBarPercent(questID)
end

---Returns the number of seconds until daily quests reset.
---@return number nextReset
---[View Documents](https://wow.gamepedia.com/API_GetQuestResetTime)
function GetQuestResetTime()
end

---Completes the quest with the specified quest reward.
---@param itemChoice unknown @ The quest reward chosen
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestReward)
function GetQuestReward(itemChoice)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestSortIndex)
function GetQuestSortIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestSpellLink)
function GetQuestSpellLink()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestText)
function GetQuestText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetQuestUiMapID)
function GetQuestUiMapID()
end

---Returns info about a Raid Finder dungeon by index. Limited by player level and other factors, so only Raid Finder dungeons listed in the LFG tool can be looked up.
---@param index number @ index of a Raid Finder dungeon, from 1 to GetNumRFDungeons()
---@return number IDstring namenumber typeIDnumber subtypeIDnumber minLevelnumber maxLevelnumber recLevelnumber minRecLevelnumber maxRecLevelnumber expansionLevelnumber groupIDstring textureFilenamenumber difficultynumber maxPlayersstring descriptionboolean isHolidaynumber bonusRepAmountnumber minPlayers
---[View Documents](https://wow.gamepedia.com/API_GetRFDungeonInfo)
function GetRFDungeonInfo(index)
end

---Returns the player's currently selected raid difficulty.
---@return number difficultyID
---[View Documents](https://wow.gamepedia.com/API_GetRaidDifficultyID)
function GetRaidDifficultyID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRaidProfileFlattenedOptions)
function GetRaidProfileFlattenedOptions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRaidProfileName)
function GetRaidProfileName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRaidProfileOption)
function GetRaidProfileOption()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRaidProfileSavedPosition)
function GetRaidProfileSavedPosition()
end

---Gets information about a raid member.
---@param raidIndex number @ Index of raid member between 1 and MAX_RAID_MEMBERS (40). If you specify an index that is out of bounds, the function returns nil.
---@return string zoneboolean onlineboolean isDeadstring roleboolean isMLstring combatRole
---[View Documents](https://wow.gamepedia.com/API_GetRaidRosterInfo)
function GetRaidRosterInfo(raidIndex)
end

---Returns the raid target index assigned to a unit.
---@param unit string @ UnitId
---@return number index
---[View Documents](https://wow.gamepedia.com/API_GetRaidTargetIndex)
function GetRaidTargetIndex(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRandomDungeonBestChoice)
function GetRandomDungeonBestChoice()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRandomScenarioBestChoice)
function GetRandomScenarioBestChoice()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRandomScenarioInfo)
function GetRandomScenarioInfo()
end

---Returns the player's ranged critical hit chance.
---@return number critChance
---[View Documents](https://wow.gamepedia.com/API_GetRangedCritChance)
function GetRangedCritChance()
end

---Returns the player's ranged haste amount granted through buffs.
---@return number haste
---[View Documents](https://wow.gamepedia.com/API_GetRangedHaste)
function GetRangedHaste()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRatedBattleGroundInfo)
function GetRatedBattleGroundInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetReadyCheckStatus)
function GetReadyCheckStatus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetReadyCheckTimeLeft)
function GetReadyCheckTimeLeft()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetReagentBankCost)
function GetReagentBankCost()
end

---Returns the map instance name.
---@param instanceID number @ ? - InstanceID
---@return string zone
---[View Documents](https://wow.gamepedia.com/API_GetRealZoneText)
function GetRealZoneText(instanceID)
end

---Needs summary.
---@return number realmID
---[View Documents](https://wow.gamepedia.com/API_GetRealmID)
function GetRealmID()
end

---GetRealmName() and GetNormalizedRealmName() return the name of the character's realm in different formats.
---@return string realmName
---[View Documents](https://wow.gamepedia.com/API_GetRealmName)
function GetRealmName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRecruitingGuildInfo)
function GetRecruitingGuildInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRecruitingGuildSelection)
function GetRecruitingGuildSelection()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRecruitingGuildSettings)
function GetRecruitingGuildSettings()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetReleaseTimeRemaining)
function GetReleaseTimeRemaining()
end

---Arguments none
---@return number repairAllCostboolean canRepair
---[View Documents](https://wow.gamepedia.com/API_GetRepairAllCost)
function GetRepairAllCost()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetResSicknessDuration)
function GetResSicknessDuration()
end

---Returns whether the player is in a rested (earning double XP for kills) or normal state.
---@return number idstring namenumber mult
---[View Documents](https://wow.gamepedia.com/API_GetRestState)
function GetRestState()
end

---Returns the cap on trial character level, money and profession skill for Starter Edition accounts.
---@return number rLevelnumber rMoneynumber profCap
---[View Documents](https://wow.gamepedia.com/API_GetRestrictedAccountData)
function GetRestrictedAccountData()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardArtifactXP)
function GetRewardArtifactXP()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardHonor)
function GetRewardHonor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardMoney)
function GetRewardMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardNumSkillUps)
function GetRewardNumSkillUps()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardPackArtifactPower)
function GetRewardPackArtifactPower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardPackCurrencies)
function GetRewardPackCurrencies()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardPackItems)
function GetRewardPackItems()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardPackMoney)
function GetRewardPackMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardPackTitle)
function GetRewardPackTitle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardPackTitleName)
function GetRewardPackTitleName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardSkillLineID)
function GetRewardSkillLineID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardSkillPoints)
function GetRewardSkillPoints()
end

---Returns information about spell that you get as reward for completing quest currently in gossip frame.
---@return unknown textureunknown nameunknown isTradeskillSpellunknown isSpellLearned
---[View Documents](https://wow.gamepedia.com/API_GetRewardSpell)
function GetRewardSpell()
end

---Returns quest reward text, displayed by the NPC before the player hits Complete Quest.
---@return string reward
---[View Documents](https://wow.gamepedia.com/API_GetRewardText)
function GetRewardText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRewardTitle)
function GetRewardTitle()
end

---Returns the experience reward of the quest most recently discussed with an NPC.
---@return number xp
---[View Documents](https://wow.gamepedia.com/API_GetRewardXP)
function GetRewardXP()
end

---Gets the cooldown information about a Death Knight's Rune
---@param id unknown @ A number between 1 and 6 denoting which rune to be queried.
---@return unknown startunknown durationunknown runeReady
---[View Documents](https://wow.gamepedia.com/API_GetRuneCooldown)
function GetRuneCooldown(id)
end

---Returns the rune count for the given slot.
---@param slot number @ Ranging from 1 to 6 which correspond to the available rune slots from left to right.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_GetRuneCount)
function GetRuneCount(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRunningMacro)
function GetRunningMacro()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetRunningMacroButton)
function GetRunningMacroButton()
end

---Retrieves the SavedInstanceChatLink to a specific instance.
---@param index unknown @ The index of the instance you want to query.
---@return unknown link
---[View Documents](https://wow.gamepedia.com/API_GetSavedInstanceChatLink)
function GetSavedInstanceChatLink(index)
end

---Returns info about a specific encounter from a saved instance lockout.
---@param instanceIndex number @ Index from 1 to GetNumSavedInstances()
---@param encounterIndex number @ Index from 1 to the number of encounters in the instance. For multi-part raids, this includes bosses that are not in that raid section, so the first boss in the second wing of a Raid Finder raid could actually have an encounterIndex of '4'.
---@return string bossNamenumber fileDataIDboolean isKilledboolean unknown4
---[View Documents](https://wow.gamepedia.com/API_GetSavedInstanceEncounterInfo)
function GetSavedInstanceEncounterInfo(instanceIndex, encounterIndex)
end

---Returns information about an instance for which the player has saved lockout data.
---@param index number @ index of the saved instance, from 1 to GetNumSavedInstances()
---@return unknown nameunknown idunknown resetunknown difficultyunknown lockedunknown extendedunknown instanceIDMostSigunknown isRaidunknown maxPlayersunknown difficultyNameunknown numEncountersunknown encounterProgressunknown extendDisabled
---[View Documents](https://wow.gamepedia.com/API_GetSavedInstanceInfo)
function GetSavedInstanceInfo(index)
end

---Returns information about the player's world boss loot lockout.
---@param index number @ Index of the world boss lockout to query, ascending from 1 to GetNumSavedWorldBosses().
---@return string namenumber worldBossIDnumber reset
---[View Documents](https://wow.gamepedia.com/API_GetSavedWorldBossInfo)
function GetSavedWorldBossInfo(index)
end

---Returns an ordered list of all available scenario IDs.
---@param allScenarios table @ If provided, this table will be wiped and populated with return values; otherwise, a new table will be created for the return value.
---@return table allScenarios
---[View Documents](https://wow.gamepedia.com/API_GetScenariosChoiceOrder)
function GetScenariosChoiceOrder(allScenarios)
end

---Returns the name of the specified damage school mask.
---@param schoolMask number @ bitfield mask of damage types.
---@return string school
---[View Documents](https://wow.gamepedia.com/API_GetSchoolString)
function GetSchoolString(schoolMask)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetScreenDPIScale)
function GetScreenDPIScale()
end

---Returns the height of the window in pixels.
---@return number screenHeight
---[View Documents](https://wow.gamepedia.com/API_GetScreenHeight)
function GetScreenHeight()
end

---Returns a list of available screen resolutions
---@return unknown resolution1unknown resolution2unknown resolution3unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetScreenResolutions)
function GetScreenResolutions()
end

---Returns the width of the window in pixels.
---@return number screenWidth
---[View Documents](https://wow.gamepedia.com/API_GetScreenWidth)
function GetScreenWidth()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetScriptCPUUsage)
function GetScriptCPUUsage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSecondsUntilParentalControlsKick)
function GetSecondsUntilParentalControlsKick()
end

---Returns the information for the selected race's current archaeology artifact.
---@return unknown artifactNameunknown artifactDescriptionunknown artifactRarityunknown artifactIconunknown hoverDescriptionunknown keystoneCountunknown bgTextureunknown spellID
---[View Documents](https://wow.gamepedia.com/API_GetSelectedArtifactInfo)
function GetSelectedArtifactInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSelectedDisplayChannel)
function GetSelectedDisplayChannel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSelectedFaction)
function GetSelectedFaction()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSelectedWarGameType)
function GetSelectedWarGameType()
end

---Used to determine the amount of COD gold is entered for a mail that is sent.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSendMailCOD)
function GetSendMailCOD()
end

---Returns information about an item attached in the send mail frame.
---@param index number @ The index of the attachment to query, in the range of [1,ATTACHMENTS_MAX_SEND]
---@return string namenumber itemIDstring texturenumber countnumber quality
---[View Documents](https://wow.gamepedia.com/API_GetSendMailItem)
function GetSendMailItem(index)
end

---Returns the itemLink of an item attached to the mail message the player is sending.
---@param attachment number @ The index of the attachment to query, in the range of [1,ATTACHMENTS_MAX_SEND]
---@return unknown itemLink
---[View Documents](https://wow.gamepedia.com/API_GetSendMailItemLink)
function GetSendMailItemLink(attachment)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSendMailMoney)
function GetSendMailMoney()
end

---Gets the cost for sending mail.
---@return number sendPrice
---[View Documents](https://wow.gamepedia.com/API_GetSendMailPrice)
function GetSendMailPrice()
end

---Returns the expansion level currently active on the server.
---@return number serverExpansionLevel
---[View Documents](https://wow.gamepedia.com/API_GetServerExpansionLevel)
function GetServerExpansionLevel()
end

---Returns the server's Unix time.
---@return number timestamp
---[View Documents](https://wow.gamepedia.com/API_GetServerTime)
function GetServerTime()
end

---Returns the time since you opened the game client.
---@return number sessionTime
---[View Documents](https://wow.gamepedia.com/API_GetSessionTime)
function GetSessionTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSetBonusesForSpecializationByItemID)
function GetSetBonusesForSpecializationByItemID()
end

---For some classes the return value is nil during the loading process. You need to wait until UPDATE_SHAPESHIFT_FORMS fires to get correct return values.
---@param flag boolean @ Optional) - True if return value is to be compared to a macro's conditional statement. This makes it always return zero for Presences and Auras. False or nil returns an index based on which button to highlight on the shapeshift/stance bar left to right starting at 1.
---@return number index
---[View Documents](https://wow.gamepedia.com/API_GetShapeshiftForm)
function GetShapeshiftForm(flag)
end

---Returns cooldown information for a specified form.
---@param index number @ Index of the desired form
---@return number startTimenumber durationnumber isActive
---[View Documents](https://wow.gamepedia.com/API_GetShapeshiftFormCooldown)
function GetShapeshiftFormCooldown(index)
end

---Returns the ID of the form or stance the player is currently in.
---@return number index
---[View Documents](https://wow.gamepedia.com/API_GetShapeshiftFormID)
function GetShapeshiftFormID()
end

---Retrieves information about an available shapeshift form or similar ability.
---@param index number @ index, ascending from 1 to GetNumShapeshiftForms()
---@return string iconnumber activenumber castablenumber spellID
---[View Documents](https://wow.gamepedia.com/API_GetShapeshiftFormInfo)
function GetShapeshiftFormInfo(index)
end

---Returns which type of weapon the player currently has unsheathed, if any.
---@return number sheathState
---[View Documents](https://wow.gamepedia.com/API_GetSheathState)
function GetSheathState()
end

---Returns the percentage of damage blocked by your shield.
---@return number damageReduction
---[View Documents](https://wow.gamepedia.com/API_GetShieldBlock)
function GetShieldBlock()
end

---Returns whether the item currently selected for socketing can be traded to other eligible players.
---@return number isBoundTradeable
---[View Documents](https://wow.gamepedia.com/API_GetSocketItemBoundTradeable)
function GetSocketItemBoundTradeable()
end

---Returns various information about the inventory item currently being socketed (i.e. socket UI is open for the item).
---@return string itemNamestring iconPathNamenumber itemQuality
---[View Documents](https://wow.gamepedia.com/API_GetSocketItemInfo)
function GetSocketItemInfo()
end

---Returns whether the item currently selected for socketing can be refunded.
---@return number isRefundable
---[View Documents](https://wow.gamepedia.com/API_GetSocketItemRefundable)
function GetSocketItemRefundable()
end

---Returns the type of one of the sockets in the item currently in the item socketing window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSocketTypes)
function GetSocketTypes()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSortBagsRightToLeft)
function GetSortBagsRightToLeft()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpecChangeCost)
function GetSpecChangeCost()
end

---Returns the index of the player's current specialization.
---@param isInspect boolean @ if true, return information for the inspected player
---@param isPet boolean @ if true, return information for the player's pet.
---@param specGroup number @ The index of a given specialization/talent/glyph group (1 for primary / 2 for secondary).
---@return number currentSpec
---[View Documents](https://wow.gamepedia.com/API_GetSpecialization)
function GetSpecialization(isInspect, isPet, specGroup)
end

---Returns information about a player's specializations.
---@param specIndex number @ Index of the specialization to query, ascending from 1 to GetNumSpecializations().
---@param isInspect boolean @ ?Optional.  Could be nil. - If true, query specialization information for the inspected unit.
---@param isPet boolean @ ?Optional.  Could be nil. - If true, query specialization information for the player's pet.
---@param inspectTarget unknown @ ? - Some unknown argument not used anywhere in Blizzard API in 6.2.
---@param sex number @ ?Optional.  Could be nil. - Player's sex as returned by UnitSex.
---@return number idstring namestring descriptionstring iconstring rolenumber primaryStat
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationInfo)
function GetSpecializationInfo(specIndex, isInspect, isPet, inspectTarget, sex)
end

---Returns information about the specified specialization.
---@param specID number @ Specialization ID of the specialization to query, returned from GetInspectSpecialization.
---@return number idstring namestring descriptionstring iconstring rolestring class
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationInfoByID)
function GetSpecializationInfoByID(specID)
end

---Returns information about the specified specialization.
---@param classID number @ The ClassId of the class to which this specialization belongs, going from 1 to GetNumClasses().
---@param specNum number @ The number of the specialization to query, going from 1 to GetNumSpecializationsForClassID(classID).
---@return number specIDstring namestring descriptionnumber iconIDstring roleboolean isRecommendedboolean isAllowed
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationInfoForClassID)
function GetSpecializationInfoForClassID(classID, specNum)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationInfoForSpecID)
function GetSpecializationInfoForSpecID()
end

---Returns the mastery spellID of the current player's specializiation.
---@param specIndex number @ The index of the specialization to query (1, 2, 3, 4) (Druids have four specializations)
---@param isInspect boolean @ Optional) Reserved. Must be nil
---@param isPet boolean @ Optional) Reserved. Must be nil
---@return unknown spellID
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationMasterySpells)
function GetSpecializationMasterySpells(specIndex, isInspect, isPet)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationNameForSpecID)
function GetSpecializationNameForSpecID()
end

---Returns the role a specialization is intended to perform.
---@param specIndex number @ Specialization index, ascending from 1.
---@param isInspect unknown
---@param isPet unknown
---@return string roleToken
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationRole)
function GetSpecializationRole(specIndex, isInspect, isPet)
end

---Returns the role a specialization is intended to perform.
---@param specID number @ Specialization ID, as returned by GetSpecializationInfo or GetInspectSpecialization.
---@return string roleToken
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationRoleByID)
function GetSpecializationRoleByID(specID)
end

---Returns spells learned as part of a specific specialization.
---@param specIndex number @ index of the specialization to query, integer ascending from 1.
---@param isInspect number @ a truthy value to query information about the inspected unit; player information is returned otherwise.
---@param isPet number @ a truthy value to query information about a pet specialization; player information is returned otherwise.
---@return unknown spellID1unknown level1unknown spellID2unknown level2unknown ...
---[View Documents](https://wow.gamepedia.com/API_GetSpecializationSpells)
function GetSpecializationSpells(specIndex, isInspect, isPet)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpecsForSpell)
function GetSpecsForSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpeed)
function GetSpeed()
end

---Get information about a spell's Autocast.
---@param spellName_or_spellId unknown
---@param bookType string @ Either BOOKTYPE_SPELL (spell) or BOOKTYPE_PET (pet).
---@return number autocastablenumber autostate
---[View Documents](https://wow.gamepedia.com/API_GetSpellAutocast)
function GetSpellAutocast(spellName_or_spellId, bookType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellAvailableLevel)
function GetSpellAvailableLevel()
end

---Gives the (unmodified) cooldown and global cooldown of an ability in milliseconds.
---@param spellid number @ The spellid of your ability.
---@return number cooldownMSnumber gcdMS
---[View Documents](https://wow.gamepedia.com/API_GetSpellBaseCooldown)
function GetSpellBaseCooldown(spellid)
end

---Returns the raw spell damage bonus of the player for a given spell tree.
---@param spellTreeID number @ the spell tree:
---@return number spellDmg
---[View Documents](https://wow.gamepedia.com/API_GetSpellBonusDamage)
function GetSpellBonusDamage(spellTreeID)
end

---Returns the spell power value used for healing spell coefficients. This includes your bonus from Versatility.
---@return number bonusHeal
---[View Documents](https://wow.gamepedia.com/API_GetSpellBonusHealing)
function GetSpellBonusHealing()
end

---Retrieves information about a specific spellbook item.
---@param index number @ The index into the spellbook.
---@param bookType string @ Spell book type.  Although intended to be BOOKTYPE_PET (pet) or BOOKTYPE_SPELL (spell), the game currently only tests if this value is equal to pet and treats any other value as spell.
---@return string skillTypenumber special
---[View Documents](https://wow.gamepedia.com/API_GetSpellBookItemInfo)
function GetSpellBookItemInfo(index, bookType)
end

---Retrieves the spell name and spell rank for a spell in the player's spell book.
---@param spellName_or_slotIndex unknown
---@param bookType string @ Either BOOKTYPE_SPELL (spell) or BOOKTYPE_PET (pet).
---@return string spellNamestring spellSubName
---[View Documents](https://wow.gamepedia.com/API_GetSpellBookItemName)
function GetSpellBookItemName(spellName_or_slotIndex, bookType)
end

---Returns the icon of a spell book entry.
---@param spellName_or_index unknown
---@param bookType string @ spell book to query; e.g.
---@return number icon
---[View Documents](https://wow.gamepedia.com/API_GetSpellBookItemTexture)
function GetSpellBookItemTexture(spellName_or_index, bookType)
end

---Returns information about the charges of a charge-accumulating player ability.
---@param spellId_or_spellName unknown
---@return number currentChargesnumber maxChargesnumber cooldownStartnumber cooldownDurationnumber chargeModRate
---[View Documents](https://wow.gamepedia.com/API_GetSpellCharges)
function GetSpellCharges(spellId_or_spellName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellConfirmationPromptsInfo)
function GetSpellConfirmationPromptsInfo()
end

---Retrieves the cooldown data of the spell specified.
---@param spellName_or_spellID_or_slotID unknown
---@param bookType string @ spell book category, e.g. BOOKTYPE_SPELL (spell) or BOOKTYPE_PET (pet).
---@return unknown startnumber durationnumber enablednumber modRate
---[View Documents](https://wow.gamepedia.com/API_GetSpellCooldown)
function GetSpellCooldown(spellName_or_spellID_or_slotID, bookType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellCount)
function GetSpellCount()
end

---Returns a players critical hit chance with spells for a certain school.
---@param school unknown
---@return unknown theCritChance
---[View Documents](https://wow.gamepedia.com/API_GetSpellCritChance)
function GetSpellCritChance(school)
end

---Returns the spell description.
---@param spellID number @ Not readily available on function call, see SpellMixin:ContinueOnSpellLoad.
---@return string desc
---[View Documents](https://wow.gamepedia.com/API_GetSpellDescription)
function GetSpellDescription(spellID)
end

---Returns the amount of Spell Hit %, not from Spell Hit Rating, that your character has.
---@return number hitModifier
---[View Documents](https://wow.gamepedia.com/API_GetSpellHitModifier)
function GetSpellHitModifier()
end

---Returns information about a spell
---@param spellId_or_spellName unknown
---@param spellRank string @ Rank (or subtext) of a spell known to the player character, e.g. Pig for pig-transforming variant of [Polymorph].
---@return string nameunknown ranknumber iconnumber castTimenumber minRangenumber maxRangenumber spellId
---[View Documents](https://wow.gamepedia.com/API_GetSpellInfo)
function GetSpellInfo(spellId_or_spellName, spellRank)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellLevelLearned)
function GetSpellLevelLearned()
end

---Returns a hyperlink for a spell.
---@param slot number @ Valid values are 1 through total number of spells in the spellbook on all pages and all tabs, ignoring empty slots.
---@param bookType string @ BOOKTYPE_SPELL or BOOKTYPE_PET depending on if you wish to query the player or pet spellbook.
---@return string linknumber spellID
---[View Documents](https://wow.gamepedia.com/API_GetSpellLink)
function GetSpellLink(slot, bookType)
end

---Returns information about a loss-of-control cooldown affecting a spell.
---@param spellSlot number @ spell book slot index, ascending from 1.
---@param bookType_or_spellName_or_spellID unknown
---@return number startnumber duration
---[View Documents](https://wow.gamepedia.com/API_GetSpellLossOfControlCooldown)
function GetSpellLossOfControlCooldown(spellSlot, bookType_or_spellName_or_spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellPenetration)
function GetSpellPenetration()
end

---Returns a table describing the resource cost of a spell.
---@param spellName_or_spellID unknown
---@return table costs
---[View Documents](https://wow.gamepedia.com/API_GetSpellPowerCost)
function GetSpellPowerCost(spellName_or_spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellQueueWindow)
function GetSpellQueueWindow()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellRank)
function GetSpellRank()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellSubtext)
function GetSpellSubtext()
end

---Retrieves information about the specified line of spells
---@param tabIndex number @ The index of the tab, ascending from 1.
---@return string namestring texturenumber offsetnumber numEntriesboolean isGuildnumber offspecID
---[View Documents](https://wow.gamepedia.com/API_GetSpellTabInfo)
function GetSpellTabInfo(tabIndex)
end

---Returns the icon of the specified spell.
---@param spellId_or_spellName unknown
---@return number icon
---[View Documents](https://wow.gamepedia.com/API_GetSpellTexture)
function GetSpellTexture(spellId_or_spellName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellTradeSkillLink)
function GetSpellTradeSkillLink()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSpellsForCharacterUpgradeTier)
function GetSpellsForCharacterUpgradeTier()
end

---Returns a list of the food types a pet in the stable can eat.
---@param index number @ The stable slot index of the pet: 0 for the current pet, 1 for the pet in the left slot, and 2 for the pet in the right slot.
---@return unknown PetFoodList
---[View Documents](https://wow.gamepedia.com/API_GetStablePetFoodTypes)
function GetStablePetFoodTypes(index)
end

---Returns information about a specific stabled pet.
---@param index number @ The index of the pet slot, 1 through 5 are the hunter's active pets, 6 through 25 are the hunter's stabled pets.
---@return string petIconstring petNamenumber petLevelstring petTypestring petTalents
---[View Documents](https://wow.gamepedia.com/API_GetStablePetInfo)
function GetStablePetInfo(index)
end

---Return the value of the requested Statistic.
---@param category number @ AchievementID of a statistic or statistic category.
---@param index number @ Entry within a statistic category, if applicable.
---@return string valueboolean skipstring id
---[View Documents](https://wow.gamepedia.com/API_GetStatistic)
function GetStatistic(category, index)
end

---Returns a table of achievement categories.
---@return table categories
---[View Documents](https://wow.gamepedia.com/API_GetStatisticsCategoryList)
function GetStatisticsCategoryList()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSturdiness)
function GetSturdiness()
end

---Returns the subzone name.
---@return string subzone
---[View Documents](https://wow.gamepedia.com/API_GetSubZoneText)
function GetSubZoneText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetSuggestedGroupSize)
function GetSuggestedGroupSize()
end

---Returns information about the cooldown time of the RaF Summon Friend ability.
---@return number startnumber duration
---[View Documents](https://wow.gamepedia.com/API_GetSummonFriendCooldown)
function GetSummonFriendCooldown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTabardCreationCost)
function GetTabardCreationCost()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTabardInfo)
function GetTabardInfo()
end

---@param tier number @ Talent tier from 1 to MAX_TALENT_TIERS
---@param column number @ Talent column from 1 to NUM_TALENT_COLUMNS
---@param specGroupIndex number @ Index of active specialization group (GetActiveSpecGroup)
---@param isInspect boolean @ ? - If non-nil, returns information based on inspectedUnit/classId.
---@param inspectUnit unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTalentInfo)
function GetTalentInfo(tier, column, specGroupIndex, isInspect, inspectUnit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTalentInfoByID)
function GetTalentInfoByID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTalentInfoBySpecialization)
function GetTalentInfoBySpecialization()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTalentLink)
function GetTalentLink()
end

---Returns the column of the selected talent for a given tier.
---@param tier number @ Talent tier from 1 to MAX_TALENT_TIERS
---@param specGroupIndex number @ Index of active specialization group (GetActiveSpecGroup)
---@param isInspect boolean @ ? - If non-nil, returns information based on inspectedUnit.
---@param inspectedUnit string @ ? - Inspected unitId.
---@return unknown tierAvailableunknown selectedTalentunknown tierUnlockLevel
---[View Documents](https://wow.gamepedia.com/API_GetTalentTierInfo)
function GetTalentTierInfo(tier, specGroupIndex, isInspect, inspectedUnit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTargetTradeCurrency)
function GetTargetTradeCurrency()
end

---Gets the amount of money in the trade window for the target user.
---@return string targetTradeMoney
---[View Documents](https://wow.gamepedia.com/API_GetTargetTradeMoney)
function GetTargetTradeMoney()
end

---Returns information about a bonus objective.
---@param questID number @ Unique identifier for the quest.
---@return boolean isInAreaboolean isOnMapnumber numObjectives
---[View Documents](https://wow.gamepedia.com/API_GetTaskInfo)
function GetTaskInfo(questID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTaskPOIs)
function GetTaskPOIs()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTasksTable)
function GetTasksTable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTaxiBenchmarkMode)
function GetTaxiBenchmarkMode()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTaxiMapID)
function GetTaxiMapID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTempShapeshiftBarIndex)
function GetTempShapeshiftBarIndex()
end

---GetText is used to localize some game text. Currently only for the FACTION_STANDING_LABEL..N globalstring.
---@param token string @ Reputation index
---@param gender number @ Gender ID
---@param ordinal unknown @ unknown
---@return string text
---[View Documents](https://wow.gamepedia.com/API_GetText)
function GetText(token, gender, ordinal)
end

---Returns RGB color values corresponding to a threat status returned by UnitThreatSituation.  Added in Patch 3.0.
---@param statusIndex unknown
---@return number rnumber gnumber b
---[View Documents](https://wow.gamepedia.com/API_GetThreatStatusColor)
function GetThreatStatusColor(statusIndex)
end

---Returns the time in seconds since the end of the previous frame and the start of the current frame.
---@return number elapsed
---[View Documents](https://wow.gamepedia.com/API_GetTickTime)
function GetTickTime()
end

---Returns the system uptime of your computer in seconds, with millisecond precision.
---@return number seconds
---[View Documents](https://wow.gamepedia.com/API_GetTime)
function GetTime()
end

---Returns a monotonic timestamp in seconds, with millisecond precision.
---@return number seconds
---[View Documents](https://wow.gamepedia.com/API_GetTimePreciseSec)
function GetTimePreciseSec()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTimeToWellRested)
function GetTimeToWellRested()
end

---Returns the name of a Title ID.
---@param titleId number @ Ranging from 1 to GetNumTitles. Not necessarily an index as there can be missing/skipped IDs in between.
---@return string nameboolean playerTitle
---[View Documents](https://wow.gamepedia.com/API_GetTitleName)
function GetTitleName(titleId)
end

---Returns the name of the last-offered quest.
---@return string title
---[View Documents](https://wow.gamepedia.com/API_GetTitleText)
function GetTitleText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetToolTipInfo)
function GetToolTipInfo()
end

---Returns the total number of Achievement Points earned.
---@return number points
---[View Documents](https://wow.gamepedia.com/API_GetTotalAchievementPoints)
function GetTotalAchievementPoints()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTotemCannotDismiss)
function GetTotemCannotDismiss()
end

---Returns information about totems
---@param index number @ index of the totem (Fire = 1 Earth = 2 Water = 3 Air = 4)
---@return unknown haveTotemunknown totemNameunknown startTimeunknown durationunknown icon
---[View Documents](https://wow.gamepedia.com/API_GetTotemInfo)
function GetTotemInfo(index)
end

---Returns active time remaining (in seconds) before a totem (or ghoul) disappears.
---@param slot number @ Which totem to query:
---@return number seconds
---[View Documents](https://wow.gamepedia.com/API_GetTotemTimeLeft)
function GetTotemTimeLeft(slot)
end

---Returns a list of (up to 10) currently tracked achievements.
---@return unknown id1unknown id2unknown ...unknown idn
---[View Documents](https://wow.gamepedia.com/API_GetTrackedAchievements)
function GetTrackedAchievements()
end

---Returns information regarding the specified tracking id.
---@param id number @ tracking type index, ascending from 1 to GetNumTrackingTypes().
---@return string namenumber texturenumber activestring categorynumber nested
---[View Documents](https://wow.gamepedia.com/API_GetTrackingInfo)
function GetTrackingInfo(id)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTradePlayerItemInfo)
function GetTradePlayerItemInfo()
end

---Returns a single value: chat-ready item link.
---@param i unknown
---@return string chatItemLink
---[View Documents](https://wow.gamepedia.com/API_GetTradePlayerItemLink)
function GetTradePlayerItemLink(i)
end

---Returns information about items in the target's trade window.
---@param index number @ the slot (1-7) to retrieve info from
---@return string namestring texturenumber quantitynumber qualityunknown isUsablestring enchant
---[View Documents](https://wow.gamepedia.com/API_GetTradeTargetItemInfo)
function GetTradeTargetItemInfo(index)
end

---Simply view, except this function is for your trading partner, ie, the other side of the trade window.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTradeTargetItemLink)
function GetTradeTargetItemLink()
end

---Returns the trainer greeting text.
---@return string greetingText
---[View Documents](https://wow.gamepedia.com/API_GetTrainerGreetingText)
function GetTrainerGreetingText()
end

---Returns the index of the selected trainer service.
---@return number selectionIndex
---[View Documents](https://wow.gamepedia.com/API_GetTrainerSelectionIndex)
function GetTrainerSelectionIndex()
end

---Gets the name of a requirement for training a skill and whether the player meets the requirement.
---@param trainerIndex number @ Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@param reqIndex number @ Index of the requirement to retrieve information about.
---@return string abilityboolean hasReq
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceAbilityReq)
function GetTrainerServiceAbilityReq(trainerIndex, reqIndex)
end

---Returns the cost of the selected trainer service.
---@param index unknown @ The index number of a specific trainer service.
---@return unknown moneyCostunknown talentCostunknown professionCost
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceCost)
function GetTrainerServiceCost(index)
end

---Returns the description of a specific trainer service.
---@param index number @ The index of the specific trainer service.
---@return string serviceDescription
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceDescription)
function GetTrainerServiceDescription(index)
end

---Returns the icon texture for a particular trainer service.
---@param id unknown @ Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return unknown icon
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceIcon)
function GetTrainerServiceIcon(id)
end

---Returns information about a trainer service.
---@param id unknown @ Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return unknown nameunknown rankunknown categoryunknown expanded
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceInfo)
function GetTrainerServiceInfo(id)
end

---Returns an item link for a trainer service.
---@param index number @ Index of the trainer service to a link for. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return unknown link
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceItemLink)
function GetTrainerServiceItemLink(index)
end

---Gets the required level to learn a skill from the trainer.
---@param id number @ Index of the trainer service to retrieve information about. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return number reqLevel
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceLevelReq)
function GetTrainerServiceLevelReq(id)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceNumAbilityReq)
function GetTrainerServiceNumAbilityReq()
end

---Gets the name of the skill at the specified line from the current trainer.
---@param index number @ Index of the trainer service to get the name of. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return string skillLine
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceSkillLine)
function GetTrainerServiceSkillLine(index)
end

---Returns the name of the skill required, and the amount needed in that skill.  Index is the selection index obtained by GetTrainerSelectionIndex().
---@param index unknown
---@return unknown skillNameunknown skillLevelunknown hasReq
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceSkillReq)
function GetTrainerServiceSkillReq(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceStepIndex)
function GetTrainerServiceStepIndex()
end

---Returns the status of a skill filter in the trainer window.
---@param type string @ Possible values:
---@return boolean status
---[View Documents](https://wow.gamepedia.com/API_GetTrainerServiceTypeFilter)
function GetTrainerServiceTypeFilter(type)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTrainerTradeskillRankValues)
function GetTrainerTradeskillRankValues()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTreasurePickerItemInfo)
function GetTreasurePickerItemInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetTutorialsEnabled)
function GetTutorialsEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUICameraInfo)
function GetUICameraInfo()
end

---Returns a table of indices for combo points that have been charged. If the unit does not have combo points, or no points are charged, this function may return nil.
---@param unit string
---@return number pointIndices
---[View Documents](https://wow.gamepedia.com/API_GetUnitChargedPowerPoints)
function GetUnitChargedPowerPoints(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUnitHealthModifier)
function GetUnitHealthModifier()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUnitMaxHealthModifier)
function GetUnitMaxHealthModifier()
end

---Needs summary.
---@param unitToken string @ UnitId
---@return unknown info
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerBarInfo)
function GetUnitPowerBarInfo(unitToken)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerBarInfoByID)
function GetUnitPowerBarInfoByID()
end

---Needs summary.
---@param unitToken string @ UnitId
---@return string namestring tooltipstring cost
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerBarStrings)
function GetUnitPowerBarStrings(unitToken)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerBarStringsByID)
function GetUnitPowerBarStringsByID()
end

---Needs summary.
---@param unitToken string
---@param textureIndex number
---@param timerIndex number @ ?
---@return number texturenumber colorRnumber colorGnumber colorBnumber colorA
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerBarTextureInfo)
function GetUnitPowerBarTextureInfo(unitToken, textureIndex, timerIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerBarTextureInfoByID)
function GetUnitPowerBarTextureInfoByID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetUnitPowerModifier)
function GetUnitPowerModifier()
end

---Returns a value representing the moving speed of a unit. Added in Patch 3.0.1.
---@param unit string @ unitId) - Unit to query the speed of. This has not been tested with all units but does work for player units.
---@return number currentSpeednumber runSpeednumber flightSpeednumber swimSpeed
---[View Documents](https://wow.gamepedia.com/API_GetUnitSpeed)
function GetUnitSpeed(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVehicleBarIndex)
function GetVehicleBarIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVehicleUIIndicator)
function GetVehicleUIIndicator()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVehicleUIIndicatorSeat)
function GetVehicleUIIndicatorSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVersatilityBonus)
function GetVersatilityBonus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVideoCaps)
function GetVideoCaps()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVideoOptions)
function GetVideoOptions()
end

---Returns the item link of an item in void storage.
---@param voidSlot number @ index of the void storage slot to query, ascending from 1.
---@return string itemLink
---[View Documents](https://wow.gamepedia.com/API_GetVoidItemHyperlinkString)
function GetVoidItemHyperlinkString(voidSlot)
end

---Returns info about a Void Storage slot [1]
---@param tabIndex number @ Index ranging from 1 to 2
---@param slotIndex number @ Index ranging from 1 to 80 (VOID_STORAGE_MAX)
---@return number itemIDstring textureNameboolean lockedboolean recentDepositboolean isFilterednumber quality
---[View Documents](https://wow.gamepedia.com/API_GetVoidItemInfo)
function GetVoidItemInfo(tabIndex, slotIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVoidStorageSlotPageIndex)
function GetVoidStorageSlotPageIndex()
end

---Returns the total Void Transfer cost [1]
---@return number cost
---[View Documents](https://wow.gamepedia.com/API_GetVoidTransferCost)
function GetVoidTransferCost()
end

---Returns info about the item being deposited into the Void Storage [1]
---@param slotIndex number @ Index ranging from 1 to 9 (VOID_DEPOSIT_MAX)
---@return number itemIDstring textureName
---[View Documents](https://wow.gamepedia.com/API_GetVoidTransferDepositInfo)
function GetVoidTransferDepositInfo(slotIndex)
end

---Returns info about the item being withdrawed from the Void Storage [1]
---@param slotIndex number @ Index ranging from 1 to 9 (VOID_WITHDRAW_MAX)
---@return number itemIDstring textureName
---[View Documents](https://wow.gamepedia.com/API_GetVoidTransferWithdrawalInfo)
function GetVoidTransferWithdrawalInfo(slotIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetVoidUnlockCost)
function GetVoidUnlockCost()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetWarGameQueueStatus)
function GetWarGameQueueStatus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetWarGameTypeInfo)
function GetWarGameTypeInfo()
end

---Returns information about the faction that is currently being watched.
---@return string namenumber standingnumber minnumber maxnumber valuenumber factionID
---[View Documents](https://wow.gamepedia.com/API_GetWatchedFactionInfo)
function GetWatchedFactionInfo()
end

---Returns information about the player's current temporary enchants, such as fishing lures or sharpening stones and weightstones produced by blacksmiths.
---@return number hasMainHandEnchantnumber mainHandExpirationnumber mainHandChargesnumber mainHandEnchantIDnumber hasOffHandEnchantnumber offHandExpirationnumber offHandChargesnumber offHandEnchantID
---[View Documents](https://wow.gamepedia.com/API_GetWeaponEnchantInfo)
function GetWeaponEnchantInfo()
end

---Requests updated GM ticket status information.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GetWebTicket)
function GetWebTicket()
end

---@param timerID unknown @ Use by blizzard as self.timerID by WorldStateChallangeModeFrame
---@return number unknownnumber elapsedTimenumber type
---[View Documents](https://wow.gamepedia.com/API_GetWorldElapsedTime)
function GetWorldElapsedTime(timerID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetWorldElapsedTimers)
function GetWorldElapsedTimers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetWorldMapActionButtonSpellInfo)
function GetWorldMapActionButtonSpellInfo()
end

---Get information regarding a world PvP zone (e.g. Wintergrasp or Tol Barad).
---@param index number @ the zone's index, from 1 to GetNumWorldPVPAreas()
---@return number pvpIDunknown izedNameboolean isActiveboolean canQueuenumber startTimeboolean canEnternumber minLevelnumber maxLevel
---[View Documents](https://wow.gamepedia.com/API_GetWorldPVPAreaInfo)
function GetWorldPVPAreaInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GetWorldPVPQueueStatus)
function GetWorldPVPQueueStatus()
end

---Returns the number of XP gained from killing mobs until player goes from rest state to normal state.
---@return number retVal
---[View Documents](https://wow.gamepedia.com/API_GetXPExhaustion)
function GetXPExhaustion()
end

---Returns PVP info for the current zone.
---@return string pvpTypeboolean isFFAstring faction
---[View Documents](https://wow.gamepedia.com/API_GetZonePVPInfo)
function GetZonePVPInfo()
end

---Returns the localized name of the zone the player is in.
---@return string zoneName
---[View Documents](https://wow.gamepedia.com/API_GetZoneText)
function GetZoneText()
end

---Assigns an item from the current loot window to a group member, when in Master Looter mode.
---@param li unknown
---@param ci unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_GiveMasterLoot)
function GiveMasterLoot(li, ci)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GroupHasOfflineMember)
function GroupHasOfflineMember()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlAddRank)
function GuildControlAddRank()
end

---Deletes the rank at that index. The player must be the guild leader.
---@param index number @ must be between 1 and the value returned by GuildControlGetNumRanks().
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlDelRank)
function GuildControlDelRank(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlGetAllowedShifts)
function GuildControlGetAllowedShifts()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlGetNumRanks)
function GuildControlGetNumRanks()
end

---Returns the name of the rank at that index.
---@param index number @ the rank index
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlGetRankName)
function GuildControlGetRankName(index)
end

---Saves the current rank under name. Current rank is set using GuildControlSetRank()
---@param name string @ the name of this rank
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlSaveRank)
function GuildControlSaveRank(name)
end

---Selects a guild rank to modify or return information about.
---@param rankOrder number @ index of the rank to select, between 1 and GuildControlGetNumRanks().
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlSetRank)
function GuildControlSetRank(rankOrder)
end

---Sets the current ranks property at index to enabled.
---@param index number @ the flag index, between 1 and GuildControlGetNumRanks().
---@param enabled boolean @ whether the flag is enabled or disabled.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlSetRankFlag)
function GuildControlSetRankFlag(index, enabled)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlShiftRankDown)
function GuildControlShiftRankDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildControlShiftRankUp)
function GuildControlShiftRankUp()
end

---Demotes a specified player if you have that privilege.
---@param playername string @ The name of the player to demote
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildDemote)
function GuildDemote(playername)
end

---Disbands your guild.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildDisband)
function GuildDisband()
end

---Prints information about the Guild you belong to in the following format:  Guild:    Guild created ,  players,  accounts
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildInfo)
function GuildInfo()
end

---Invites a player or your target to your guild if you have that privilege.
---@param playername unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildInvite)
function GuildInvite(playername)
end

---Removes you from your current guild.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildLeave)
function GuildLeave()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildMasterAbsent)
function GuildMasterAbsent()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildNewsSetSticky)
function GuildNewsSetSticky()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildNewsSort)
function GuildNewsSort()
end

---Promotes a specified player if you have that privilege.
---@param playername string @ The name of the player to promote.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildPromote)
function GuildPromote(playername)
end

---Sets the public note of a guild member.
---@param index unknown @ The position a member is in the guild roster.  This can be found by counting from the top down to the member or by selecting the member and using the GetGuildRosterSelection() function.
---@param Text unknown @ Text to be set to the officer note of the index.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildRosterSetOfficerNote)
function GuildRosterSetOfficerNote(index, Text)
end

---Sets the public note of a guild member.
---@param index unknown @ The position a member is in the guild roster.  This can be found by counting from the top down to the member or by selecting the member and using the GetGuildRosterSelection() function.
---@param Text unknown @ Text to be set to the public note of the index.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildRosterSetPublicNote)
function GuildRosterSetPublicNote(index, Text)
end

---Promotes a character to guild leader.
---@param name string @ name of the character you wish to promote to Guild Leader.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildSetLeader)
function GuildSetLeader(name)
end

---Sets the guild message of the day.
---@param message unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildSetMOTD)
function GuildSetMOTD(message)
end

---Removes a member of the guild.
---@return void
---[View Documents](https://wow.gamepedia.com/API_GuildUninvite)
function GuildUninvite()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HandleAtlasMemberCommand)
function HandleAtlasMemberCommand()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasAPEffectsSpellPower)
function HasAPEffectsSpellPower()
end

---Tests if an action slot is occupied.
---@param actionSlot number @ ActionSlot : The tested action slot.
---@return number hasAction
---[View Documents](https://wow.gamepedia.com/API_HasAction)
function HasAction(actionSlot)
end

---Tests if the player has an alternate form and whether they are currently in that form. This is currently only useful for worgen players to determine if they have a human form or are in human form.
---@return boolean hasAlternateFormboolean inAlternateForm
---[View Documents](https://wow.gamepedia.com/API_HasAlternateForm)
function HasAlternateForm()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasArtifactEquipped)
function HasArtifactEquipped()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasAttachedGlyph)
function HasAttachedGlyph()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasBonusActionBar)
function HasBonusActionBar()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasBoundGemProposed)
function HasBoundGemProposed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasCompletedAnyAchievement)
function HasCompletedAnyAchievement()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasDualWieldPenalty)
function HasDualWieldPenalty()
end

---Returns whether the player currently has an extra action bar/button.
---@return number hasBar
---[View Documents](https://wow.gamepedia.com/API_HasExtraActionBar)
function HasExtraActionBar()
end

---Checks whether you have full control over your character (i.e. you are not feared, etc).
---@return boolean hasControl
---[View Documents](https://wow.gamepedia.com/API_HasFullControl)
function HasFullControl()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasIgnoreDualWieldWeapon)
function HasIgnoreDualWieldWeapon()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasInboxItem)
function HasInboxItem()
end

---Returns whether the player is in a random party formed by the dungeon finder system.
---@return number isRestricted
---[View Documents](https://wow.gamepedia.com/API_HasLFGRestrictions)
function HasLFGRestrictions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasLoadedCUFProfiles)
function HasLoadedCUFProfiles()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasNewMail)
function HasNewMail()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasNoReleaseAura)
function HasNoReleaseAura()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasOverrideActionBar)
function HasOverrideActionBar()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasPendingGlyphCast)
function HasPendingGlyphCast()
end

---Returns how many abilities your pet has available.
---@return unknown hasPetSpellsstring petToken
---[View Documents](https://wow.gamepedia.com/API_HasPetSpells)
function HasPetSpells()
end

---Returns 1 if the player has a pet User Interface.
---@return unknown hasUIunknown isHunterPet
---[View Documents](https://wow.gamepedia.com/API_HasPetUI)
function HasPetUI()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasSPEffectsAttackPower)
function HasSPEffectsAttackPower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasSendMailItem)
function HasSendMailItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasTempShapeshiftActionBar)
function HasTempShapeshiftActionBar()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HasVehicleActionBar)
function HasVehicleActionBar()
end

---HasWandEquipped();
---@return void
---[View Documents](https://wow.gamepedia.com/API_HasWandEquipped)
function HasWandEquipped()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HaveQuestData)
function HaveQuestData()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HaveQuestRewardData)
function HaveQuestRewardData()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_HearthAndResurrectFromArea)
function HearthAndResurrectFromArea()
end

---Takes the cursor out of repair mode.
---@return void
---[View Documents](https://wow.gamepedia.com/API_HideRepairCursor)
function HideRepairCursor()
end

---Returns true during pre-rendered movie-like cinematics.
---@return boolean inCinematic
---[View Documents](https://wow.gamepedia.com/API_InCinematic)
function InCinematic()
end

---Determines whether in-combat lockdown restrictions are active.
---@return unknown inLockdown
---[View Documents](https://wow.gamepedia.com/API_InCombatLockdown)
function InCombatLockdown()
end

---Returns whether or not you are in a guild party.
---@return boolean inGroupnumber numGuildPresentnumber numGuildRequirednumber xpMultiplier
---[View Documents](https://wow.gamepedia.com/API_InGuildParty)
function InGuildParty()
end

---InRepairMode()
---@return unknown repairMode
---[View Documents](https://wow.gamepedia.com/API_InRepairMode)
function InRepairMode()
end

---Boolean function for determining whether a message is returnable.
---@param index number @ the index of the message (1 is the first message)
---@return number canDelete
---[View Documents](https://wow.gamepedia.com/API_InboxItemCanDelete)
function InboxItemCanDelete(index)
end

---This function starts a role check.
---@return void
---[View Documents](https://wow.gamepedia.com/API_InitiateRolePoll)
function InitiateRolePoll()
end

---Opens the Trade window with selected target.
---@param unit string @ unitId to initiate trade with, e.g. target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_InitiateTrade)
function InitiateTrade(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_InteractUnit)
function InteractUnit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Is64BitClient)
function Is64BitClient()
end

---Returns if the account has been secured with Blizzard Mobile Authenticator.
---@return boolean accountSecured
---[View Documents](https://wow.gamepedia.com/API_IsAccountSecured)
function IsAccountSecured()
end

---Indicates whether the specified achievement is eligible to be completed.
---@param achievementID number @ ID of the achievement to query.
---@return boolean eligible
---[View Documents](https://wow.gamepedia.com/API_IsAchievementEligible)
function IsAchievementEligible(achievementID)
end

---Returns whether an action is in range for use.
---@param actionSlot number @ The action slot to test.
---@return number inRange
---[View Documents](https://wow.gamepedia.com/API_IsActionInRange)
function IsActionInRange(actionSlot)
end

---Used for checking if the player is inside an arena or if it's a rated match[1]
---@return boolean isArenaboolean isRegistered
---[View Documents](https://wow.gamepedia.com/API_IsActiveBattlefieldArena)
function IsActiveBattlefieldArena()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsActiveQuestLegendary)
function IsActiveQuestLegendary()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsActiveQuestTrivial)
function IsActiveQuestTrivial()
end

---Determine if an AddOn is loaded on demand (via .toc file dependencies or LoadAddOn) rather than at startup
---@param index_or_name unknown
---@return number loadDemand
---[View Documents](https://wow.gamepedia.com/API_IsAddOnLoadOnDemand)
function IsAddOnLoadOnDemand(index_or_name)
end

---Returns whether an addon has been loaded.
---@param index_or_name unknown
---@return number loadednumber finished
---[View Documents](https://wow.gamepedia.com/API_IsAddOnLoaded)
function IsAddOnLoaded(index_or_name)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsAddonVersionCheckEnabled)
function IsAddonVersionCheckEnabled()
end

---Returns whether the player can teleport to/from an LFG instance.
---@return boolean allowedToTeleport
---[View Documents](https://wow.gamepedia.com/API_IsAllowedToUserTeleport)
function IsAllowedToUserTeleport()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsAltKeyDown)
function IsAltKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsArenaSkirmish)
function IsArenaSkirmish()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsArenaTeamCaptain)
function IsArenaTeamCaptain()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsArtifactCompletionHistoryAvailable)
function IsArtifactCompletionHistoryAvailable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsArtifactPowerItem)
function IsArtifactPowerItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsArtifactRelicItem)
function IsArtifactRelicItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsAtStableMaster)
function IsAtStableMaster()
end

---Determine whether action slot is an attack action.
---@param actionSlot number @ The action slot to test.
---@return number isAttack
---[View Documents](https://wow.gamepedia.com/API_IsAttackAction)
function IsAttackAction(actionSlot)
end

---Determine whether spell is the Attack spell.
---@param spellName string @ The spell name to test.
---@return number isAttack
---[View Documents](https://wow.gamepedia.com/API_IsAttackSpell)
function IsAttackSpell(spellName)
end

---Returns whether action slot is auto repeating.
---@param actionSlot number @ The action slot to query.
---@return boolean isRepeating
---[View Documents](https://wow.gamepedia.com/API_IsAutoRepeatAction)
function IsAutoRepeatAction(actionSlot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsAutoRepeatSpell)
function IsAutoRepeatSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsAvailableQuestTrivial)
function IsAvailableQuestTrivial()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsBNLogin)
function IsBNLogin()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsBagSlotFlagEnabledOnOtherBags)
function IsBagSlotFlagEnabledOnOtherBags()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsBagSlotFlagEnabledOnOtherBankBags)
function IsBagSlotFlagEnabledOnOtherBankBags()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsBarberShopStyleValid)
function IsBarberShopStyleValid()
end

---Returns whether an item was purchased from the in-game store.
---@param bag number @ bagID) - container ID, e.g. 0 for backpack.
---@param slot number @ slot index within the container, ascending from 1.
---@return boolean isPayItem
---[View Documents](https://wow.gamepedia.com/API_IsBattlePayItem)
function IsBattlePayItem(bag, slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsBindingForGamePad)
function IsBindingForGamePad()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsBreadcrumbQuest)
function IsBreadcrumbQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCastingGlyph)
function IsCastingGlyph()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCemeterySelectionAvailable)
function IsCemeterySelectionAvailable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCharacterNewlyBoosted)
function IsCharacterNewlyBoosted()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsChatAFK)
function IsChatAFK()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsChatChannelRaid)
function IsChatChannelRaid()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsChatDND)
function IsChatDND()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCompetitiveModeEnabled)
function IsCompetitiveModeEnabled()
end

---Tests if the action is linked to a consumable item.
---@param slotID unknown
---@return unknown isTrue
---[View Documents](https://wow.gamepedia.com/API_IsConsumableAction)
function IsConsumableAction(slotID)
end

---Returns whether an item is consumed when used.
---@param itemID_or_itemLink_or_itemName unknown
---@return number isConsumable
---[View Documents](https://wow.gamepedia.com/API_IsConsumableItem)
function IsConsumableItem(itemID_or_itemLink_or_itemName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsConsumableSpell)
function IsConsumableSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsContainerFiltered)
function IsContainerFiltered()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsContainerItemAnUpgrade)
function IsContainerItemAnUpgrade()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsControlKeyDown)
function IsControlKeyDown()
end

---Needs summary.
---@param itemID_or_name_or_itemlink unknown
---@return boolean isCorruptedItem
---[View Documents](https://wow.gamepedia.com/API_IsCorruptedItem)
function IsCorruptedItem(itemID_or_name_or_itemlink)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCosmeticItem)
function IsCosmeticItem()
end

---Determine whether an action is currently executing.
---@param actionSlot number @ action slot ID to query.
---@return number isCurrent
---[View Documents](https://wow.gamepedia.com/API_IsCurrentAction)
function IsCurrentAction(actionSlot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCurrentItem)
function IsCurrentItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsCurrentQuestFailed)
function IsCurrentQuestFailed()
end

---Returns whether a spell is currently is being casted by the player or is placed in the queue to be casted next. If spell is current then action bar indicates its slot with highlighted frame.
---@param spellID boolean @ spell ID to query.
---@return boolean isCurrent
---[View Documents](https://wow.gamepedia.com/API_IsCurrentSpell)
function IsCurrentSpell(spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsDebugBuild)
function IsDebugBuild()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsDemonHunterAvailable)
function IsDemonHunterAvailable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsDesaturateSupported)
function IsDesaturateSupported()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsDisplayChannelModerator)
function IsDisplayChannelModerator()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsDisplayChannelOwner)
function IsDisplayChannelOwner()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsDressableItem)
function IsDressableItem()
end

---Returns if your character is Dual wielding.
---@return boolean isDualWield
---[View Documents](https://wow.gamepedia.com/API_IsDualWielding)
function IsDualWielding()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsEncounterInProgress)
function IsEncounterInProgress()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsEncounterLimitingResurrections)
function IsEncounterLimitingResurrections()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsEncounterSuppressingRelease)
function IsEncounterSuppressingRelease()
end

---Returns 1 if item is an equip-able one at all, your character notwithstanding, or nil if not.
---@param itemId_or_itemName_or_itemLink unknown
---@return unknown result
---[View Documents](https://wow.gamepedia.com/API_IsEquippableItem)
function IsEquippableItem(itemId_or_itemName_or_itemLink)
end

---Returns whether the specified action slot contains a currently equipped item.
---@param slotID number @ actionSlot) : Action slot to query.
---@return boolean isEquipped
---[View Documents](https://wow.gamepedia.com/API_IsEquippedAction)
function IsEquippedAction(slotID)
end

---Determines if an item is equipped.
---@param itemID_or_itemName unknown
---@return boolean isEquipped
---[View Documents](https://wow.gamepedia.com/API_IsEquippedItem)
function IsEquippedItem(itemID_or_itemName)
end

---Determines if an item of a given type is equipped.
---@param type string @ ItemType) - any valid inventory type, item class, or item subclass
---@return boolean isEquipped
---[View Documents](https://wow.gamepedia.com/API_IsEquippedItemType)
function IsEquippedItemType(type)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsEuropeanNumbers)
function IsEuropeanNumbers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsEveryoneAssistant)
function IsEveryoneAssistant()
end

---Needs summary.
---@return boolean isExpansionTrialAccount
---[View Documents](https://wow.gamepedia.com/API_IsExpansionTrial)
function IsExpansionTrial()
end

---Returns whether the player has flagged the specified faction as an inactive.
---@param index number @ index of the faction within the faction list, ascending from 1.
---@return number inactive
---[View Documents](https://wow.gamepedia.com/API_IsFactionInactive)
function IsFactionInactive(index)
end

---Checks if the character is currently falling.
---@return unknown falling
---[View Documents](https://wow.gamepedia.com/API_IsFalling)
function IsFalling()
end

---This function is only for determining if the loot window is related to fishing.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsFishingLoot)
function IsFishingLoot()
end

---Checks if the character's current location is classified as being a flyable area.
---@return unknown canFly
---[View Documents](https://wow.gamepedia.com/API_IsFlyableArea)
function IsFlyableArea()
end

---Checks whether the player is currently flying.
---@return unknown flying
---[View Documents](https://wow.gamepedia.com/API_IsFlying)
function IsFlying()
end

---Returns true if the client downloaded has the GM MPQs attached, returns false otherwise.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsGMClient)
function IsGMClient()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsGUIDInGroup)
function IsGUIDInGroup()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsGamePadCursorControlEnabled)
function IsGamePadCursorControlEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsGamePadFreelookEnabled)
function IsGamePadFreelookEnabled()
end

---This function checks to see if player is a guild master and returns the appropriate result.
---@return unknown guildleader
---[View Documents](https://wow.gamepedia.com/API_IsGuildLeader)
function IsGuildLeader()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsGuildMember)
function IsGuildMember()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsGuildRankAssignmentAllowed)
function IsGuildRankAssignmentAllowed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsHarmfulItem)
function IsHarmfulItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsHarmfulSpell)
function IsHarmfulSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsHelpfulItem)
function IsHelpfulItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsHelpfulSpell)
function IsHelpfulSpell()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInActiveWorldPVP)
function IsInActiveWorldPVP()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInArenaTeam)
function IsInArenaTeam()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInAuthenticatedRank)
function IsInAuthenticatedRank()
end

---Returns true during cinematics produced dynamically by the game engine.[citation needed]
---@return boolean inCinematicScene
---[View Documents](https://wow.gamepedia.com/API_IsInCinematicScene)
function IsInCinematicScene()
end

---Returns whether the player is in a [specific type of] group.
---@param groupType number @ To check for a specific type of group, provide one of:
---@return boolean inGroup
---[View Documents](https://wow.gamepedia.com/API_IsInGroup)
function IsInGroup(groupType)
end

---Lets you know whether you are in a guild.
---@return boolean isGuildMember
---[View Documents](https://wow.gamepedia.com/API_IsInGuild)
function IsInGuild()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInGuildGroup)
function IsInGuildGroup()
end

---Checks whether the player is in an instance and the type of instance.
---@return number inInstancestring instanceType
---[View Documents](https://wow.gamepedia.com/API_IsInInstance)
function IsInInstance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInJailersTower)
function IsInJailersTower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInLFGDungeon)
function IsInLFGDungeon()
end

---Indicates whether the player is in a [specific type of] raid group.
---@param groupType number @ To check for a specific type of group, provide one of:
---@return boolean isInRaid
---[View Documents](https://wow.gamepedia.com/API_IsInRaid)
function IsInRaid(groupType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInScenarioGroup)
function IsInScenarioGroup()
end

---Returns whether the player's character is currently indoors. Most mounts are not usable indoors.
---@return unknown indoors
---[View Documents](https://wow.gamepedia.com/API_IsIndoors)
function IsIndoors()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInsane)
function IsInsane()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInventoryItemAnUpgrade)
function IsInventoryItemAnUpgrade()
end

---Returns whether an inventory item is locked, usually as it awaits pending action.
---@param slotId number @ The slot ID used to refer to that slot in the other GetInventory functions.
---@return number isLocked
---[View Documents](https://wow.gamepedia.com/API_IsInventoryItemLocked)
function IsInventoryItemLocked(slotId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsInventoryItemProfessionBag)
function IsInventoryItemProfessionBag()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsItemAction)
function IsItemAction()
end

---Returns if you are in range of the specified unit to use the specified item.
---@param itemName_or_itemLink unknown
---@param unit string @ which unit the range should be checked to
---@return unknown result
---[View Documents](https://wow.gamepedia.com/API_IsItemInRange)
function IsItemInRange(itemName_or_itemLink, unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsJailersTowerLayerTimeLocked)
function IsJailersTowerLayerTimeLocked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsKeyDown)
function IsKeyDown()
end

---Returns whether you have currently finished a Dungeon Finder instance. Used in the FrameXML whether to show a leave confirmation popup. [1]
---@return boolean isComplete
---[View Documents](https://wow.gamepedia.com/API_IsLFGComplete)
function IsLFGComplete()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLFGDungeonJoinable)
function IsLFGDungeonJoinable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLeftAltKeyDown)
function IsLeftAltKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLeftControlKeyDown)
function IsLeftControlKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLeftMetaKeyDown)
function IsLeftMetaKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLeftShiftKeyDown)
function IsLeftShiftKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLegacyDifficulty)
function IsLegacyDifficulty()
end

---This is a boolean function which returns true if World of Warcraft is being run using the Linux client, it will return false with the Windows client under wine or OS X client run on other operating systems. Although there is no current official Linux client, the beta version of WoW had a Linux client, and the code retains a function to test for it.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLinuxClient)
function IsLinuxClient()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsLoggedIn)
function IsLoggedIn()
end

---Checks to see if client is running on a Macintosh.
---@return boolean isMac
---[View Documents](https://wow.gamepedia.com/API_IsMacClient)
function IsMacClient()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsMasterLooter)
function IsMasterLooter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsMetaKeyDown)
function IsMetaKeyDown()
end

---Indicates whether the modifier keys for the selected action are pressed.
---@param action string @ The action to check for. Actions defined by Blizzard:
---@return boolean isHeld
---[View Documents](https://wow.gamepedia.com/API_IsModifiedClick)
function IsModifiedClick(action)
end

---There are three seperate levels of IsModifierKeyDown() type API functions but they all do the same basic function and return true if the specified key is currently pressed down.
---@return unknown anyModKeyIsDown
---[View Documents](https://wow.gamepedia.com/API_IsModifierKeyDown)
function IsModifierKeyDown()
end

---Checks to see if the player is mounted or not.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsMounted)
function IsMounted()
end

---Returns whether a particular mouse button is currently being held down.
---@param buttonName string @ identifier of the button to check, e.g LeftButton, RightButton, MiddleButton, BUTTON4
---@return number isDown
---[View Documents](https://wow.gamepedia.com/API_IsMouseButtonDown)
function IsMouseButtonDown(buttonName)
end

---For checking whether mouselook mode is currently active.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsMouselooking)
function IsMouselooking()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsMovieLocal)
function IsMovieLocal()
end

---Returns if the movie exists and can be played. Exceptions apply.
---@param movieID number
---@return boolean playable
---[View Documents](https://wow.gamepedia.com/API_IsMoviePlayable)
function IsMoviePlayable(movieID)
end

---Returns whether the game is currently showing a GlueXML screen (i.e. no character is logged in).
---@return boolean isOnGlueScreen
---[View Documents](https://wow.gamepedia.com/API_IsOnGlueScreen)
function IsOnGlueScreen()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsOnGroundFloorInJailersTower)
function IsOnGroundFloorInJailersTower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsOnTournamentRealm)
function IsOnTournamentRealm()
end

---Returns whether the player's character is currently outside of the map.
---@return number oob
---[View Documents](https://wow.gamepedia.com/API_IsOutOfBounds)
function IsOutOfBounds()
end

---Returns whether the player's character is currently outdoors.
---@return unknown outdoors
---[View Documents](https://wow.gamepedia.com/API_IsOutdoors)
function IsOutdoors()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsOutlineModeSupported)
function IsOutlineModeSupported()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPVPTimerRunning)
function IsPVPTimerRunning()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPartyLFG)
function IsPartyLFG()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPartyWorldPVP)
function IsPartyWorldPVP()
end

---Returns whether the icon in your spellbook is a Passive ability (not necessarily a spell). (And actually noted as so in spellbook)
---@param spellId_or_index unknown
---@param bookType string @ Either BOOKTYPE_SPELL (spell) or BOOKTYPE_PET (pet). spell is linked to your General Spellbook tab.
---@return number isPassive
---[View Documents](https://wow.gamepedia.com/API_IsPassiveSpell)
function IsPassiveSpell(spellId_or_index, bookType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPendingGlyphRemoval)
function IsPendingGlyphRemoval()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPetActive)
function IsPetActive()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPetAttackAction)
function IsPetAttackAction()
end

---boolean attackStatus = IsPetAttackActive(integer index)
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPetAttackActive)
function IsPetAttackActive()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPlayerInWorld)
function IsPlayerInWorld()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPlayerMoving)
function IsPlayerMoving()
end

---Returns whether the player is currently neutral (vs Alliance/Horde).
---@return boolean isNeutral
---[View Documents](https://wow.gamepedia.com/API_IsPlayerNeutral)
function IsPlayerNeutral()
end

---Returns whether the player has learned a particular spell.
---@param spellID number @ Spell ID of the spell to query, e.g. 1953 for [Blink].
---@return boolean isKnown
---[View Documents](https://wow.gamepedia.com/API_IsPlayerSpell)
function IsPlayerSpell(spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPossessBarVisible)
function IsPossessBarVisible()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPublicBuild)
function IsPublicBuild()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsPvpTalentSpell)
function IsPvpTalentSpell()
end

---Returns true if a quest is possible to complete.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsQuestCompletable)
function IsQuestCompletable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsQuestIDValidSpellTarget)
function IsQuestIDValidSpellTarget()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsQuestItemHidden)
function IsQuestItemHidden()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsQuestLogSpecialItemInRange)
function IsQuestLogSpecialItemInRange()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsQuestSequenced)
function IsQuestSequenced()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRaidMarkerActive)
function IsRaidMarkerActive()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRangedWeapon)
function IsRangedWeapon()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsReagentBankUnlocked)
function IsReagentBankUnlocked()
end

---Returns true if a given character name is recognized by the client.
---@param text string @ Name of the character to test.
---@param includeBitfield number @ Bitfield of filters that the name must match at least one of.
---@param excludeBitfield number @ Bitfield of filters that the name must not match at any of.
---@return boolean isRecognized
---[View Documents](https://wow.gamepedia.com/API_IsRecognizedName)
function IsRecognizedName(text, includeBitfield, excludeBitfield)
end

---Needs summary.
---@return boolean isRafLinked
---[View Documents](https://wow.gamepedia.com/API_IsRecruitAFriendLinked)
function IsRecruitAFriendLinked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsReplacingUnit)
function IsReplacingUnit()
end

---Checks to see if Player is resting.
---@return boolean resting
---[View Documents](https://wow.gamepedia.com/API_IsResting)
function IsResting()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRestrictedAccount)
function IsRestrictedAccount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRightAltKeyDown)
function IsRightAltKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRightControlKeyDown)
function IsRightControlKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRightMetaKeyDown)
function IsRightMetaKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsRightShiftKeyDown)
function IsRightShiftKeyDown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsSelectedSpellBookItem)
function IsSelectedSpellBookItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsServerControlledBackfill)
function IsServerControlledBackfill()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsShiftKeyDown)
function IsShiftKeyDown()
end

---Returns whether a given spell is specific to a specialization and/or class.
---@param spellName_or_spellIndex unknown
---@param bookType string @ spell book type, e.g. BOOKTYPE_SPELL (spell) for player's spell book.
---@return string specstring class
---[View Documents](https://wow.gamepedia.com/API_IsSpellClassOrSpec)
function IsSpellClassOrSpec(spellName_or_spellIndex, bookType)
end

---Returns whether a given spell is in range.
---@param index number @ spell book slot index, ascending from 1.
---@param bookType string @ one of BOOKTYPE_SPELL (spell) or BOOKTYPE_PET (pet) specifying which spellbook to index.
---@param target string @ unit to use as a target for the spell.
---@return number inRange
---[View Documents](https://wow.gamepedia.com/API_IsSpellInRange)
function IsSpellInRange(index, bookType, target)
end

---@param spellID number @ the spell ID number
---@param isPetSpell boolean @ optional) - if true, will check if the currently active pet knows the spell; if false or omitted, will check if the player knows the spell
---@return boolean isKnown
---[View Documents](https://wow.gamepedia.com/API_IsSpellKnown)
function IsSpellKnown(spellID, isPetSpell)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsSpellKnownOrOverridesKnown)
function IsSpellKnownOrOverridesKnown()
end

---Returns whether spellID is using SpellActivationAlert (glowing-circle around it) currently, or not.
---@param spellID number @ the spell ID number
---@return boolean isTrue
---[View Documents](https://wow.gamepedia.com/API_IsSpellOverlayed)
function IsSpellOverlayed(spellID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsSpellValidForPendingGlyph)
function IsSpellValidForPendingGlyph()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsSplashFramePrimaryFeatureUnlocked)
function IsSplashFramePrimaryFeatureUnlocked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsStackableAction)
function IsStackableAction()
end

---Indicates whether the player is stealthed.
---@return boolean stealthed
---[View Documents](https://wow.gamepedia.com/API_IsStealthed)
function IsStealthed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsStoryQuest)
function IsStoryQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsSubZonePVPPOI)
function IsSubZonePVPPOI()
end

---Returns whether the player character is submerged in water.
---@return unknown isSubmerged
---[View Documents](https://wow.gamepedia.com/API_IsSubmerged)
function IsSubmerged()
end

---Returns whether the player character is swimming.
---@return number isSwimming
---[View Documents](https://wow.gamepedia.com/API_IsSwimming)
function IsSwimming()
end

---Indicates whether the given spell is learned from a talent.
---@param spellName_or_slotIndex unknown
---@param bookType string @ one of BOOKTYPE_SPELL (spell) or BOOKTYPE_PET (pet).
---@return boolean isTalentSpell
---[View Documents](https://wow.gamepedia.com/API_IsTalentSpell)
function IsTalentSpell(spellName_or_slotIndex, bookType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsTestBuild)
function IsTestBuild()
end

---Returns whether threat warnings are currently enabled.
---@return boolean enabled
---[View Documents](https://wow.gamepedia.com/API_IsThreatWarningEnabled)
function IsThreatWarningEnabled()
end

---Returns whether the player can use a title.
---@param titleId number @ Ranging from 1 to GetNumTitles.
---@return boolean isKnown
---[View Documents](https://wow.gamepedia.com/API_IsTitleKnown)
function IsTitleKnown(titleId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsTrackedAchievement)
function IsTrackedAchievement()
end

---Returns whether the player is currently tracking battle pets.
---@return boolean isTracking
---[View Documents](https://wow.gamepedia.com/API_IsTrackingBattlePets)
function IsTrackingBattlePets()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsTrackingHiddenQuests)
function IsTrackingHiddenQuests()
end

---Determine whether last opened trainer window offered trade skill (profession) abilities.
---@return unknown isTradeskillTrainer
---[View Documents](https://wow.gamepedia.com/API_IsTradeskillTrainer)
function IsTradeskillTrainer()
end

---Returns whether the player is using a trial (free-to-play) account.
---@return boolean isTrialAccount
---[View Documents](https://wow.gamepedia.com/API_IsTrialAccount)
function IsTrialAccount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsTutorialFlagged)
function IsTutorialFlagged()
end

---Needs summary.
---@param unitToken string
---@return boolean isReady
---[View Documents](https://wow.gamepedia.com/API_IsUnitModelReadyForUI)
function IsUnitModelReadyForUI(unitToken)
end

---Determine if an action can be used (you have sufficient mana, reagents and the action is not on cooldown).
---@param slot number @ Action slot to query
---@return boolean isUsableboolean notEnoughMana
---[View Documents](https://wow.gamepedia.com/API_IsUsableAction)
function IsUsableAction(slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsUsableItem)
function IsUsableItem()
end

---Determines whether a spell can be used by the player character.
---@param spellName_or_spellID_or_spellIndex unknown
---@param bookType string @ Use the BOOKTYPE_SPELL constant if spellIndex refers to a spell in the player's spellbook or the BOOKTYPE_PET constant if the spellIndex refers to a spell in the pet's spellbook. Defaults to BOOKTYPE_SPELL.
---@return boolean usableboolean noMana
---[View Documents](https://wow.gamepedia.com/API_IsUsableSpell)
function IsUsableSpell(spellName_or_spellID_or_spellIndex, bookType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsUsingFixedTimeStep)
function IsUsingFixedTimeStep()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsUsingVehicleControls)
function IsUsingVehicleControls()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsVehicleAimAngleAdjustable)
function IsVehicleAimAngleAdjustable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsVehicleAimPowerAdjustable)
function IsVehicleAimPowerAdjustable()
end

---Needs summary.
---@return boolean isVeteranTrialAccount
---[View Documents](https://wow.gamepedia.com/API_IsVeteranTrialAccount)
function IsVeteranTrialAccount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsVoidStorageReady)
function IsVoidStorageReady()
end

---Returns whether the player is currently in a War Game.
---@return boolean isWargame
---[View Documents](https://wow.gamepedia.com/API_IsWargame)
function IsWargame()
end

---Checks to see if client is running on Windows.
---@return void
---[View Documents](https://wow.gamepedia.com/API_IsWindowsClient)
function IsWindowsClient()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_IsXPUserDisabled)
function IsXPUserDisabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ItemAddedToArtifact)
function ItemAddedToArtifact()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ItemCanTargetGarrisonFollowerAbility)
function ItemCanTargetGarrisonFollowerAbility()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ItemHasRange)
function ItemHasRange()
end

---Get the creator of an item text.
---@return string creatorName
---[View Documents](https://wow.gamepedia.com/API_ItemTextGetCreator)
function ItemTextGetCreator()
end

---Get the name of the current item text.
---@return string textName
---[View Documents](https://wow.gamepedia.com/API_ItemTextGetItem)
function ItemTextGetItem()
end

---Get the material which an item text is written on.
---@return string materialName
---[View Documents](https://wow.gamepedia.com/API_ItemTextGetMaterial)
function ItemTextGetMaterial()
end

---Get the number of the current item text page.
---@return number pageNum
---[View Documents](https://wow.gamepedia.com/API_ItemTextGetPage)
function ItemTextGetPage()
end

---Get the page contents of the current item text.
---@return string pageBody
---[View Documents](https://wow.gamepedia.com/API_ItemTextGetText)
function ItemTextGetText()
end

---Determine if there is a page after the current page.
---@return number hasNext
---[View Documents](https://wow.gamepedia.com/API_ItemTextHasNextPage)
function ItemTextHasNextPage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ItemTextIsFullPage)
function ItemTextIsFullPage()
end

---Request the next page of an Item Text
---@return void
---[View Documents](https://wow.gamepedia.com/API_ItemTextNextPage)
function ItemTextNextPage()
end

---Request the previous page of an Item Text.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ItemTextPrevPage)
function ItemTextPrevPage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_JoinArena)
function JoinArena()
end

---Queues the player, or the player's group, for a battlefield instance.
---@param index number @ Which battlefield instance to queue for (0 for first available), or which arena bracket to queue for.
---@param asGroup boolean @ If true-equivalent, the player's group is queued for the battlefield, otherwise, only the player is queued.
---@param isRated boolean @ If true-equivalent, and queueing for an arena bracket, the group is queued for a rated match as opposed to a skirmish.
---@return void
---[View Documents](https://wow.gamepedia.com/API_JoinBattlefield)
function JoinBattlefield(index, asGroup, isRated)
end

---Joins the channel with the specified name. A player can be in a maximum of 10 chat channels.
---@param channelName string @ The name of the channel to join
---@param password string @ optional) - The channel password, nil if none.
---@param frameID number @ optional) - The chat frame ID number to add the channel to. Use Frame:GetID() to retrieve it for chat frame objects.
---@param hasVoice boolean @ nil) - Enable voice chat for this channel.
---@return number typestring name
---[View Documents](https://wow.gamepedia.com/API_JoinChannelByName)
function JoinChannelByName(channelName, password, frameID, hasVoice)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_JoinLFG)
function JoinLFG()
end

---Seems to have the same effect as API_JoinChannelByName.
---@param channelName string @ The name of the channel to join
---@param password string @ optional) - The channel password, nil if none.
---@param frameID number @ optional) - The chat frame ID number to add the channel to. Use Frame:GetID() to retrieve it for chat frame objects.
---@param hasVoice boolean @ nil) - Enable voice chat for this channel.
---@return number typestring name
---[View Documents](https://wow.gamepedia.com/API_JoinPermanentChannel)
function JoinPermanentChannel(channelName, password, frameID, hasVoice)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_JoinRatedBattlefield)
function JoinRatedBattlefield()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_JoinSingleLFG)
function JoinSingleLFG()
end

---Queue for a arena either solo or as a group.
---@param arenaID number
---@param joinAsGroup boolean @ optional)
---@return void
---[View Documents](https://wow.gamepedia.com/API_JoinSkirmish)
function JoinSkirmish(arenaID, joinAsGroup)
end

---Seems to have the same effect as API_JoinChannelByName (except that a channel joined by JoinTemporaryChannel is left at logout).
---@param channelName string @ The name of the channel to join
---@param password string @ optional) - The channel password, nil if none.
---@param frameID number @ optional) - The chat frame ID number to add the channel to. Use Frame:GetID() to retrieve it for chat frame objects.
---@param hasVoice boolean @ nil) - Enable voice chat for this channel.
---@return number typestring name
---[View Documents](https://wow.gamepedia.com/API_JoinTemporaryChannel)
function JoinTemporaryChannel(channelName, password, frameID, hasVoice)
end

---Makes the player jump, or travel upward when swimming or flying.
---@return void
---[View Documents](https://wow.gamepedia.com/API_JumpOrAscendStart)
function JumpOrAscendStart()
end

---Starts the article load process.
---@param id number @ The article's ID
---@param searchType number @ Search type for the loading process.
---@return void
---[View Documents](https://wow.gamepedia.com/API_KBArticle_BeginLoading)
function KBArticle_BeginLoading(id, searchType)
end

---Returns data for the current article.
---@return number idstring subjectstring subjectAltstring textstring keywordsnumber languageIdboolean isHot
---[View Documents](https://wow.gamepedia.com/API_KBArticle_GetData)
function KBArticle_GetData()
end

---Determine if the article is loaded.
---@return boolean loaded
---[View Documents](https://wow.gamepedia.com/API_KBArticle_IsLoaded)
function KBArticle_IsLoaded()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_KBQuery_BeginLoading)
function KBQuery_BeginLoading()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_KBQuery_GetArticleHeaderCount)
function KBQuery_GetArticleHeaderCount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_KBQuery_GetArticleHeaderData)
function KBQuery_GetArticleHeaderData()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_KBQuery_GetTotalArticleCount)
function KBQuery_GetTotalArticleCount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_KBQuery_IsLoaded)
function KBQuery_IsLoaded()
end

---Starts the loading of articles.
---@param articlesPerPage number @ Number of articles shown on one page.
---@param currentPage number @ The current page (starts at 1).
---@return void
---[View Documents](https://wow.gamepedia.com/API_KBSetup_BeginLoading)
function KBSetup_BeginLoading(articlesPerPage, currentPage)
end

---Returns the number of articles for the current page.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetArticleHeaderCount)
function KBSetup_GetArticleHeaderCount()
end

---Returns header information about an article.
---@param index number @ The articles index for that page.
---@return number idstring titleboolean isHotboolean isNew
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetArticleHeaderData)
function KBSetup_GetArticleHeaderData(index)
end

---Returns the number of categories.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetCategoryCount)
function KBSetup_GetCategoryCount()
end

---Returns information about a category.
---@param index number @ Range from 1 to KBSetup_GetCategoryCount()
---@return number idstring caption
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetCategoryData)
function KBSetup_GetCategoryData(index)
end

---Returns the number of languages in the knowledge base.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetLanguageCount)
function KBSetup_GetLanguageCount()
end

---Returns information about a language.
---@param index number @ Range from 1 to KBSetup_GetLanguageCount()
---@return number idstring caption
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetLanguageData)
function KBSetup_GetLanguageData(index)
end

---Returns the number of subcategories in a category.
---@param category number @ The category's index.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetSubCategoryCount)
function KBSetup_GetSubCategoryCount(category)
end

---Returns information about a subcategory.
---@param category unknown @ Intgeger - The category's index.
---@param index number @ Range from 1 to KBSetup_GetSubCategoryCount(category)
---@return number idstring caption
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetSubCategoryData)
function KBSetup_GetSubCategoryData(category, index)
end

---Returns the number of articles.
---@return number count
---[View Documents](https://wow.gamepedia.com/API_KBSetup_GetTotalArticleCount)
function KBSetup_GetTotalArticleCount()
end

---Determine if the article list is loaded.
---@return boolean loaded
---[View Documents](https://wow.gamepedia.com/API_KBSetup_IsLoaded)
function KBSetup_IsLoaded()
end

---Returns the server message of the day.
---@return string motd
---[View Documents](https://wow.gamepedia.com/API_KBSystem_GetMOTD)
function KBSystem_GetMOTD()
end

---Returns the current server notice.
---@return string notice
---[View Documents](https://wow.gamepedia.com/API_KBSystem_GetServerNotice)
function KBSystem_GetServerNotice()
end

---Returns the current server status.
---@return string status
---[View Documents](https://wow.gamepedia.com/API_KBSystem_GetServerStatus)
function KBSystem_GetServerStatus()
end

---Teleports the player to or from an LFG dungeon.
---@param toSafety boolean @ false to teleport to the dungeon, true to teleport to where you were before you were teleported to the dungeon.
---@return void
---[View Documents](https://wow.gamepedia.com/API_LFGTeleport)
function LFGTeleport(toSafety)
end

---Learns the name of a specified pvp talent in a specified tab.
---@param talentID string @ Talent ID
---@param slotIndex number
---@return void
---[View Documents](https://wow.gamepedia.com/API_LearnPvpTalent)
function LearnPvpTalent(talentID, slotIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LearnPvpTalents)
function LearnPvpTalents()
end

---Learns the name of a specified talent in a specified tab.
---@param talentID string @ Talent ID
---@return void
---[View Documents](https://wow.gamepedia.com/API_LearnTalent)
function LearnTalent(talentID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LearnTalents)
function LearnTalents()
end

---Leaves the current battlefield
---@return void
---[View Documents](https://wow.gamepedia.com/API_LeaveBattlefield)
function LeaveBattlefield()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LeaveChannelByLocalID)
function LeaveChannelByLocalID()
end

---Leaves the channel with the specified name.
---@param channelName unknown @ The name of the channel to leave
---@return void
---[View Documents](https://wow.gamepedia.com/API_LeaveChannelByName)
function LeaveChannelByName(channelName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LeaveLFG)
function LeaveLFG()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LeaveSingleLFG)
function LeaveSingleLFG()
end

---Lists members in the given channel to the chat window.
---@param channelName string @ Number -  Case-insensitive channel name or channel number from which to list the members, e.g. trade - city. If no argument is given, list all of the numbered channels you are a member of.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ListChannelByName)
function ListChannelByName(channelName)
end

---Lists all of the channels.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ListChannels)
function ListChannels()
end

---Request the loading of an On-Demand AddOn.
---@param index_or_name unknown
---@return number loadedstring reason
---[View Documents](https://wow.gamepedia.com/API_LoadAddOn)
function LoadAddOn(index_or_name)
end

---Loads a binding set into memory, activating those bindings.
---@param bindingSet number @ Which binding set to load; one of the following three numeric constants:
---@return void
---[View Documents](https://wow.gamepedia.com/API_LoadBindings)
function LoadBindings(bindingSet)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LoadURLIndex)
function LoadURLIndex()
end

---Toggles the chat logging and returns the current state.
---@param newState boolean @ toggles chat logging
---@return boolean isLogging
---[View Documents](https://wow.gamepedia.com/API_LoggingChat)
function LoggingChat(newState)
end

---Toggles logging for the combat log and returns the current state.
---@param newState boolean @ Toggles combat logging
---@return unknown isLogging
---[View Documents](https://wow.gamepedia.com/API_LoggingCombat)
function LoggingCombat(newState)
end

---Logs the player character out of the game.
---@return void
---[View Documents](https://wow.gamepedia.com/API_Logout)
function Logout()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_LootMoneyNotify)
function LootMoneyNotify()
end

---This will attempt to loot the specified slot. If you must confirm that you want to loot the slot (BoP, loot rolls, etc), then a follow-up call to ConfirmLootSlot is needed.
---@param slot number @ the loot slot.
---@return void
---[View Documents](https://wow.gamepedia.com/API_LootSlot)
function LootSlot(slot)
end

---Returns whether a loot slot contains an item.
---@param lootSlot number @ index of the loot slot, ascending from 1 to GetNumLootItems()
---@return boolean isLootItem
---[View Documents](https://wow.gamepedia.com/API_LootSlotHasItem)
function LootSlotHasItem(lootSlot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_MouseOverrideCinematicDisable)
function MouseOverrideCinematicDisable()
end

---Enters mouse look mode, during which mouse movement is used to alter the character's movement/facing direction.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MouselookStart)
function MouselookStart()
end

---Exits mouse look mode; allows mouse input to move the mouse cursor.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MouselookStop)
function MouselookStop()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveAndSteerStart)
function MoveAndSteerStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveAndSteerStop)
function MoveAndSteerStop()
end

---The player begins moving backward at the specified time.
---@param startTime number @ Begin moving backward at this time, per GetTime * 1000.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveBackwardStart)
function MoveBackwardStart(startTime)
end

---The player stops moving backward at the specified time.
---@param startTime unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveBackwardStop)
function MoveBackwardStop(startTime)
end

---The player begins moving forward at the specified time.
---@param startTime number @ Begin moving forward at this time, per GetTime * 1000.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveForwardStart)
function MoveForwardStart(startTime)
end

---The player stops moving forward at the specified time.
---@param startTime unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveForwardStop)
function MoveForwardStop(startTime)
end

---Begins rotating the camera down around your character.
---@param speed number @ Speed at which to begin rotating.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewDownStart)
function MoveViewDownStart(speed)
end

---Stops rotating the camera Down.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewDownStop)
function MoveViewDownStop()
end

---Begins zooming the camera in.
---@param speed number @ Speed at which to begin zooming.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewInStart)
function MoveViewInStart(speed)
end

---Stops moving the camera In.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewInStop)
function MoveViewInStop()
end

---Begins rotating the camera to the left around your character.
---@param speed number @ Speed at which to begin rotating.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewLeftStart)
function MoveViewLeftStart(speed)
end

---Stops rotating the camera to the Left.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewLeftStop)
function MoveViewLeftStop()
end

---Begins zooming the camera out.
---@param speed number @ Speed at which to begin zooming.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewOutStart)
function MoveViewOutStart(speed)
end

---Stops moving the camera out.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewOutStop)
function MoveViewOutStop()
end

---Begins rotating the camera to the right around your character.
---@param speed number @ Speed at which to begin rotating.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewRightStart)
function MoveViewRightStart(speed)
end

---Stops rotating the camera to the Right.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewRightStop)
function MoveViewRightStop()
end

---Begins rotating the camera up around your character.
---@param speed number @ Speed at which to begin rotating.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewUpStart)
function MoveViewUpStart(speed)
end

---Stops rotating the camera Up.
---@return void
---[View Documents](https://wow.gamepedia.com/API_MoveViewUpStop)
function MoveViewUpStop()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_MultiSampleAntiAliasingSupported)
function MultiSampleAntiAliasingSupported()
end

---Mutes a sound file.
---@param soundFile_or_fileDataID unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_MuteSoundFile)
function MuteSoundFile(soundFile_or_fileDataID)
end

---Aligns a Neutral player character with the Horde/Alliance.
---@param factionIndex number @ to choose the Horde, 2 to choose the Alliance.
---@return void
---[View Documents](https://wow.gamepedia.com/API_NeutralPlayerSelectFaction)
function NeutralPlayerSelectFaction(factionIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_NextView)
function NextView()
end

---Indicates the player's account has reached a daily curfew of 90 minutes, imposed on children and any non-confirmed adults in China to comply with local law.[1]
---@return number isUnhealthy
---[View Documents](https://wow.gamepedia.com/API_NoPlayTime)
function NoPlayTime()
end

---Generates an error message saying you cannot do that while dead.
---@return void
---[View Documents](https://wow.gamepedia.com/API_NotWhileDeadError)
function NotWhileDeadError()
end

---Requests a unit's inventory and talent information from the server, allowing you to inspect the unit.
---@param unit string @ unitId) - Unit to request information of.
---@return void
---[View Documents](https://wow.gamepedia.com/API_NotifyInspect)
function NotifyInspect(unit)
end

---Returns the total number of flight points on the taxi map.
---@return number numNodes
---[View Documents](https://wow.gamepedia.com/API_NumTaxiNodes)
function NumTaxiNodes()
end

---Offer the target to sign your petition (only if the petition frame is visible)
---@return void
---[View Documents](https://wow.gamepedia.com/API_OfferPetition)
function OfferPetition()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_OpenTrainer)
function OpenTrainer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_OpeningCinematic)
function OpeningCinematic()
end

---Returns whether the current billing unit is considered tired or not. This function is to limit players from playing the game for too long.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PartialPlayTime)
function PartialPlayTime()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PartyLFGStartBackfill)
function PartyLFGStartBackfill()
end

---Permanently abandons your pet.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetAbandon)
function PetAbandon()
end

---Switches your pet to aggressive mode; does nothing.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetAggressiveMode)
function PetAggressiveMode()
end

---Switches pet to Assist mode.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetAssistMode)
function PetAssistMode()
end

---Instruct your pet to attack your target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetAttack)
function PetAttack()
end

---Retuns true if the pet is abandonable.
---@return boolean canAbandon
---[View Documents](https://wow.gamepedia.com/API_PetCanBeAbandoned)
function PetCanBeAbandoned()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PetCanBeDismissed)
function PetCanBeDismissed()
end

---Retuns true if the pet can be renamed.
---@return boolean canRename
---[View Documents](https://wow.gamepedia.com/API_PetCanBeRenamed)
function PetCanBeRenamed()
end

---Needs summary.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetDefensiveAssistMode)
function PetDefensiveAssistMode()
end

---Set your pet in defensive mode.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetDefensiveMode)
function PetDefensiveMode()
end

---Dismiss your pet.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetDismiss)
function PetDismiss()
end

---Instruct your pet to follow you.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetFollow)
function PetFollow()
end

---Determine if player has a pet with an action bar.
---@return number hasActionBar
---[View Documents](https://wow.gamepedia.com/API_PetHasActionBar)
function PetHasActionBar()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PetHasSpellbook)
function PetHasSpellbook()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PetMoveTo)
function PetMoveTo()
end

---Set your pet into passive mode.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetPassiveMode)
function PetPassiveMode()
end

---Renames your pet.
---@param name string @ The new name of the pet
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetRename)
function PetRename(name)
end

---Stops pet from attacking.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetStopAttack)
function PetStopAttack()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PetUsesPetFrame)
function PetUsesPetFrame()
end

---Instruct your pet to remain still.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PetWait)
function PetWait()
end

---Pick up an action for drag-and-drop.
---@param actionSlot number @ The action slot to pick the action up from.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupAction)
function PickupAction(actionSlot)
end

---Picks up the bag from the specified slot, placing it in the cursor.
---@param slot unknown @ InventorySlotID - the slot containing the bag.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupBagFromSlot)
function PickupBagFromSlot(slot)
end

---Places a companion onto the mouse cursor.
---@param type string @ companion type, either MOUNT or CRITTER.
---@param index number @ index of the companion of the specified type to place on the cursor, ascending from 1.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupCompanion)
function PickupCompanion(type, index)
end

---Wildcard function usually called when a player left clicks on a slot in their bags. Functionality includes picking up the item from a specific bag slot, putting the item into a specific bag slot, and applying enchants (including poisons and sharpening stones) to the item in a specific bag slot, except if one of the Modifier Keys is pressed.
---@param bagID number @ id of the bag the slot is located in.
---@param slot number @ slot inside the bag (top left slot is 1, slot to the right of it is 2).
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupContainerItem)
function PickupContainerItem(bagID, slot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupGuildBankItem)
function PickupGuildBankItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupGuildBankMoney)
function PickupGuildBankMoney()
end

---Picks up an item from the player's worn inventory. This appears to be a kind of catch-all pick up/activate function.
---@param slotId number @ the slot ID of the worn inventory slot.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupInventoryItem)
function PickupInventoryItem(slotId)
end

---Place the item on the cursor.
---@param itemID_or_itemString_or_itemName_or_itemLink unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupItem)
function PickupItem(itemID_or_itemString_or_itemName_or_itemLink)
end

---Pick up a macro from the macro frame and place it on the cursor
---@param macroName_or_macroID unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupMacro)
function PickupMacro(macroName_or_macroID)
end

---Places the specified merchant item on the cursor.
---@param index number @ The index of the item in the merchant's inventory.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupMerchantItem)
function PickupMerchantItem(index)
end

---Pick up a pet action for drag-and-drop.
---@param petActionSlot number @ The pet action slot to pick the action up from (1-10).
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupPetAction)
function PickupPetAction(petActionSlot)
end

---Picks up a Combat Pet spell from the PlayerTalentFrame. [1]
---@param spellID number
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupPetSpell)
function PickupPetSpell(spellID)
end

---Picks up an amount of money from the player's bags, placing it on the cursor.
---@param copper number @ The amount of money, in copper, to place on the cursor.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupPlayerMoney)
function PickupPlayerMoney(copper)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupPvpTalent)
function PickupPvpTalent()
end

---Puts the specified spell onto the mouse cursor.
---@param spellID number @ spell ID of the spell to pick up.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupSpell)
function PickupSpell(spellID)
end

---Picks up a skill from spellbook so that it can subsequently be placed on an action bar.
---@param spellName_or_index unknown
---@param bookType string @ Spell book type; one of the following global constants:
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupSpellBookItem)
function PickupSpellBookItem(spellName_or_index, bookType)
end

---Attaches a pet in your stable to your cursor.
---@param index unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupStablePet)
function PickupStablePet(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupTalent)
function PickupTalent()
end

---Picks up an amount of money from the player's trading offer, placing it on the cursor.
---@param copper number @ amount of money, in copper, to pick up.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PickupTradeMoney)
function PickupTradeMoney(copper)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PitchDownStart)
function PitchDownStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PitchDownStop)
function PitchDownStop()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PitchUpStart)
function PitchUpStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PitchUpStop)
function PitchUpStop()
end

---Place the drag-and-drop item as an action.
---@param actionSlot number @ The action slot to place the action into.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PlaceAction)
function PlaceAction(actionSlot)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlaceRaidMarker)
function PlaceRaidMarker()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlayAutoAcceptQuestSound)
function PlayAutoAcceptQuestSound()
end

---Plays the specified sound file on loop to the Music sound channel.
---@param musicfile_or_fileDataID unknown
---@return boolean willPlay
---[View Documents](https://wow.gamepedia.com/API_PlayMusic)
function PlayMusic(musicfile_or_fileDataID)
end

---Play one of a set of built-in sounds.  Other players will not hear the sound.
---@param soundKitID number @ All sounds used by Blizzard's UI are defined in the SOUNDKIT table.
---@param channel string @ ?Optional.  Could be nil. - The sound volume slider setting the sound should use, one of: Master, SFX, Music, Ambience, Dialog. Individual channels (except Master) have user-configurable volume settings and may be muted, preventing playback. Defaults to SFX if not specified.
---@param forceNoDuplicates unknown
---@param runFinishCallback boolean @ ?Optional.  Could be nil. - Fires SOUNDKIT_FINISHED when sound is done, arg1 will be soundHandle given below. Defaults to false.
---@return boolean willPlaynumber soundHandle
---[View Documents](https://wow.gamepedia.com/API_PlaySound)
function PlaySound(soundKitID, channel, forceNoDuplicates, runFinishCallback)
end

---Plays the specified audio file once.
---@param soundFile_or_soundFileID unknown
---@param channel string @ optional) - The sound volume slider setting the sound should use, one of: Master, SFX, Music, Ambience, Dialog. Individual channels (except Master) have user-configurable volume settings and may be muted, preventing playback. Defaults to the SFX if not specified.
---@return boolean willPlaynumber soundHandle
---[View Documents](https://wow.gamepedia.com/API_PlaySoundFile)
function PlaySoundFile(soundFile_or_soundFileID, channel)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlayVocalErrorSoundID)
function PlayVocalErrorSoundID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlayerCanTeleport)
function PlayerCanTeleport()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlayerEffectiveAttackPower)
function PlayerEffectiveAttackPower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlayerHasHearthstone)
function PlayerHasHearthstone()
end

---Determines if player has a specific toy in their toybox
---@param itemId number @ itemId of a toy.
---@return unknown hasToy
---[View Documents](https://wow.gamepedia.com/API_PlayerHasToy)
function PlayerHasToy(itemId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PlayerIsPVPInactive)
function PlayerIsPVPInactive()
end

---Needs summary.
---@return boolean vehicleHasComboPoints
---[View Documents](https://wow.gamepedia.com/API_PlayerVehicleHasComboPoints)
function PlayerVehicleHasComboPoints()
end

---/script PortGraveyard() returns the player to the graveyard, same as clicking the button while dead.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PortGraveyard)
function PortGraveyard()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PreloadMovie)
function PreloadMovie()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PrevView)
function PrevView()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ProcessExceptionClient)
function ProcessExceptionClient()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ProcessQuestLogRewardFactions)
function ProcessQuestLogRewardFactions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PromoteToAssistant)
function PromoteToAssistant()
end

---Promotes a unit to party leader.
---@param unitId_or_playerName unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_PromoteToLeader)
function PromoteToLeader(unitId_or_playerName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_PurchaseSlot)
function PurchaseSlot()
end

---Places the item currently on the cursor into the player's backpack otherwise it has no effect. If there is already a partial stack of the item in the backpack, it will attempt to stack them together.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PutItemInBackpack)
function PutItemInBackpack()
end

---Puts the item on the cursor into the specified bag slot on the main bar, if it's a bag. Otherwise, attempts to place the item inside the bag in that slot. Note that to place an item in the backpack, you must use PutItemInBackpack.
---@param slotId number @ Inventory slot id containing the bag in which you wish to put the item. Values 20 to 23 correspond to the player's bag slots, right-to-left from the first bag after the backpack.
---@return void
---[View Documents](https://wow.gamepedia.com/API_PutItemInBag)
function PutItemInBag(slotId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildBankLog)
function QueryGuildBankLog()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildBankTab)
function QueryGuildBankTab()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildBankText)
function QueryGuildBankText()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildEventLog)
function QueryGuildEventLog()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildMembersForRecipe)
function QueryGuildMembersForRecipe()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildNews)
function QueryGuildNews()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QueryGuildRecipes)
function QueryGuildRecipes()
end

---Throws an error when the choose reward method doesn't work.
---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestChooseRewardError)
function QuestChooseRewardError()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestFlagsPVP)
function QuestFlagsPVP()
end

---Returns whether the last-offered quest was automatically accepted.
---@return unknown isAutoAccepted
---[View Documents](https://wow.gamepedia.com/API_QuestGetAutoAccept)
function QuestGetAutoAccept()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestGetAutoLaunched)
function QuestGetAutoLaunched()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestHasPOIInfo)
function QuestHasPOIInfo()
end

---Returns whether the currently offered quest is a daily quest.
---@return number isDaily
---[View Documents](https://wow.gamepedia.com/API_QuestIsDaily)
function QuestIsDaily()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestIsFromAdventureMap)
function QuestIsFromAdventureMap()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestIsFromAreaTrigger)
function QuestIsFromAreaTrigger()
end

---Returns whether the currently offered quest is a weekly quest.
---@return number isWeekly
---[View Documents](https://wow.gamepedia.com/API_QuestIsWeekly)
function QuestIsWeekly()
end

---Initiates the sharing of the currently viewed quest in the quest log with other players.
---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestLogPushQuest)
function QuestLogPushQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestLogRewardHasTreasurePicker)
function QuestLogRewardHasTreasurePicker()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestLogShouldShowPortrait)
function QuestLogShouldShowPortrait()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestMapUpdateAllQuests)
function QuestMapUpdateAllQuests()
end

---Returns WorldMap POI icon information for the given quest.
---@param questId number @ you can get this from the quest link or from GetQuestLogTitle(questLogIndex).
---@return boolean completednumber posXnumber posYnumber objective
---[View Documents](https://wow.gamepedia.com/API_QuestPOIGetIconInfo)
function QuestPOIGetIconInfo(questId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestPOIGetSecondaryLocations)
function QuestPOIGetSecondaryLocations()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_QuestPOIUpdateIcons)
function QuestPOIUpdateIcons()
end

---Quits the game.
---@return void
---[View Documents](https://wow.gamepedia.com/API_Quit)
function Quit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RaidProfileExists)
function RaidProfileExists()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RaidProfileHasUnsavedChanges)
function RaidProfileHasUnsavedChanges()
end

---Performs a random roll between two numbers.
---@param low number @ lowest number (default 1)
---@param high number @ highest number (default 100)
---@return void
---[View Documents](https://wow.gamepedia.com/API_RandomRoll)
function RandomRoll(low, high)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ReagentBankButtonIDToInvSlotID)
function ReagentBankButtonIDToInvSlotID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RedockChatWindows)
function RedockChatWindows()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RefreshLFGList)
function RefreshLFGList()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RegisterStaticConstants)
function RegisterStaticConstants()
end

---Rejects an Dungeon Finder group invitation and leaves the queue.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RejectProposal)
function RejectProposal()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RemoveAutoQuestPopUp)
function RemoveAutoQuestPopUp()
end

---Blocks further messages from a specified chat channel from appearing in a specific chat frame.
---@param windowId number @ index of the chat window/frame (ascending from 1) to remove the channel from.
---@param channelName string @ name of the chat channel to remove from the frame.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RemoveChatWindowChannel)
function RemoveChatWindowChannel(windowId, channelName)
end

---Stops the specified chat window from displaying a specified type of messages.
---@param index number @ chat window index, ascending from 1.
---@param messageGroup string @ message type the chat window should no longer receive, e.g. EMOTE, SAY, RAID.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RemoveChatWindowMessages)
function RemoveChatWindowMessages(index, messageGroup)
end

---Remove a Keystone from the selected artifact.
---@return boolean keystoneRemoved
---[View Documents](https://wow.gamepedia.com/API_RemoveItemFromArtifact)
function RemoveItemFromArtifact()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RemovePvpTalent)
function RemovePvpTalent()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RemoveTalent)
function RemoveTalent()
end

---Un-marks an achievement for tracking in the WatchFrame.
---@param achievementId number @ ID of the achievement to add to tracking.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RemoveTrackedAchievement)
function RemoveTrackedAchievement(achievementId)
end

---Renames the group being created by the current petition.
---@param name string @ The new name of the group being created by the petition
---@return void
---[View Documents](https://wow.gamepedia.com/API_RenamePetition)
function RenamePetition(name)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ReopenInteraction)
function ReopenInteraction()
end

---Repairs all equipped and inventory items.
---@param guildBankRepair boolean @ If true, use guild funds to repair.  If false or missing, use player funds.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RepairAllItems)
function RepairAllItems(guildBankRepair)
end

---Confirms the Replace Enchant dialog.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ReplaceEnchant)
function ReplaceEnchant()
end

---Impeaches the current Guild Master.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ReplaceGuildMaster)
function ReplaceGuildMaster()
end

---Confirms that an enchant applied to the trade frame should replace an existing enchant.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ReplaceTradeEnchant)
function ReplaceTradeEnchant()
end

---Releases your ghost to the graveyard.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RepopMe)
function RepopMe()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ReportBug)
function ReportBug()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ReportPlayerIsPVPAFK)
function ReportPlayerIsPVPAFK()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ReportSuggestion)
function ReportSuggestion()
end

---Queries the server for archeology data. RESEARCH_ARTIFACT_HISTORY_READY is fired when data is available.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestArtifactCompletionHistory)
function RequestArtifactCompletionHistory()
end

---Requests the lastest battlefield score data from the server.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestBattlefieldScoreData)
function RequestBattlefieldScoreData()
end

---Requests information about the available instances of a particular battleground.
---@param index number @ Index of the battleground type to request instance information for; valid indices start from 1 and go up to GetNumBattlegroundTypes().
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestBattlegroundInstanceInfo)
function RequestBattlegroundInstanceInfo(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestBottomLeftActionBar)
function RequestBottomLeftActionBar()
end

---Requests information about guild applicants received trough the Guild Finder.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildApplicantsList)
function RequestGuildApplicantsList()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildChallengeInfo)
function RequestGuildChallengeInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildMembership)
function RequestGuildMembership()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildMembershipList)
function RequestGuildMembershipList()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildPartyState)
function RequestGuildPartyState()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildRecruitmentSettings)
function RequestGuildRecruitmentSettings()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestGuildRewards)
function RequestGuildRewards()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestLFDPartyLockInfo)
function RequestLFDPartyLockInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestLFDPlayerLockInfo)
function RequestLFDPlayerLockInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestPVPOptionsEnabled)
function RequestPVPOptionsEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestPVPRewards)
function RequestPVPRewards()
end

---Sends a request to the server to send back information about the instance.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestRaidInfo)
function RequestRaidInfo()
end

---Requests information about battleground rewards.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestRandomBattlegroundInstanceInfo)
function RequestRandomBattlegroundInstanceInfo()
end

---Requests information about the player's rated PvP stats from the server.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestRatedInfo)
function RequestRatedInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestRecruitingGuildsList)
function RequestRecruitingGuildsList()
end

---Send a request to the server to get an update of the time played.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RequestTimePlayed)
function RequestTimePlayed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RequeueSkirmish)
function RequeueSkirmish()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetAddOns)
function ResetAddOns()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetCPUUsage)
function ResetCPUUsage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetChatColors)
function ResetChatColors()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetChatWindows)
function ResetChatWindows()
end

---Resets mouse cursor.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetCursor)
function ResetCursor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetDisabledAddOns)
function ResetDisabledAddOns()
end

---Resets all instances the currently playing character is associated with.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetInstances)
function ResetInstances()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetSetMerchantFilter)
function ResetSetMerchantFilter()
end

---Starts with the first tutorial again
---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetTutorials)
function ResetTutorials()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResetView)
function ResetView()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResistancePercent)
function ResistancePercent()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RespondInstanceLock)
function RespondInstanceLock()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RespondMailLockSendItem)
function RespondMailLockSendItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RespondToInviteConfirmation)
function RespondToInviteConfirmation()
end

---Requests the graphics engine to restart.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RestartGx)
function RestartGx()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_RestoreRaidProfileFromCopy)
function RestoreRaidProfileFromCopy()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResurrectGetOfferer)
function ResurrectGetOfferer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResurrectHasSickness)
function ResurrectHasSickness()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ResurrectHasTimer)
function ResurrectHasTimer()
end

---Resurrects when the player is standing near its corpse.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RetrieveCorpse)
function RetrieveCorpse()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ReturnInboxItem)
function ReturnInboxItem()
end

---Roll on the Loot roll identified by rollID; rollType is nil when passing, otherwise it uses 1 to roll on loot.
---@param rollID number @ The number increases with every roll you have in a party. Maximum value is unknown.
---@param rollType number @ nil - 0 or nil to pass, 1 to roll Need, 2 to roll Greed, or 3 to roll Disenchant.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RollOnLoot)
function RollOnLoot(rollID, rollType)
end

---Executes a key binding as if a key was pressed.
---@param command string @ Name of the key binding to be executed
---@param up string @ Optional, if up, the binding is run as if the key was released.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RunBinding)
function RunBinding(command, up)
end

---Execute a macro from the macro frame.
---@param macroID_or_macroName unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_RunMacro)
function RunMacro(macroID_or_macroName)
end

---Execute a string as if it was a macro.
---@param macro string @ the string is interpreted as a macro and then executed
---@return void
---[View Documents](https://wow.gamepedia.com/API_RunMacroText)
function RunMacroText(macro)
end

---Execute a string as LUA code.
---@param script string @ The code which is to be executed.
---@return void
---[View Documents](https://wow.gamepedia.com/API_RunScript)
function RunScript(script)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SaveAddOns)
function SaveAddOns()
end

---Writes the current in-memory key bindings to disk.
---@param which number @ This value indicates whether the current key bindings set should be saved as account or character specific. One of following constants should be used:
---@return void
---[View Documents](https://wow.gamepedia.com/API_SaveBindings)
function SaveBindings(which)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SaveRaidProfileCopy)
function SaveRaidProfileCopy()
end

---Saves a camera angle for later retrieval with SetView. The last position loaded is stored in the CVar cameraView.
---@param viewIndex number @ The index (2-5) to save the camera angle to. (1 is reserved for first person view)
---@return void
---[View Documents](https://wow.gamepedia.com/API_SaveView)
function SaveView(viewIndex)
end

---This function will take a screenshot.
---@return void
---[View Documents](https://wow.gamepedia.com/API_Screenshot)
function Screenshot()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ScriptsDisallowedForBeta)
function ScriptsDisallowedForBeta()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SearchLFGGetEncounterResults)
function SearchLFGGetEncounterResults()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SearchLFGGetJoinedID)
function SearchLFGGetJoinedID()
end

---Returns how many players listed in raid browser for selected LFG id.
---@return number numResultsnumber totalResults
---[View Documents](https://wow.gamepedia.com/API_SearchLFGGetNumResults)
function SearchLFGGetNumResults()
end

---Returns information about the party player listed in raid browser.
---@param index number @ Index of the player to query, ascending from 1 to totalResults return value from SearchLFGGetNumResults.
---@param partyIndex number @ Index of the party player to query, ascending from 1 to partyMembers return value from SearchLFGGetResults.
---@return string namenumber levelunknown relationshipunknown classNamestring areaNamestring commentunknown isLeaderunknown isTankunknown isHealerunknown isDamagenumber bossKillsunknown specIDunknown isGroupLeaderunknown armorunknown spellDamageunknown plusHealingunknown CritMeleeunknown CritRangedunknown critSpellunknown mp5unknown mp5Combatunknown attackPowerunknown agilityunknown maxHealthunknown maxMananumber gearRatingunknown avgILevelunknown defenseRatingunknown dodgeRatingunknown BlockRatingunknown ParryRatingunknown HasteRatingunknown expertise
---[View Documents](https://wow.gamepedia.com/API_SearchLFGGetPartyResults)
function SearchLFGGetPartyResults(index, partyIndex)
end

---Returns information about the player listed in raid browser.
---@param index number @ Index of the player to query, ascending from 1 to totalResults return value from SearchLFGGetNumResults.
---@return string namenumber levelstring areaNamestring classNamestring commentnumber partyMembersunknown statusunknown classunknown encountersTotalunknown encountersCompleteunknown isIneligibleunknown isLeaderunknown isTankunknown isHealerunknown isDamagenumber bossKillsunknown specIDunknown isGroupLeaderunknown armorunknown spellDamageunknown plusHealingunknown CritMeleeunknown CritRangedunknown critSpellunknown mp5unknown mp5Combatunknown attackPowerunknown agilityunknown maxHealthunknown maxMananumber gearRatingunknown avgILevelunknown defenseRatingunknown dodgeRatingunknown BlockRatingunknown ParryRatingunknown HasteRatingunknown expertise
---[View Documents](https://wow.gamepedia.com/API_SearchLFGGetResults)
function SearchLFGGetResults(index)
end

---Allows a player to join Raid Browser list..
---@param typeID number @ LFG typeid
---@param lfgID number @ ID of LFG dungeon
---@return void
---[View Documents](https://wow.gamepedia.com/API_SearchLFGJoin)
function SearchLFGJoin(typeID, lfgID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SearchLFGLeave)
function SearchLFGLeave()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SearchLFGSort)
function SearchLFGSort()
end

---Evaluates macro options in the string and returns the appropriate sub-string or nil
---@param options string @ a secure command options string to be parsed, e.g. [mod:alt] ALT is held down; [mod:ctrl] CTRL is held down, but ALT is not; neither ALT nor CTRL is held down.
---@return string resultstring target
---[View Documents](https://wow.gamepedia.com/API_SecureCmdOptionParse)
function SecureCmdOptionParse(options)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SelectActiveQuest)
function SelectActiveQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SelectAvailableQuest)
function SelectAvailableQuest()
end

---Notifies the server that a trainer service has been selected.
---@param index number @ Index of the trainer service being selected. Note that indices are affected by the trainer filter. (See GetTrainerServiceTypeFilter and SetTrainerServiceTypeFilter.)
---@return void
---[View Documents](https://wow.gamepedia.com/API_SelectTrainerService)
function SelectTrainerService(index)
end

---Returns the realm name that will be used in Recruit-a-Friend invitations.
---@return string realmName
---[View Documents](https://wow.gamepedia.com/API_SelectedRealmName)
function SelectedRealmName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SellCursorItem)
function SellCursorItem()
end

---Sends a chat message.
---@param msg string @ The message to be sent. Large messages are truncated to max 255 characters, and only valid chat message characters are permitted.
---@param chatType string @ ? - The type of message to be sent, e.g. PARTY. If omitted, this defaults to SAY
---@param languageID number @ ? - The languageID used for the message. If omitted the default language will be used: Orcish for the Horde and Common for the Alliance, as returned by GetDefaultLanguage()
---@param target string @ |number? - The player name or channel number receiving the message for WHISPER or CHANNEL chatTypes.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SendChatMessage)
function SendChatMessage(msg, chatType, languageID, target)
end

---Sends in-game mail, if your mailbox is open.
---@param recipient string @ intended recipient of the mail
---@param subject string @ subject of the mail, that cannot be empty or nil (but may be whitespace)
---@param body string @ ?Optional.  Could be nil. - body of the mail
---@return void
---[View Documents](https://wow.gamepedia.com/API_SendMail)
function SendMail(recipient, subject, body)
end

---Selects a quest option to pursue.
---@param responseID number @ Response ID of the option the player wishes to pursue, as returned by C_QuestChoice.GetQuestChoiceOptionInfo()
---@return void
---[View Documents](https://wow.gamepedia.com/API_SendPlayerChoiceResponse)
function SendPlayerChoiceResponse(responseID)
end

---Needs summary.
---@param response unknown @ Enum.SubscriptionInterstitialResponseType
---@return void
---[View Documents](https://wow.gamepedia.com/API_SendSubscriptionInterstitialResponse)
function SendSubscriptionInterstitialResponse(response)
end

---Sends a system message to the system message box (mostly written in yellow color)
---@param msg string @ The message to be sent
---@return void
---[View Documents](https://wow.gamepedia.com/API_SendSystemMessage)
function SendSystemMessage(msg)
end

---Sets the unit to be compared to.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetAchievementComparisonUnit)
function SetAchievementComparisonUnit()
end

---Starts a search for achievements containing the specified text.
---@param searchText string @ Text to search for in the achievements.
---@return boolean searchFinished
---[View Documents](https://wow.gamepedia.com/API_SetAchievementSearchString)
function SetAchievementSearchString(searchText)
end

---Set the desired state of the extra action bars.
---@param bottomLeftState number @ if the left-hand bottom action bar is to be shown, 0 or nil otherwise.
---@param bottomRightState number @ if the right-hand bottom action bar is to be shown, 0 or nil otherwise.
---@param sideRightState number @ if the first (outer) right side action bar is to be shown, 0 or nil otherwise.
---@param sideRight2State number @ if the second (inner) right side action bar is to be shown, 0 or nil otherwise.
---@param alwaysShow number @ if the bars are always shown, 0 or nil otherwise.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetActionBarToggles)
function SetActionBarToggles(bottomLeftState, bottomRightState, sideRightState, sideRight2State, alwaysShow)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetActionUIButton)
function SetActionUIButton()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetAddonVersionCheck)
function SetAddonVersionCheck()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetAllowDangerousScripts)
function SetAllowDangerousScripts()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetAllowLowLevelRaid)
function SetAllowLowLevelRaid()
end

---Sets whether guild invitations should be automatically declined.
---@param decline string @ Number - 1 or 1 if guild invitations should be automatically declined, or 0 or 0 if invitations should be shown to the user.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetAutoDeclineGuildInvites)
function SetAutoDeclineGuildInvites(decline)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBackpackAutosortDisabled)
function SetBackpackAutosortDisabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBagPortraitTexture)
function SetBagPortraitTexture()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBagSlotFlag)
function SetBagSlotFlag()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBankAutosortDisabled)
function SetBankAutosortDisabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBankBagSlotFlag)
function SetBankBagSlotFlag()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBarSlotFromIntro)
function SetBarSlotFromIntro()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBarberShopAlternateFormFrame)
function SetBarberShopAlternateFormFrame()
end

---Set the faction to show on the battlefield scoreboard
---@param faction number @ nil = All, 0 = Horde, 1 = Alliance
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetBattlefieldScoreFaction)
function SetBattlefieldScoreFaction(faction)
end

---Alters the action performed by a binding.
---@param key string @ Any binding string accepted by World of Warcraft. For example: ALT-CTRL-F, SHIFT-T, W, BUTTON4.
---@param command string @ nil - Any name attribute value of a Bindings.xml-defined binding, or an action command string, or nil to unbind all bindings from key. For example:
---@param mode number @ if the binding should be saved to the currently loaded binding set (default), or 2 if to the alternative.
---@return number ok
---[View Documents](https://wow.gamepedia.com/API_SetBinding)
function SetBinding(key, command, mode)
end

---Sets a binding to click the specified button widget.
---@param key string @ Any binding string accepted by World of Warcraft. For example: ALT-CTRL-F, SHIFT-T, W, BUTTON4.
---@param buttonName string @ Name of the button you wish to click.
---@param button string @ Value of the button argument you wish to pass to the OnClick handler with the click; LeftButton by default.
---@return number ok
---[View Documents](https://wow.gamepedia.com/API_SetBindingClick)
function SetBindingClick(key, buttonName, button)
end

---Sets a binding to use a specified item.
---@param key string @ Any binding string accepted by World of Warcraft. For example: ALT-CTRL-F, SHIFT-T, W, BUTTON4.
---@param item string @ Item name (or item string) you want the binding to use. For example: Hearthstone, item:6948
---@return number ok
---[View Documents](https://wow.gamepedia.com/API_SetBindingItem)
function SetBindingItem(key, item)
end

---Sets a binding to click the specified button object.
---@param key string @ Any binding string accepted by World of Warcraft. For example: ALT-CTRL-F, SHIFT-T, W, BUTTON4.
---@param macroName_or_macroId unknown
---@return number ok
---[View Documents](https://wow.gamepedia.com/API_SetBindingMacro)
function SetBindingMacro(key, macroName_or_macroId)
end

---Sets a binding to cast the specified spell.
---@param key string @ Any binding string accepted by World of Warcraft. For example: ALT-CTRL-F, SHIFT-T, W, BUTTON4.
---@param spell string @ Name of the spell you wish to cast when the binding is pressed.
---@return number ok
---[View Documents](https://wow.gamepedia.com/API_SetBindingSpell)
function SetBindingSpell(key, spell)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetCemeteryPreference)
function SetCemeteryPreference()
end

---Sets the channel owner.
---@param channel unknown @ channel name to be changed
---@param newowner unknown @ the new owner of the channel
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChannelOwner)
function SetChannelOwner(channel, newowner)
end

---Changes the password of the current channel.
---@param channelName unknown
---@param password unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChannelPassword)
function SetChannelPassword(channelName, password)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatColorNameByClass)
function SetChatColorNameByClass()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowAlpha)
function SetChatWindowAlpha()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowColor)
function SetChatWindowColor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowDocked)
function SetChatWindowDocked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowLocked)
function SetChatWindowLocked()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowName)
function SetChatWindowName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowSavedDimensions)
function SetChatWindowSavedDimensions()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowSavedPosition)
function SetChatWindowSavedPosition()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowShown)
function SetChatWindowShown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowSize)
function SetChatWindowSize()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetChatWindowUninteractable)
function SetChatWindowUninteractable()
end

---Sets the key used to open the console overlay for the current session.
---@param key string @ The character to bind to opening the console overlay, or nil to disable the console binding.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetConsoleKey)
function SetConsoleKey(key)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetCurrentGraphicsSetting)
function SetCurrentGraphicsSetting()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetCurrentGuildBankTab)
function SetCurrentGuildBankTab()
end

---Changes your character's displayed title.
---@param titleId number @ ID of the title you want to set. The identifiers are global and therefore do not depend on which titles you have learned. Invalid or unlearned values clear your title. See TitleId for a list.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetCurrentTitle)
function SetCurrentTitle(titleId)
end

---Changes the current cursor graphic.
---@param cursor string @ cursor to switch to; either a built-in cursor identifier (like ATTACK_CURSOR), path to a cursor texture (e.g. Interface/Cursor/Taxi), or nil to reset to a default cursor.
---@return number changed
---[View Documents](https://wow.gamepedia.com/API_SetCursor)
function SetCursor(cursor)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetCursorVirtualItem)
function SetCursorVirtualItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetDefaultVideoOptions)
function SetDefaultVideoOptions()
end

---Changes the player's current dungeon difficulty.
---@param difficultyIndex number @ 1 → 5 Player
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetDungeonDifficultyID)
function SetDungeonDifficultyID(difficultyIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetEuropeanNumbers)
function SetEuropeanNumbers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetEveryoneIsAssistant)
function SetEveryoneIsAssistant()
end

---Clears the inactive flag on the specified faction.
---@param index number @ The index of the faction to mark active, ascending from 1.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetFactionActive)
function SetFactionActive(index)
end

---Flags the specified faction as inactive.
---@param index number @ The index of the faction to mark inactive, ascending from 1.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetFactionInactive)
function SetFactionInactive(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetFocusedAchievement)
function SetFocusedAchievement()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGamePadCursorControl)
function SetGamePadCursorControl()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGamePadFreeLook)
function SetGamePadFreeLook()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildApplicantSelection)
function SetGuildApplicantSelection()
end

---Sets a guild bank tab's name and icon.
---@param tab number @ Bank Tab to edit.
---@param name string @ New tab name.
---@param icon number @ FileID of the new icon texture.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildBankTabInfo)
function SetGuildBankTabInfo(tab, name, icon)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildBankTabItemWithdraw)
function SetGuildBankTabItemWithdraw()
end

---Edits permissions for a bank tab.
---@param tab number @ Bank Tab to edit.
---@param index number @ Index of Permission to edit.
---@param enabled boolean @ true or false to Enable or Disable permission.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildBankTabPermissions)
function SetGuildBankTabPermissions(tab, index, enabled)
end

---Modifies info text for a tab.
---@param tab number @ Bank Tab to edit.
---@param infoText string @ Text to set, at most 2047 characters
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildBankText)
function SetGuildBankText(tab, infoText)
end

---Sets the gold withdrawl limit for the current. Current rank is set using GuildControlSetRank().
---@param amount number @ the amount of gold to withdraw per day
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildBankWithdrawGoldLimit)
function SetGuildBankWithdrawGoldLimit(amount)
end

---Changes the Guild Info to selected text.
---@param text unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildInfoText)
function SetGuildInfoText(text)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildMemberRank)
function SetGuildMemberRank()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildNewsFilter)
function SetGuildNewsFilter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildRecruitmentComment)
function SetGuildRecruitmentComment()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildRecruitmentSettings)
function SetGuildRecruitmentSettings()
end

---Sets the the current selected guild member in the guild roster according the active sorting.
---@param index unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildRosterSelection)
function SetGuildRosterSelection(index)
end

---Shows offline guild members in subsequent calls to the guild roster API.
---@param enabled boolean @ True includes all guild members; false filters out offline guild members.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildRosterShowOffline)
function SetGuildRosterShowOffline(enabled)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildTradeSkillCategoryFilter)
function SetGuildTradeSkillCategoryFilter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetGuildTradeSkillItemNameFilter)
function SetGuildTradeSkillItemNameFilter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetInWorldUIVisibility)
function SetInWorldUIVisibility()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetInsertItemsLeftToRight)
function SetInsertItemsLeftToRight()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetInventoryPortraitTexture)
function SetInventoryPortraitTexture()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetItemSearch)
function SetItemSearch()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetItemUpgradeFromCursorItem)
function SetItemUpgradeFromCursorItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLFGBootVote)
function SetLFGBootVote()
end

---Sets your comment in the LFG interface.
---@param comment unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLFGComment)
function SetLFGComment(comment)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLFGDungeon)
function SetLFGDungeon()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLFGDungeonEnabled)
function SetLFGDungeonEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLFGHeaderCollapsed)
function SetLFGHeaderCollapsed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLFGRoles)
function SetLFGRoles()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLegacyRaidDifficultyID)
function SetLegacyRaidDifficultyID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLookingForGuildComment)
function SetLookingForGuildComment()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLookingForGuildSettings)
function SetLookingForGuildSettings()
end

---method may be any one of the following self-explanatory and case insensitive arguments: group, freeforall, master, needbeforegreed, roundrobin.
---@param method unknown
---@param masterPlayer_or_threshold unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLootMethod)
function SetLootMethod(method, masterPlayer_or_threshold)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLootPortrait)
function SetLootPortrait()
end

---Sets the player's loot specialization.
---@param specID number @ specialization ID of the specialization to receive loot for, regardless of current specialization; or 0 to receive loot for the current specialization.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLootSpecialization)
function SetLootSpecialization(specID)
end

---Sets the loot quality threshold as a number for the party or raid.
---@param threshold number @ The loot quality to start using the current loot method with.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetLootThreshold)
function SetLootThreshold(threshold)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetMacroItem)
function SetMacroItem()
end

---Changes the spell used for dynamic feedback for a macro.
---@param index number @ Index of the macro, using the values 1-36 for the first page and 37-54 for the second.
---@param spell string @ Localized name of a spell to assign.
---@param target string @ UnitId to assign (for range indication).
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetMacroSpell)
function SetMacroSpell(index, spell, target)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetMerchantFilter)
function SetMerchantFilter()
end

---Assigns the given modifier key to the given action.
---@param action string @ The action to set a key for. Actions defined by Blizzard:
---@param key string @ The key to assign. Must be one of:
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetModifiedClick)
function SetModifiedClick(action, key)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetMouselookOverrideBinding)
function SetMouselookOverrideBinding()
end

---Needs summary.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetMoveEnabled)
function SetMoveEnabled()
end

---Sets the totem spell for a specific totem bar slot.
---@param actionID number @ The totem bar slot number.
---@param spellID number @ The global spell number, found on Wowhead or through COMBAT_LOG_EVENT.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetMultiCastSpell)
function SetMultiCastSpell(actionID, spellID)
end

---Alters style selection in a particular customization category.
---@param catId number @ Ascending index of the customization category that should be changed to the next/previous style.
---@param reverse number @ if the selection should be changed to the previous style, nil if to the next.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetNextBarberShopStyle)
function SetNextBarberShopStyle(catId, reverse)
end

---Controls whether the player is automatically passing on all loot.
---@param optOut number @ to make the player pass on all loot, nil otherwise.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetOptOutOfLoot)
function SetOptOutOfLoot(optOut)
end

---Alters an override binding.
---@param owner Frame @ The frame this binding belongs to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean @ true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string @ Binding to bind the command to. For example, Q, ALT-Q, ALT-CTRL-SHIFT-Q, BUTTON5
---@param command string @ nil - Any name attribute value of a Bindings.xml-defined binding, or an action command string; nil to remove an override binding. For example:
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetOverrideBinding)
function SetOverrideBinding(owner, isPriority, key, command)
end

---Creates an override binding that performs a button click.
---@param owner Frame @ The frame this binding belongs to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean @ true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string @ Binding to bind the command to. For example, Q, ALT-Q, ALT-CTRL-SHIFT-Q, BUTTON5
---@param buttonName string @ Name of the button widget this binding should fire a click event for.
---@param mouseClick string @ Mouse button name argument passed to the OnClick handlers.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetOverrideBindingClick)
function SetOverrideBindingClick(owner, isPriority, key, buttonName, mouseClick)
end

---Creates an override binding that uses an item when triggered.
---@param owner Frame @ The frame this binding belongs to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean @ true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string @ Binding to bind the command to. For example, Q, ALT-Q, ALT-CTRL-SHIFT-Q, BUTTON5
---@param item string @ Name or item link of the item to use when binding is triggered.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetOverrideBindingItem)
function SetOverrideBindingItem(owner, isPriority, key, item)
end

---Creates an override binding that runs a macro.
---@param owner Frame @ The frame this binding belongs to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean @ true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string @ Binding to bind the command to. For example, Q, ALT-Q, ALT-CTRL-SHIFT-Q, BUTTON5
---@param macro string @ Name or index of the macro to run.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetOverrideBindingMacro)
function SetOverrideBindingMacro(owner, isPriority, key, macro)
end

---Creates an override binding that casts a spell
---@param owner Frame @ The frame this binding belongs to; this can later be used to clear all override bindings belonging to a particular frame.
---@param isPriority boolean @ true if this is a priority binding, false otherwise. Both types of override bindings take precedence over normal bindings.
---@param key string @ Binding to bind the command to. For example, Q, ALT-Q, ALT-CTRL-SHIFT-Q, BUTTON5
---@param spell string @ Name of the spell you want to cast when this binding is triggered.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetOverrideBindingSpell)
function SetOverrideBindingSpell(owner, isPriority, key, spell)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPOIIconOverlapDistance)
function SetPOIIconOverlapDistance()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPOIIconOverlapPushDistance)
function SetPOIIconOverlapPushDistance()
end

---Used to toggle PVP on or Off.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPVP)
function SetPVP()
end

---Sets which roles the player is willing to perform in PvP battlegrounds.
---@param tank boolean @ true if the player is willing to tank, false otherwise.
---@param healer boolean @ true if the player is willing to heal, false otherwise.
---@param dps boolean @ true if the player is willing to deal damage, false otherwise.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPVPRoles)
function SetPVPRoles(tank, healer, dps)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPartyAssignment)
function SetPartyAssignment()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPetSlot)
function SetPetSlot()
end

---Sets the paperdoll model in the pet stable to a new player model.
---@param modelObject unknown @ PlayerModel - The model of the pet to display.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPetStablePaperdoll)
function SetPetStablePaperdoll(modelObject)
end

---Sets a texture to a unit's 2D portrait.
---@param textureObject unknown @ widget : Texture
---@param unitToken string @ UnitId
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPortraitTexture)
function SetPortraitTexture(textureObject, unitToken)
end

---Needs summary.
---@param textureObject unknown @ widget : Texture
---@param creatureDisplayID number @ CreatureDisplayID
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPortraitTextureFromCreatureDisplayID)
function SetPortraitTextureFromCreatureDisplayID(textureObject, creatureDisplayID)
end

---Applies a circular mask to a texture, making it resemble a portrait.
---@param textureObject unknown
---@param texturePath string
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetPortraitToTexture)
function SetPortraitToTexture(textureObject, texturePath)
end

---Changes the player's preferred raid difficulty.
---@param difficultyIndex number @ 3 → 10 Player
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRaidDifficultyID)
function SetRaidDifficultyID(difficultyIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRaidProfileOption)
function SetRaidProfileOption()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRaidProfileSavedPosition)
function SetRaidProfileSavedPosition()
end

---Move a raid member from his current subgroup into a different (non-full) subgroup.
---@param index unknown
---@param subgroup unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRaidSubgroup)
function SetRaidSubgroup(index, subgroup)
end

---Set which raid target will be shown over a mob or raid member.
---@param unit string @ UnitId
---@param index number @ Raid target index to assign to the specified unit:
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRaidTarget)
function SetRaidTarget(unit, index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRaidTargetProtected)
function SetRaidTargetProtected()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetRecruitingGuildSelection)
function SetRecruitingGuildSelection()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSavedInstanceExtend)
function SetSavedInstanceExtend()
end

---Returns the index of the current resolution in effect
---@param index unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetScreenResolution)
function SetScreenResolution(index)
end

---Set the artifact-pointer to raceIndex.
---@param raceIndex unknown @ int - Index of the race to select.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSelectedArtifact)
function SetSelectedArtifact(raceIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSelectedDisplayChannel)
function SetSelectedDisplayChannel()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSelectedFaction)
function SetSelectedFaction()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSelectedScreenResolutionIndex)
function SetSelectedScreenResolutionIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSelectedWarGameType)
function SetSelectedWarGameType()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSendMailCOD)
function SetSendMailCOD()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSendMailMoney)
function SetSendMailMoney()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSendMailShowing)
function SetSendMailShowing()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSortBagsRightToLeft)
function SetSortBagsRightToLeft()
end

---Selects a specialization.
---@param specIndex number @ Index of the specialization to select, ascending from 1.
---@param isPet boolean @ if true, set the select a specialization for the player's pet, otherwise, select a specialization for the player.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSpecialization)
function SetSpecialization(specIndex, isPet)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetSpellbookPetAction)
function SetSpellbookPetAction()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTaxiBenchmarkMode)
function SetTaxiBenchmarkMode()
end

---Sets the texture to use for the taxi map.
---@param texture string @ The path to the texture to use for the taxi map.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTaxiMap)
function SetTaxiMap(texture)
end

---Enables or disables a tracking method with a specified id.
---@param id unknown @ The id of the tracking you would like to change. The id is assigned by the client, 1 is the first tracking method available on the tracking list, 2 is the next and so on. To get Information about a specific id, use GetTrackingInfo.
---@param enabled boolean @ flag if the specified tracking id is to be enabled or disabled.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTracking)
function SetTracking(id, enabled)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTradeCurrency)
function SetTradeCurrency()
end

---Sets the amount of money offered as part of the player's trade offer.
---@param copper unknown @ Amount of money, in copper, to offer for trade.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTradeMoney)
function SetTradeMoney(copper)
end

---Sets the status of a skill filter in the trainer window.
---@param type string @ filter to set the status for:
---@param status number @ to show, 0 to hide items matching the specified filter. (Note that this is likely a bug as GetTrainerServiceTypeFilter returns a boolean now.)
---@param exclusive unknown @ ? - ?
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTrainerServiceTypeFilter)
function SetTrainerServiceTypeFilter(type, status, exclusive)
end

---Needs summary.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetTurnEnabled)
function SetTurnEnabled()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SetUIVisibility)
function SetUIVisibility()
end

---Sets a camera perspective from one previously saved with SaveView. The last position loaded is stored in the CVar cameraView.
---@param viewIndex number @ The view index (1-5) to return to (1 is always first person, and cannot be saved with SaveView)
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetView)
function SetView(viewIndex)
end

---Sets the faction to be watched.
---@param index number @ The index of the faction to watch, ascending from 1; out-of-range values will clear the watched faction.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetWatchedFactionIndex)
function SetWatchedFactionIndex(index)
end

---The purpose of this function isn't exactly clear, but from the way it's used it would appear to be a function that appropriately scales a frame for full-screen views, such as the world map frame, to fit on the screen maximally depending on the aspect ratio. Why this wasn't implemented in lua isn't entirely clear, though it may require information about the screen geometry which isn't exposed through the standard UI.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SetupFullscreenScale)
function SetupFullscreenScale()
end

---Needs summary.
---@return boolean show
---[View Documents](https://wow.gamepedia.com/API_ShouldShowIslandsWeeklyPOI)
function ShouldShowIslandsWeeklyPOI()
end

---Needs summary.
---@return boolean show
---[View Documents](https://wow.gamepedia.com/API_ShouldShowSpecialSplashScreen)
function ShouldShowSpecialSplashScreen()
end

---Sets whether account-wide achievements are shown to other players.
---@param show boolean @ true to allow other players to view all achievements your account has achieved, false to only allow viewing achievements for individual characters.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowAccountAchievements)
function ShowAccountAchievements(show)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowBossFrameWhenUninteractable)
function ShowBossFrameWhenUninteractable()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowBuybackSellCursor)
function ShowBuybackSellCursor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowContainerSellCursor)
function ShowContainerSellCursor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowInventorySellCursor)
function ShowInventorySellCursor()
end

---Shows the completion dialog for a complete, auto-completable quest.
---@param questLogIndex number @ index of the quest log line containing a complete, auto-completable quest.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowQuestComplete)
function ShowQuestComplete(questLogIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowQuestOffer)
function ShowQuestOffer()
end

---Puts the cursor in repair mode.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ShowRepairCursor)
function ShowRepairCursor()
end

---Adds the player's signature to the currently viewed petition.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SignPetition)
function SignPetition()
end

---The player sits, stands, or begins to descend (while swimming or flying)
---@return void
---[View Documents](https://wow.gamepedia.com/API_SitStandOrDescendStart)
function SitStandOrDescendStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SocketContainerItem)
function SocketContainerItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SocketInventoryItem)
function SocketInventoryItem()
end

---Socked a Keystone to the selected artifact.
---@return boolean keystoneAdded
---[View Documents](https://wow.gamepedia.com/API_SocketItemToArtifact)
function SocketItemToArtifact()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SolveArtifact)
function SolveArtifact()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortBGList)
function SortBGList()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortBags)
function SortBags()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortBankBags)
function SortBankBags()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortBattlefieldScoreData)
function SortBattlefieldScoreData()
end

---Sorts the guild roster on a certain column. Sorts by name by default. Repeating the same sort will revert sorting.
---@param level unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_SortGuildRoster)
function SortGuildRoster(level)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortGuildTradeSkill)
function SortGuildTradeSkill()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortQuestSortTypes)
function SortQuestSortTypes()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortQuests)
function SortQuests()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SortReagentBankBags)
function SortReagentBankBags()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_ChatSystem_GetInputDriverNameByIndex)
function Sound_ChatSystem_GetInputDriverNameByIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_ChatSystem_GetNumInputDrivers)
function Sound_ChatSystem_GetNumInputDrivers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_ChatSystem_GetNumOutputDrivers)
function Sound_ChatSystem_GetNumOutputDrivers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_ChatSystem_GetOutputDriverNameByIndex)
function Sound_ChatSystem_GetOutputDriverNameByIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_GameSystem_GetInputDriverNameByIndex)
function Sound_GameSystem_GetInputDriverNameByIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_GameSystem_GetNumInputDrivers)
function Sound_GameSystem_GetNumInputDrivers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_GameSystem_GetNumOutputDrivers)
function Sound_GameSystem_GetNumOutputDrivers()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_GameSystem_GetOutputDriverNameByIndex)
function Sound_GameSystem_GetOutputDriverNameByIndex()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_Sound_GameSystem_RestartSoundSystem)
function Sound_GameSystem_RestartSoundSystem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetGarrisonFollower)
function SpellCanTargetGarrisonFollower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetGarrisonFollowerAbility)
function SpellCanTargetGarrisonFollowerAbility()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetGarrisonMission)
function SpellCanTargetGarrisonMission()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetItem)
function SpellCanTargetItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetItemID)
function SpellCanTargetItemID()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetQuest)
function SpellCanTargetQuest()
end

---Checks if the spell awaiting target selection can be cast on a specified unit.
---@param unitId string @ UnitId) - The unit to check.
---@return boolean canTarget
---[View Documents](https://wow.gamepedia.com/API_SpellCanTargetUnit)
function SpellCanTargetUnit(unitId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellCancelQueuedSpell)
function SpellCancelQueuedSpell()
end

---Checks if the spell should be visible, depending on spellId and raid combat status
---@param spellId number @ The ID of the spell to check
---@param visType string @ either RAID_INCOMBAT if in combat, RAID_OUTOFCOMBAT otherwise
---@return boolean hasCustomboolean alwaysShowMineboolean showForMySpec
---[View Documents](https://wow.gamepedia.com/API_SpellGetVisibilityInfo)
function SpellGetVisibilityInfo(spellId, visType)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellHasRange)
function SpellHasRange()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellIsAlwaysShown)
function SpellIsAlwaysShown()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellIsSelfBuff)
function SpellIsSelfBuff()
end

---Returns whether a spell is about to be cast, waiting for the player to select a target.
---@return number isTargeting
---[View Documents](https://wow.gamepedia.com/API_SpellIsTargeting)
function SpellIsTargeting()
end

---Stops the current spellcasting.
---@return number stopped
---[View Documents](https://wow.gamepedia.com/API_SpellStopCasting)
function SpellStopCasting()
end

---Cancels the spell awaiting target selection.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellStopTargeting)
function SpellStopTargeting()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellTargetItem)
function SpellTargetItem()
end

---This specifies the target that the spell should use without needing you to click the target or make it your main target.
---@param unitId string @ unit you wish to cast the spell on.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SpellTargetUnit)
function SpellTargetUnit(unitId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SplashFrameCanBeShown)
function SplashFrameCanBeShown()
end

---Picks up part of a stack of items from a container, placing them on the cursor.
---@param bagID number @ bagID) - id of the bag the slot is located in.
---@param slot number @ slot inside the bag (top left slot is 1, slot to the right of it is 2).
---@param count number @ Quantity to pick up.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SplitContainerItem)
function SplitContainerItem(bagID, slot, count)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SplitGuildBankItem)
function SplitGuildBankItem()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StartAttack)
function StartAttack()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StartAutoRun)
function StartAutoRun()
end

---Invites the specified player to a duel.
---@param playerName_or_unit unknown
---@param exactMatch boolean
---@return void
---[View Documents](https://wow.gamepedia.com/API_StartDuel)
function StartDuel(playerName_or_unit, exactMatch)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StartSpectatorWarGame)
function StartSpectatorWarGame()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StartWarGame)
function StartWarGame()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StartWarGameByName)
function StartWarGameByName()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StopAttack)
function StopAttack()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StopAutoRun)
function StopAutoRun()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StopCinematic)
function StopCinematic()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StopMacro)
function StopMacro()
end

---Stops the currently played music file.
---@return void
---[View Documents](https://wow.gamepedia.com/API_StopMusic)
function StopMusic()
end

---Stops playing the specified sound.
---@param soundHandle number @ Playing sound handle, as returned by PlaySound or PlaySoundFile.
---@param fadeoutTime number @ In milliseconds.
---@return void
---[View Documents](https://wow.gamepedia.com/API_StopSound)
function StopSound(soundHandle, fadeoutTime)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_StoreSecureReference)
function StoreSecureReference()
end

---The player begins strafing left at the specified time.
---@param startTime unknown @ Begin strafing left at this time.
---@return void
---[View Documents](https://wow.gamepedia.com/API_StrafeLeftStart)
function StrafeLeftStart(startTime)
end

---The player stops strafing left at the specified time.
---@param startTime unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_StrafeLeftStop)
function StrafeLeftStop(startTime)
end

---The player begins strafing right at the specified time.
---@param startTime number @ Begin strafing right at this time, per GetTime * 1000.
---@return void
---[View Documents](https://wow.gamepedia.com/API_StrafeRightStart)
function StrafeRightStart(startTime)
end

---The player stops strafing right at the specified time.
---@param startTime unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_StrafeRightStop)
function StrafeRightStop(startTime)
end

---Notifies the game engine that the player is stuck.
---@return void
---[View Documents](https://wow.gamepedia.com/API_Stuck)
function Stuck()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SubmitRequiredGuildRename)
function SubmitRequiredGuildRename()
end

---Summons a player using the RaF system.
---@param unit string @ UnitId) - player you wish to summon to you.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SummonFriend)
function SummonFriend(unit)
end

---Summons a random non-combat pet companion.
---@return void
---[View Documents](https://wow.gamepedia.com/API_SummonRandomCritter)
function SummonRandomCritter()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SupportsClipCursor)
function SupportsClipCursor()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SurrenderArena)
function SurrenderArena()
end

---Swaps two players in a raid.
---@param index1 number @ ID of first raid member (1 to MAX_RAID_MEMBERS)
---@param index2 number @ ID of second raid member (1 to MAX_RAID_MEMBERS)
---@return void
---[View Documents](https://wow.gamepedia.com/API_SwapRaidSubgroup)
function SwapRaidSubgroup(index1, index2)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_SwitchAchievementSearchTab)
function SwitchAchievementSearchTab()
end

---Take all money attached in a given letter in your inbox.
---@param index unknown
---@param itemIndex unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_TakeInboxItem)
function TakeInboxItem(index, itemIndex)
end

---Take all money attached in a given letter in your inbox
---@param index number @ a number representing a message in the inbox
---@return void
---[View Documents](https://wow.gamepedia.com/API_TakeInboxMoney)
function TakeInboxMoney(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TakeInboxTextItem)
function TakeInboxTextItem()
end

---Begins travelling to the specified taxi map node, if possible.
---@param index number @ Taxi node index to begin travelling to, ascending from 1 to NumTaxiNodes().
---@return void
---[View Documents](https://wow.gamepedia.com/API_TakeTaxiNode)
function TakeTaxiNode(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetDirectionEnemy)
function TargetDirectionEnemy()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetDirectionFinished)
function TargetDirectionFinished()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetDirectionFriend)
function TargetDirectionFriend()
end

---Selects the last targeted enemy as the current target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetLastEnemy)
function TargetLastEnemy()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetLastFriend)
function TargetLastFriend()
end

---Selects the last target as the current target.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetLastTarget)
function TargetLastTarget()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearest)
function TargetNearest()
end

---Selects the nearest enemy as the current target.
---@param reverse number @ true to cycle backwards; false to cycle forwards.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearestEnemy)
function TargetNearestEnemy(reverse)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearestEnemyPlayer)
function TargetNearestEnemyPlayer()
end

---This function will select the nearest friendly unit.
---@param reverse boolean @ if true, reverses the order of targetting units.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearestFriend)
function TargetNearestFriend(reverse)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearestFriendPlayer)
function TargetNearestFriendPlayer()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearestPartyMember)
function TargetNearestPartyMember()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetNearestRaidMember)
function TargetNearestRaidMember()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetPriorityHighlightEnd)
function TargetPriorityHighlightEnd()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetPriorityHighlightStart)
function TargetPriorityHighlightStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetSpellReplacesBonusTree)
function TargetSpellReplacesBonusTree()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetTotem)
function TargetTotem()
end

---Targets the specified unit.
---@param unit_or_name unknown
---@param exactMatch boolean @ Whether to treat name as an exact match or not.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TargetUnit)
function TargetUnit(unit_or_name, exactMatch)
end

---Returns the horizontal position of the destination node of a given route to the destination.
---@param destinationIndex number @ The final destination taxi node.
---@param routeIndex number @ The index of the route to get the source from.
---@return number dX
---[View Documents](https://wow.gamepedia.com/API_TaxiGetDestX)
function TaxiGetDestX(destinationIndex, routeIndex)
end

---Returns the vertical position of the destination node of a given route to the destination.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TaxiGetDestY)
function TaxiGetDestY()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TaxiGetNodeSlot)
function TaxiGetNodeSlot()
end

---Returns the horizontal position of the source node of a given route to the destination.
---@param destinationIndex number @ The final destination taxi node.
---@param routeIndex number @ The index of the route to get the source from.
---@return number sX
---[View Documents](https://wow.gamepedia.com/API_TaxiGetSrcX)
function TaxiGetSrcX(destinationIndex, routeIndex)
end

---Returns the vertical position of the source node of a given route to the destination.
---@param destinationIndex number @ The final destination taxi node.
---@param routeIndex number @ The index of the route to get the source from.
---@return number sY
---[View Documents](https://wow.gamepedia.com/API_TaxiGetSrcY)
function TaxiGetSrcY(destinationIndex, routeIndex)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TaxiIsDirectFlight)
function TaxiIsDirectFlight()
end

---Returns the cost of a flight point in copper, unconfirmed if it is before faction cost reductions.
---@param slot number @ ascending to NumTaxiNodes(), out of bound numbers triggers lua error.
---@return number cost
---[View Documents](https://wow.gamepedia.com/API_TaxiNodeCost)
function TaxiNodeCost(slot)
end

---Returns the type of a taxi map node.
---@param index number @ Taxi map node index, ascending from 1 to NumTaxiNodes().
---@return string type
---[View Documents](https://wow.gamepedia.com/API_TaxiNodeGetType)
function TaxiNodeGetType(index)
end

---Returns the name of a node on the taxi map.
---@param index number @ Index of the taxi map node, ascending from 1 to NumTaxiNodes()
---@return string name
---[View Documents](https://wow.gamepedia.com/API_TaxiNodeName)
function TaxiNodeName(index)
end

---Returns the position of a flight point on the taxi map.
---@param index unknown
---@return unknown xunknown y
---[View Documents](https://wow.gamepedia.com/API_TaxiNodePosition)
function TaxiNodePosition(index)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TaxiRequestEarlyLanding)
function TaxiRequestEarlyLanding()
end

---Signals the client that an offer to resurrect the player has expired.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TimeoutResurrect)
function TimeoutResurrect()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleAnimKitDisplay)
function ToggleAnimKitDisplay()
end

---Turns auto-run on or off.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleAutoRun)
function ToggleAutoRun()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleDebugAIDisplay)
function ToggleDebugAIDisplay()
end

---Toggles PvP setting on or off.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TogglePVP)
function TogglePVP()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TogglePetAutocast)
function TogglePetAutocast()
end

---Toggle between running and walking.
---@param theTime unknown @ Toggle between running and walking at the specified time, per GetTime * 1000.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleRun)
function ToggleRun(theTime)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleSelfHighlight)
function ToggleSelfHighlight()
end

---Toggles sheathed or unsheathed weapons.
---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleSheath)
function ToggleSheath()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleSpellAutocast)
function ToggleSpellAutocast()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ToggleWindowed)
function ToggleWindowed()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TriggerTutorial)
function TriggerTutorial()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnInGuildCharter)
function TurnInGuildCharter()
end

---The player begins turning left at the specified time.
---@param startTime number @ Begin turning left at this time, per GetTime * 1000.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnLeftStart)
function TurnLeftStart(startTime)
end

---The player stops turning left at the specified time.
---@param stopTime unknown @ Stop turning left at this time, per GetTime * 1000.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnLeftStop)
function TurnLeftStop(stopTime)
end

---Begin Right click in the 3D game world.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnOrActionStart)
function TurnOrActionStart()
end

---End Right click in the 3D game world.
---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnOrActionStop)
function TurnOrActionStop()
end

---The player begins turning right at the specified time.
---@param startTime number @ Begin turning right at this time, per GetTime * 1000
---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnRightStart)
function TurnRightStart(startTime)
end

---The player stops turning right at the specified time.
---@param startTime unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_TurnRightStop)
function TurnRightStop(startTime)
end

---Removes a player from the party/raid group if you're the party leader, or initiates a vote to kick a player from a Dungeon Finder group.
---@param name string @ Name of the player to remove from group. When removing cross-server players, it is important to include the server name: Ygramul-Emerald Dream.
---@param reason string @ Optional) - Used when initiating a kick vote against the player.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UninviteUnit)
function UninviteUnit(name, reason)
end

---Determine whether a unit is in combat or has aggro.
---@param unit string @ The UnitId of the unit to check (Tested with player, pet, party1, hostile target)
---@return boolean affectingCombat
---[View Documents](https://wow.gamepedia.com/API_UnitAffectingCombat)
function UnitAffectingCombat(unit)
end

---Needs summary.
---@param unit string
---@return boolean isAlliedRaceboolean hasHeritageArmorUnlocked
---[View Documents](https://wow.gamepedia.com/API_UnitAlliedRaceInfo)
function UnitAlliedRaceInfo(unit)
end

---Returns the armor statistics relevant to the specified target.
---@param unit string @ The unitId to get information from. Normally only works for player and pet, but also for target if the target is a beast upon which the hunter player has cast Beast Lore.
---@return number basenumber effectiveArmornumber armornumber posBuffnumber negBuff
---[View Documents](https://wow.gamepedia.com/API_UnitArmor)
function UnitArmor(unit)
end

---Returns the unit's melee attack power and modifiers.
---@param unit unknown @ UnitId - The unit to get information from. (Does not work for target - Possibly only player and pet)
---@return number basenumber posBuffnumber negBuff
---[View Documents](https://wow.gamepedia.com/API_UnitAttackPower)
function UnitAttackPower(unit)
end

---Returns the unit's melee attack speed for each hand.
---@param unit unknown @ UnitId - The unit to get information from. (Verified for player and target)
---@return number mainSpeednumber offSpeed
---[View Documents](https://wow.gamepedia.com/API_UnitAttackSpeed)
function UnitAttackSpeed(unit)
end

---Retrieve info about a certain buff on a certain unit.
---@param unit string @ unitId) - unit whose auras to query.
---@param index number @ or String - index
---@param filter string @ optional) - list of filters, separated by spaces or pipes. HELPFUL by default. The following filters are available:
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitAura)
function UnitAura(unit, index, filter)
end

---Needs summary.
---@param unit string
---@param slot number @ aura slot from UnitAuraSlots()
---@return unknown nameplateShowPersonalunknown spellIdunknown canApplyAuraunknown isBossDebuffunknown castByPlayerunknown nameplateShowAllunknown timeModunknown ...
---[View Documents](https://wow.gamepedia.com/API_UnitAuraBySlot)
function UnitAuraBySlot(unit, slot)
end

---Needs summary.
---@param unit string
---@param filter string @ e.g. HELPFUL, HARMFUL|RAID
---@param maxSlots number
---@param continuationToken number
---@return number continuationTokennumber ...
---[View Documents](https://wow.gamepedia.com/API_UnitAuraSlots)
function UnitAuraSlots(unit, filter, maxSlots, continuationToken)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitBattlePetLevel)
function UnitBattlePetLevel()
end

---Returns the battle pet species ID of a specified unit.
---@param unit string @ UnitId) - unit to return the species ID of.
---@return number speciesID
---[View Documents](https://wow.gamepedia.com/API_UnitBattlePetSpeciesID)
function UnitBattlePetSpeciesID(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitBattlePetType)
function UnitBattlePetType()
end

---Retrieve info about a certain buff on a certain unit.
---@param unit string @ unitId) - unit whose buffs to query.
---@param index number @ or String - index
---@param filter string @ optional) - list of filters, separated by spaces or pipes (|). HELPFUL by default. The following filters are available:
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitBuff)
function UnitBuff(unit, index, filter)
end

---Indicates whether the first unit can assist the second unit.
---@param unitToAssist unknown @ UnitId - the unit that would assist (e.g., player or target)
---@param unitToBeAssisted unknown @ UnitId - the unit that would be assisted (e.g., player or target)
---@return unknown canAssist
---[View Documents](https://wow.gamepedia.com/API_UnitCanAssist)
function UnitCanAssist(unitToAssist, unitToBeAssisted)
end

---Returns 1 if the first unit can attack the second, nil otherwise.
---@param attacker unknown @ UnitId - the unit that would initiate the attack (e.g., player or target)
---@param attacked unknown @ UnitId - the unit that would be attacked (e.g., player or target)
---@return unknown canAttack
---[View Documents](https://wow.gamepedia.com/API_UnitCanAttack)
function UnitCanAttack(attacker, attacked)
end

---Returns true if the first unit can cooperate with the second, false otherwise.
---@param unit1 string @ The UnitId of the unit to check (Tested with player, pet, party1, hostile target)
---@param unit2 string @ The UnitId of the unit to check (Tested with player, pet, party1, hostile target)
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitCanCooperate)
function UnitCanCooperate(unit1, unit2)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitCanPetBattle)
function UnitCanPetBattle()
end

---Returns information about the spell currently being cast by the specified unit.
---@param unit string @ The UnitId to query (e.g. player, party2, pet, target etc.)
---@return string namestring textstring texturenumber startTimeMSnumber endTimeMSboolean isTradeSkillstring castIDboolean notInterruptiblenumber spellId
---[View Documents](https://wow.gamepedia.com/API_UnitCastingInfo)
function UnitCastingInfo(unit)
end

---Returns information about the spell currently being channeled by the specified unit.
---@param unit string @ The unit to query (e.g. player, party2, pet, target etc.)
---@return string namestring textstring texturenumber startTimeMSnumber endTimeMSboolean isTradeSkillboolean notInterruptiblenumber spellId
---[View Documents](https://wow.gamepedia.com/API_UnitChannelInfo)
function UnitChannelInfo(unit)
end

---Returns the Timewalking Campaign ID that a specified unit is in.
---@param unit string
---@return number ID
---[View Documents](https://wow.gamepedia.com/API_UnitChromieTimeID)
function UnitChromieTimeID(unit)
end

---Two functions provide the class of a specified unit:
---@param unitId string @ The UnitId of the unit to check (e.g. player or target)
---@return string classNamestring classFilenamenumber classId
---[View Documents](https://wow.gamepedia.com/API_UnitClass)
function UnitClass(unitId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitClassBase)
function UnitClassBase()
end

---Returns the classification of the specified unit (e.g., elite or worldboss).
---@param unit string @ unitId of the unit to query, e.g. target
---@return string classification
---[View Documents](https://wow.gamepedia.com/API_UnitClassification)
function UnitClassification(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitControllingVehicle)
function UnitControllingVehicle()
end

---Returns the creature family of the specified unit (e.g., Crab or Wolf). Only works on Beasts and Demons, since the family's only function is to determine what abilities the unit will have if a hunter or warlock tames it; however, works on most currently untameable Beasts for reasons of backward and forward compatibility. Returns nil if the creature isn't a Beast or doesn't belong to a family that includes a tameable creature.
---@param unit unknown @ UnitId - unit you wish to query.
---@return string creatureFamily
---[View Documents](https://wow.gamepedia.com/API_UnitCreatureFamily)
function UnitCreatureFamily(unit)
end

---Returns the creature type of the specified unit.
---@param unit string @ The UnitId the unit to query creature type of.
---@return string creatureType
---[View Documents](https://wow.gamepedia.com/API_UnitCreatureType)
function UnitCreatureType(unit)
end

---Unit damage returns information about your current damage stats. Doesn't seem to return usable values for mobs, NPCs, or other players. The method returns 7 values, only some of which appear to be useful.
---@param unit string @ The unitId to get information for. (Likely only works for player and pet. Possibly for [Beast Lore]'d targets. -- unconfirmed)
---@return number lowDmgnumber hiDmgnumber offlowDmgnumber offhiDmgnumber posBuffnumber negBuffnumber percentmod
---[View Documents](https://wow.gamepedia.com/API_UnitDamage)
function UnitDamage(unit)
end

---Retrieve info about a certain buff on a certain unit.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitDebuff)
function UnitDebuff()
end

---Returns detailed information about the threat status of one unit against another.
---@param unit string @ UnitId of the player or pet whose threat to request.
---@param mobUnit string @ UnitId of the NPC whose threat table to query.
---@return boolean isTankingnumber statusnumber scaledPercentagenumber rawPercentagenumber threatValue
---[View Documents](https://wow.gamepedia.com/API_UnitDetailedThreatSituation)
function UnitDetailedThreatSituation(unit, mobUnit)
end

---Returns the squared distance to a unit in your group
---@param unit string @ The unitId for the player in your group
---@return number distanceSquaredboolean checkedDistance
---[View Documents](https://wow.gamepedia.com/API_UnitDistanceSquared)
function UnitDistanceSquared(unit)
end

---Returns the unit's effective (scaled) level.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitEffectiveLevel)
function UnitEffectiveLevel()
end

---Determines if the unit exists.
---@param unit string @ The UnitId of the unit to check (Tested with player, pet, party1, hostile target)
---@return boolean exists
---[View Documents](https://wow.gamepedia.com/API_UnitExists)
function UnitExists(unit)
end

---Get the name of the faction (Horde/Alliance) a unit belongs to.
---@param unit string @ The UnitId of the unit to check (Tested with player, pet, party1, hostile target)
---@return string englishFactionunknown izedFaction
---[View Documents](https://wow.gamepedia.com/API_UnitFactionGroup)
function UnitFactionGroup(unit)
end

---Returns the player's (unit's) name and server.
---@param unit string @ unitId to query; the only intended value is player.
---@return unknown fullNamestring realm
---[View Documents](https://wow.gamepedia.com/API_UnitFullName)
function UnitFullName(unit)
end

---Returns the GUID of the specified unit.
---@param unit unknown @ UnitId - unit to look up the GUID of.
---@return string guid
---[View Documents](https://wow.gamepedia.com/API_UnitGUID)
function UnitGUID(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitGetAvailableRoles)
function UnitGetAvailableRoles()
end

---Returns the predicted heals cast on the specified unit.
---@param unit unknown @ UnitId - The UnitId to query healing for
---@param healer unknown @ UnitId - Only include incoming heals by a single UnitId (Optional)
---@return number heal
---[View Documents](https://wow.gamepedia.com/API_UnitGetIncomingHeals)
function UnitGetIncomingHeals(unit, healer)
end

---Returns the total amount of damage the unit can absorb before losing health.
---@param unit string @ unit to query absorption shields of.
---@return number totalAbsorbs
---[View Documents](https://wow.gamepedia.com/API_UnitGetTotalAbsorbs)
function UnitGetTotalAbsorbs(unit)
end

---Returns the total amount of healing the unit can absorb without gaining health.
---@param unit string @ unit to query information about.
---@return number totalHealAbsorbs
---[View Documents](https://wow.gamepedia.com/API_UnitGetTotalHealAbsorbs)
function UnitGetTotalHealAbsorbs(unit)
end

---Returns the assigned role in a group formed via the Dungeon Finder Tool.
---@param Unit string @ the unit to be queried (player, party1 .. party4, target, raid1 .. raid40)
---@return string role
---[View Documents](https://wow.gamepedia.com/API_UnitGroupRolesAssigned)
function UnitGroupRolesAssigned(Unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitHPPerStamina)
function UnitHPPerStamina()
end

---Checks if the unit is currently being resurrected.
---@param unitID_or_UnitName unknown
---@return boolean isBeingResurrected
---[View Documents](https://wow.gamepedia.com/API_UnitHasIncomingResurrection)
function UnitHasIncomingResurrection(unitID_or_UnitName)
end

---Returns whether the unit is currently unable to use the dungeon finder due to leaving a group prematurely.
---@param unit unknown @ UnitId - the unit that would assist (e.g., player or target)
---@return boolean isDeserter
---[View Documents](https://wow.gamepedia.com/API_UnitHasLFGDeserter)
function UnitHasLFGDeserter(unit)
end

---Returns whether the unit is currently under the effects of the random dungeon cooldown.
---@param unit unknown @ UnitId - the unit that would assist (e.g., player or target)
---@return boolean hasRandomCooldown
---[View Documents](https://wow.gamepedia.com/API_UnitHasLFGRandomCooldown)
function UnitHasLFGRandomCooldown(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitHasRelicSlot)
function UnitHasRelicSlot()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitHasVehiclePlayerFrameUI)
function UnitHasVehiclePlayerFrameUI()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitHasVehicleUI)
function UnitHasVehicleUI()
end

---Returns the current health of the specified unit.
---@param unit unknown @ UnitId - identifies the unit to query health for
---@return number health
---[View Documents](https://wow.gamepedia.com/API_UnitHealth)
function UnitHealth(unit)
end

---Returns the maximum health of the specified unit; however, this function behaves differently between Retail and Classic.
---@param unit unknown @ UnitId -  the unit whose max health to query.
---@return number max_health
---[View Documents](https://wow.gamepedia.com/API_UnitHealthMax)
function UnitHealthMax(unit)
end

---Returns  the current amount of honor the unit has for the current rank.
---@param unitID_or_unitName unknown
---@return number currentHonor
---[View Documents](https://wow.gamepedia.com/API_UnitHonor)
function UnitHonor(unitID_or_unitName)
end

---Returns the current honor level of a unit.
---@param unitID_or_PlayerName unknown
---@return number honorLevel
---[View Documents](https://wow.gamepedia.com/API_UnitHonorLevel)
function UnitHonorLevel(unitID_or_PlayerName)
end

---Returns the amount of honor the current rank maxes out.
---@param unitID_or_playerName unknown
---@return number maxHonor
---[View Documents](https://wow.gamepedia.com/API_UnitHonorMax)
function UnitHonorMax(unitID_or_playerName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitInAnyGroup)
function UnitInAnyGroup()
end

---Used to determine the position number of the specified unit in the battleground raid.
---@param unit string @ The UnitId to query (e.g. player, party2, pet, target etc.)
---@return number position
---[View Documents](https://wow.gamepedia.com/API_UnitInBattleground)
function UnitInBattleground(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitInOtherParty)
function UnitInOtherParty()
end

---Returns 1 if the unit is a player in your party, nil otherwise.
---@param unit string @ unitId who should be checked
---@return boolean inParty
---[View Documents](https://wow.gamepedia.com/API_UnitInParty)
function UnitInParty(unit)
end

---Returns true if the specified unit is in the primary phase of the party.
---@param unit string
---@return boolean inPartyShard
---[View Documents](https://wow.gamepedia.com/API_UnitInPartyShard)
function UnitInPartyShard(unit)
end

---Returns a number if the unit is in your raid group, nil otherwise.
---@param unit string @ unitId to check.
---@return unknown index
---[View Documents](https://wow.gamepedia.com/API_UnitInRaid)
function UnitInRaid(unit)
end

---Returns whether a unit is close to the player.
---@param unit string @ unitId) - unit to query; information is only available for members of the player's group.
---@return boolean inRangeboolean checkedRange
---[View Documents](https://wow.gamepedia.com/API_UnitInRange)
function UnitInRange(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitInSubgroup)
function UnitInSubgroup()
end

---Checks whether a specified unit is within an vehicle.
---@param target unknown
---@return unknown inVehicle
---[View Documents](https://wow.gamepedia.com/API_UnitInVehicle)
function UnitInVehicle(target)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitInVehicleControlSeat)
function UnitInVehicleControlSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitInVehicleHidesPetFrame)
function UnitInVehicleHidesPetFrame()
end

---Checks if a unit is AFK.
---@param unit unknown @ The UnitId to return AFK status of.
---@return unknown isAFK
---[View Documents](https://wow.gamepedia.com/API_UnitIsAFK)
function UnitIsAFK(unit)
end

---Four functions indicate whether a unit is a Battle Pet of a certain kind:
---@param unit string @ UnitId) - unit to check, e.g. target.
---@return boolean isBattlePet
---[View Documents](https://wow.gamepedia.com/API_UnitIsBattlePet)
function UnitIsBattlePet(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsBattlePetCompanion)
function UnitIsBattlePetCompanion()
end

---Checks if a specified unit is currently charmed.
---@param unit string @ UnitId of the unit to check.
---@return boolean isTrue
---[View Documents](https://wow.gamepedia.com/API_UnitIsCharmed)
function UnitIsCharmed(unit)
end

---Returns true if the unit is connected to the game (i.e. not offline), false otherwise.
---@param unit string
---@return unknown isOnline
---[View Documents](https://wow.gamepedia.com/API_UnitIsConnected)
function UnitIsConnected(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsControlling)
function UnitIsControlling()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsCorpse)
function UnitIsCorpse()
end

---Checks if a unit is DND (Do Not Disturb).
---@param unit unknown @ The UnitId to return DND status of.
---@return unknown isDND
---[View Documents](https://wow.gamepedia.com/API_UnitIsDND)
function UnitIsDND(unit)
end

---Returns a value indicating whether the specified unit is dead.
---@param unit string @ the UnitId to query
---@return unknown isDead
---[View Documents](https://wow.gamepedia.com/API_UnitIsDead)
function UnitIsDead(unit)
end

---Returns a value indicating whether the specified unit is dead or in ghost form.
---@param unit string @ the UnitId to query
---@return unknown isDeadOrGhost
---[View Documents](https://wow.gamepedia.com/API_UnitIsDeadOrGhost)
function UnitIsDeadOrGhost(unit)
end

---This function will determine if the target is hostile towards you.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsEnemy)
function UnitIsEnemy()
end

---Returns whether a unit is feigning death.
---@param unit string @ unit to check.
---@return number isFeign
---[View Documents](https://wow.gamepedia.com/API_UnitIsFeignDeath)
function UnitIsFeignDeath(unit)
end

---This function will determine whether two units are friendly to each other (i.e. able to help each other in combat).
---@param unit string @ A valid unit.
---@param otherunit string @ A valid unit.
---@return boolean isFriend
---[View Documents](https://wow.gamepedia.com/API_UnitIsFriend)
function UnitIsFriend(unit, otherunit)
end

---Returns a value indicating whether the specified unit is in ghost form.
---@param unit string @ the UnitId to query
---@return unknown isGhost
---[View Documents](https://wow.gamepedia.com/API_UnitIsGhost)
function UnitIsGhost(unit)
end

---Returns whether the unit is an assistant in your current group.
---@param unit string @ unitId) - unit to query.
---@return boolean isAssistant
---[View Documents](https://wow.gamepedia.com/API_UnitIsGroupAssistant)
function UnitIsGroupAssistant(unit)
end

---Returns true if the unit is the leader of a party or raid, false otherwise.
---@param unit_or_PlayerName unknown
---@return boolean isLeader
---[View Documents](https://wow.gamepedia.com/API_UnitIsGroupLeader)
function UnitIsGroupLeader(unit_or_PlayerName)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsInMyGuild)
function UnitIsInMyGuild()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsMercenary)
function UnitIsMercenary()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsOtherPlayersBattlePet)
function UnitIsOtherPlayersBattlePet()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsOtherPlayersPet)
function UnitIsOtherPlayersPet()
end

---Needs summary.
---@param controllingUnit string
---@param controlledUnit string
---@return boolean unitIsOwnerOrControllerOfUnit
---[View Documents](https://wow.gamepedia.com/API_UnitIsOwnerOrControllerOfUnit)
function UnitIsOwnerOrControllerOfUnit(controllingUnit, controlledUnit)
end

---Checks to see if a unit is flagged for PvP or not.
---@param unit unknown
---@return unknown ispvp
---[View Documents](https://wow.gamepedia.com/API_UnitIsPVP)
function UnitIsPVP(unit)
end

---Checks if a unit is flagged for free-for-all PVP. (ex. from being in a world arena)
---@param unitId string @ UnitId) - The unit to check
---@return boolean isFreeForAll
---[View Documents](https://wow.gamepedia.com/API_UnitIsPVPFreeForAll)
function UnitIsPVPFreeForAll(unitId)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsPVPSanctuary)
function UnitIsPVPSanctuary()
end

---Checks if a specified unit is a player.
---@param unit string @ UnitId of the unit to check.
---@return boolean isTrue
---[View Documents](https://wow.gamepedia.com/API_UnitIsPlayer)
function UnitIsPlayer(unit)
end

---Checks if a specified unit is possessed.
---@param unit string @ UnitId of the unit to check.
---@return boolean isTrue
---[View Documents](https://wow.gamepedia.com/API_UnitIsPossessed)
function UnitIsPossessed(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsQuestBoss)
function UnitIsQuestBoss()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsRaidOfficer)
function UnitIsRaidOfficer()
end

---Returns whether the specified unit is from the player's own realm (or, equivalently, a linked Connected Realm).
---@param unit string @ unitId of a unit to query.
---@return number sameServer
---[View Documents](https://wow.gamepedia.com/API_UnitIsSameServer)
function UnitIsSameServer(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsTapDenied)
function UnitIsTapDenied()
end

---Indicates whether a unit is trivial.
---@param unit string @ The UnitId (e.g., target)
---@return boolean isTrivial
---[View Documents](https://wow.gamepedia.com/API_UnitIsTrivial)
function UnitIsTrivial(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsUnconscious)
function UnitIsUnconscious()
end

---Returns true if the two specified units are the same, false otherwise.
---@param unit1 unknown @ UnitId - The first unit to query (e.g. party1, pet, player)
---@param unit2 unknown @ UnitId - The second unit to compare it to (e.g. target)
---@return boolean isSame
---[View Documents](https://wow.gamepedia.com/API_UnitIsUnit)
function UnitIsUnit(unit1, unit2)
end

---Indicates whether the game client (rather than the player) can see unit.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsVisible)
function UnitIsVisible()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitIsWildBattlePet)
function UnitIsWildBattlePet()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitLeadsAnyGroup)
function UnitLeadsAnyGroup()
end

---Returns the unit's level.
---@param unit string @ The unitId to get information from. (e.g. player, target)
---@return number level
---[View Documents](https://wow.gamepedia.com/API_UnitLevel)
function UnitLevel(unit)
end

---Returns the name and realm of the specified unit.
---@param unit string @ The UnitId to query (e.g. player, party2, pet, target etc.)
---@return string namestring realm
---[View Documents](https://wow.gamepedia.com/API_UnitName)
function UnitName(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitNameUnmodified)
function UnitNameUnmodified()
end

---Returns true if a units' nameplate should appear in a widgets-only mode.
---@param unit string
---@return boolean nameplateShowsWidgetsOnly
---[View Documents](https://wow.gamepedia.com/API_UnitNameplateShowsWidgetsOnly)
function UnitNameplateShowsWidgetsOnly(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitNumPowerBarTimers)
function UnitNumPowerBarTimers()
end

---Returns 1 if unit is on a taxi, nil otherwise.
---@param unit string @ the Unit ID to check.
---@return boolean onTaxi
---[View Documents](https://wow.gamepedia.com/API_UnitOnTaxi)
function UnitOnTaxi(unit)
end

---Returns the unit's conjoined title and name.
---@param unit string @ visible unit to retrieve the name and title of.
---@return string titleName
---[View Documents](https://wow.gamepedia.com/API_UnitPVPName)
function UnitPVPName(unit)
end

---Returns the reason if a unit is NOT in the same phase.
---@param unit string @ UnitId
---@return unknown reason
---[View Documents](https://wow.gamepedia.com/API_UnitPhaseReason)
function UnitPhaseReason(unit)
end

---Return whether the unit is controlled by a player or an NPC.
---@param unit string @ The UnitId to select as a target. Using a unit's name as the unit ID only works if the unit is a member of your party.
---@return boolean UnitIsPlayerControlled
---[View Documents](https://wow.gamepedia.com/API_UnitPlayerControlled)
function UnitPlayerControlled(unit)
end

---Returns whether a unit is another player in your party or the pet of another player in your party.
---@param unit string @ unitId) - Unit to check for party membership.
---@return number inMyParty
---[View Documents](https://wow.gamepedia.com/API_UnitPlayerOrPetInParty)
function UnitPlayerOrPetInParty(unit)
end

---Returns 1 if the unit is in your raid group, nil otherwise.
---@param unit unknown
---@return unknown isTrue
---[View Documents](https://wow.gamepedia.com/API_UnitPlayerOrPetInRaid)
function UnitPlayerOrPetInRaid(unit)
end

---Returns the position of a unit within the current world area. Does not work in raids, dungeons and competitive instances.
---@param unit string @ UnitId for which the position is returned. Does not work with all unit types. Works with player, partyN or raidN as unit type. In particular, it does not work on pets or any unit not in your group.
---@return number posYnumber posXnumber posZnumber instanceID
---[View Documents](https://wow.gamepedia.com/API_UnitPosition)
function UnitPosition(unit)
end

---Returns the current power of the specified unit.
---@param unitToken string @ UnitId
---@param powerType unknown @ Enum.PowerType? - Type of resource (mana/rage/energy/etc) to query
---@param unmodified boolean @ ? - Return the higher precision internal value (for graphical use only)
---@return number power
---[View Documents](https://wow.gamepedia.com/API_UnitPower)
function UnitPower(unitToken, powerType, unmodified)
end

---Needs summary.
---@param unitToken string @ UnitId
---@return number barID
---[View Documents](https://wow.gamepedia.com/API_UnitPowerBarID)
function UnitPowerBarID(unitToken)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitPowerBarTimerInfo)
function UnitPowerBarTimerInfo()
end

---Needs summary.
---@param powerType number @ Enum.PowerType
---@return number displayMod
---[View Documents](https://wow.gamepedia.com/API_UnitPowerDisplayMod)
function UnitPowerDisplayMod(powerType)
end

---Returns the maximum power of the specified unit.
---@param unitToken string @ UnitId
---@param powerType unknown @ Enum.PowerType? - Type of resource (mana/rage/energy/etc) to query
---@param unmodified boolean @ ? - Return the higher precision internal value (for graphical use only)
---@return number maxPower
---[View Documents](https://wow.gamepedia.com/API_UnitPowerMax)
function UnitPowerMax(unitToken, powerType, unmodified)
end

---Returns a number corresponding to the power type (e.g., mana, rage or energy) of the specified unit.
---@param unit string @ unitId) - The unit whose power type to query.
---@param index number @ Optional value for classes with multiple powerTypes. If not specified, information about the first (currently active) power type will be returned.
---@return number powerTypestring powerTokennumber altRnumber altGnumber altB
---[View Documents](https://wow.gamepedia.com/API_UnitPowerType)
function UnitPowerType(unit, index)
end

---Returns whether the unit is a flag/orb carrier or cart runner.
---@param unit string @ UnitId
---@return unknown classification
---[View Documents](https://wow.gamepedia.com/API_UnitPvpClassification)
function UnitPvpClassification(unit)
end

---Returns the difference between the units' current level and the level at which fixed-level quests are of trivial difficulty.
---@param unit string
---@return number levelRange
---[View Documents](https://wow.gamepedia.com/API_UnitQuestTrivialLevelRange)
function UnitQuestTrivialLevelRange(unit)
end

---Returns the difference between the units' current level and the level at which scaling-level quests are of trivial difficulty.
---@param unit string
---@return number levelRange
---[View Documents](https://wow.gamepedia.com/API_UnitQuestTrivialLevelRangeScaling)
function UnitQuestTrivialLevelRangeScaling(unit)
end

---Returns the race of the specified unit.
---@param unit string @ UnitId
---@return string raceNamestring raceFilenumber raceID
---[View Documents](https://wow.gamepedia.com/API_UnitRace)
function UnitRace(unit)
end

---Returns the unit's ranged attack power and modifiers.
---@param unit string @ The UnitId to get information from. (Likely only works for player and pet)
---@return number basenumber posBuffnumber negBuff
---[View Documents](https://wow.gamepedia.com/API_UnitRangedAttackPower)
function UnitRangedAttackPower(unit)
end

---Returns the unit's ranged damage and speed.
---@param player unknown
---@return number speednumber lowDmgnumber hiDmgnumber posBuffnumber negBuffnumber percent
---[View Documents](https://wow.gamepedia.com/API_UnitRangedDamage)
function UnitRangedDamage(player)
end

---Determine the reaction of the specified unit to the other specified unit.
---@param unit string @ The UnitId of the unit whose reaction is to be determined.
---@param otherUnit string @ The UnitId of the unit towards whom the reaction is to be measured.
---@return number reaction
---[View Documents](https://wow.gamepedia.com/API_UnitReaction)
function UnitReaction(unit, otherUnit)
end

---Returns information about the player's relation to the specified unit's realm.
---@param unit string @ unit to query the realm relationship with.
---@return number realmRelationship
---[View Documents](https://wow.gamepedia.com/API_UnitRealmRelationship)
function UnitRealmRelationship(unit)
end

---Returns RGBA values for the color of the unit's selection (the outline around and the circle underneath a player character or an NPC).
---@param UnitId string @ The unit whose selection colour should be returned.
---@param useExtendedColors boolean @ optional) - If true, a more appropriate colour of the unit's selection will be returned. For instance, if used on a dead hostile target, the default return will red (hostile), but the extended return will be grey (dead).
---@return number rednumber greennumber bluenumber alpha
---[View Documents](https://wow.gamepedia.com/API_UnitSelectionColor)
function UnitSelectionColor(UnitId, useExtendedColors)
end

---Returns a number corresponding to the type of the unit's selection (the outline around and the circle underneath a player character or an NPC).
---@param UnitId string @ The unit whose selection type should be returned.
---@param useExtendedColors boolean @ optional) - If true, a more appropriate type of the unit's selection will be returned. For instance, if used on a dead hostile target, the default return will be 0 (hostile), but the extended return will be 9 (dead).
---@return number type
---[View Documents](https://wow.gamepedia.com/API_UnitSelectionType)
function UnitSelectionType(UnitId, useExtendedColors)
end

---Sets the player role in the group as Tank, Dps, Healer or None.
---@param target string @ The affected group member. i.e. player or player name
---@param role string @ The role for the player. (known values TANK, HEALER, DAMAGER, NONE)
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitSetRole)
function UnitSetRole(target, role)
end

---Returns the gender of the specified unit.
---@param unit string @ UnitId
---@return unknown gender
---[View Documents](https://wow.gamepedia.com/API_UnitSex)
function UnitSex(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitShouldDisplayName)
function UnitShouldDisplayName()
end

---Returns the current spell haste percentage for a unit.
---@param unit_or_name unknown
---@return number spellHastePercent
---[View Documents](https://wow.gamepedia.com/API_UnitSpellHaste)
function UnitSpellHaste(unit_or_name)
end

---Returns the amount of staggered damage on the unit.
---@param unit string @ unit to query the staggered damage of.
---@return number damage
---[View Documents](https://wow.gamepedia.com/API_UnitStagger)
function UnitStagger(unit)
end

---Returns info about one of the unit's stats (strength, agility, stamina, intellect, spirit).
---@param unit string @ The UnitId to get information from. (Only works for player and pet. Will work on target as long as it is equal to player)
---@param statID number @ An internal id corresponding to one of the stats.
---@return number statnumber effectiveStatnumber posBuffnumber negBuff
---[View Documents](https://wow.gamepedia.com/API_UnitStat)
function UnitStat(unit, statID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitSwitchToVehicleSeat)
function UnitSwitchToVehicleSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitTargetsVehicleInRaidUI)
function UnitTargetsVehicleInRaidUI()
end

---Needs summary.
---@param unit string @ UnitId of the player or pet whose threat to request.
---@param mobUnit string @ UnitId of the NPC whose threat table to query.
---@return number percentage
---[View Documents](https://wow.gamepedia.com/API_UnitThreatPercentageOfLead)
function UnitThreatPercentageOfLead(unit, mobUnit)
end

---Returns the threat status of one unit against another.
---@param unit string @ UnitId of the player or pet whose threat to request.
---@param mobUnit string @ ? - UnitId of the NPC whose threat table to query.
---@return number status
---[View Documents](https://wow.gamepedia.com/API_UnitThreatSituation)
function UnitThreatSituation(unit, mobUnit)
end

---Whether a unit should be treated as if it was an actual player.
---@param unit string
---@return boolean treatAsPlayer
---[View Documents](https://wow.gamepedia.com/API_UnitTreatAsPlayerForDisplay)
function UnitTreatAsPlayerForDisplay(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitTrialBankedLevels)
function UnitTrialBankedLevels()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitTrialXP)
function UnitTrialXP()
end

---Checks if a specified unit is currently in a vehicle, including transitioning between seats.
---@param unit string @ UnitId of the unit to check.
---@return boolean isTrue
---[View Documents](https://wow.gamepedia.com/API_UnitUsingVehicle)
function UnitUsingVehicle(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitVehicleSeatCount)
function UnitVehicleSeatCount()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitVehicleSeatInfo)
function UnitVehicleSeatInfo()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitVehicleSkin)
function UnitVehicleSkin()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnitWeaponAttackPower)
function UnitWeaponAttackPower()
end

---Needs summary.
---@param unit string @ UnitId
---@return number uiWidgetSet
---[View Documents](https://wow.gamepedia.com/API_UnitWidgetSet)
function UnitWidgetSet(unit)
end

---Return the current XP of a unit - only seems to work with player.
---@param unit string @ The UnitId to select as a target.
---@return number XP
---[View Documents](https://wow.gamepedia.com/API_UnitXP)
function UnitXP(unit)
end

---Return the max XP of a unit - only seems to work with player.
---@param unit string @ The UnitId to select as a target.
---@return number XP
---[View Documents](https://wow.gamepedia.com/API_UnitXPMax)
function UnitXPMax(unit)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UnlearnSpecialization)
function UnlearnSpecialization()
end

---Pays for, and unlocks the Void Storage [1]
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnlockVoidStorage)
function UnlockVoidStorage()
end

---Unmutes a sound file.
---@param soundFile_or_fileDataID unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_UnmuteSoundFile)
function UnmuteSoundFile(soundFile_or_fileDataID)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UpdateAddOnCPUUsage)
function UpdateAddOnCPUUsage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UpdateAddOnMemoryUsage)
function UpdateAddOnMemoryUsage()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UpdateInventoryAlertStatus)
function UpdateInventoryAlertStatus()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UpdateWarGamesList)
function UpdateWarGamesList()
end

---When in windowed mode, updates the window. This also aligns it to the top of the screen and increases the size to max widowed size.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UpdateWindow)
function UpdateWindow()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UpgradeItem)
function UpgradeItem()
end

---Perform the action in the specified action slot.
---@param slot number @ The action action slot to use.
---@param checkCursor number @ optional) - Can be 0, 1, or nil. Appears to indicate whether the action button was clicked (1) or used via hotkey (0); probably involved in placing skills/items in the action bar after they've been picked up.  I can confirm this.  If you pass 0 for checkCursor, it will use the action regardless of whether another item/skill is on the cursor.  If you pass 1 for checkCursor, it will replace the spell/action on the slot with the new one.
---@param onSelf number @ optional) - Can be 0, 1, or nil. If present and 1, then the action is performed on the player, not the target.  If true is passed instead of 1, Blizzard produces a Lua error.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UseAction)
function UseAction(slot, checkCursor, onSelf)
end

---Use an item from a container. If Merchant window is open, this will sell the item.
---@param bagID number @ The bag id, where the item to use is located
---@param slot number @ The slot in the bag, where the item to use is located
---@param target string @ optional) - unit the item should be used on. If omitted, defaults to target if a the item must target someone.
---@param reagentBankAccessible boolean @ optional) - This indicates, for cases where no target is given, if the item reagent bank is accessible (so bank frame is shown and switched to the reagent bank tab).
---@return void
---[View Documents](https://wow.gamepedia.com/API_UseContainerItem)
function UseContainerItem(bagID, slot, target, reagentBankAccessible)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UseHearthstone)
function UseHearthstone()
end

---Use an item in a specific inventory slot.
---@param slotID unknown @ The inventory slot ID
---@return void
---[View Documents](https://wow.gamepedia.com/API_UseInventoryItem)
function UseInventoryItem(slotID)
end

---Uses an item, optionally on a specified target.
---@param name string @ name of the item to use.
---@param target string @ optional) - unit to use the item on, defaults to target for items that can be used on others.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UseItemByName)
function UseItemByName(name, target)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UseQuestLogSpecialItem)
function UseQuestLogSpecialItem()
end

---Use a toy in player's toybox.
---@param itemId number @ itemId of a toy.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UseToy)
function UseToy(itemId)
end

---Use a toy in player's toybox.
---@param name string @ localized?) name of a toy.
---@return void
---[View Documents](https://wow.gamepedia.com/API_UseToyByName)
function UseToyByName(name)
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_UseWorldMapActionButtonSpellOnQuest)
function UseWorldMapActionButtonSpellOnQuest()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimDecrement)
function VehicleAimDecrement()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimDownStart)
function VehicleAimDownStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimDownStop)
function VehicleAimDownStop()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimGetAngle)
function VehicleAimGetAngle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimGetNormAngle)
function VehicleAimGetNormAngle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimGetNormPower)
function VehicleAimGetNormPower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimIncrement)
function VehicleAimIncrement()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimRequestAngle)
function VehicleAimRequestAngle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimRequestNormAngle)
function VehicleAimRequestNormAngle()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimSetNormPower)
function VehicleAimSetNormPower()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimUpStart)
function VehicleAimUpStart()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleAimUpStop)
function VehicleAimUpStop()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleExit)
function VehicleExit()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehicleNextSeat)
function VehicleNextSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_VehiclePrevSeat)
function VehiclePrevSeat()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ViewGuildRecipes)
function ViewGuildRecipes()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_WarGameRespond)
function WarGameRespond()
end

---@return void
---[View Documents](https://wow.gamepedia.com/API_WithdrawGuildBankMoney)
function WithdrawGuildBankMoney()
end

---Returns the absolue value of the number.
---@param num number @ number to return numeric (absolute) value of.
---@return number absoluteValue
---[View Documents](https://wow.gamepedia.com/API_abs)
function abs(num) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_acos)
function acos() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_asin)
function asin() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_atan)
function atan() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_atan2)
function atan2() end

---ceil(value) returns the ceiling of the value (the next highest whole number) i.e. rounds value up
---@param n unknown
---@return unknown int
---[View Documents](https://wow.gamepedia.com/API_ceil)
function ceil(n) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_cos)
function cos() end

---date() is a reference to the os.date function. It is put in the global table as the os module is not available.
---@param format unknown
---@param time unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_date)
function date(format, time) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_debuglocals)
function debuglocals() end

---Starts the profiling timer.
---@return void
---[View Documents](https://wow.gamepedia.com/API_debugprofilestart)
function debugprofilestart() end

---Returns the amount of time since profiling was started.
---@return number elapsedMilliseconds
---[View Documents](https://wow.gamepedia.com/API_debugprofilestop)
function debugprofilestop() end

---Output a string representation of the current calling stack, similar to the standard Lua debug.traceback() call, which is not present in WoW.
---@param coroutine unknown @ Thread - The thread with the stack to examine (default - the calling thread)
---@param start number @ the stack depth at which to start the stack trace (default 1 - the function calling debugstack, or the top of coroutine's stack)
---@param count1 number @ the number of functions to output at the top of the stack (default 12)
---@param count2 number @ the number of functions to output at the bottom of the stack (default 10)
---@return string description
---[View Documents](https://wow.gamepedia.com/API_debugstack)
function debugstack(coroutine, start, count1, count2) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_deg)
function deg() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_difftime)
function difftime() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_exp)
function exp() end

---Returns a random number within the specified interval.
---@param low number @ lower integer limit on the returned random value.
---@param high number @ upper integer limit on the returned random value.
---@return number rand
---[View Documents](https://wow.gamepedia.com/API_fastrandom)
function fastrandom(low, high) end

---floor(value) returns the floor of the value (essentially it returns the whole part of the value) i.e. rounds value down
---@param value unknown
---@return unknown val
---[View Documents](https://wow.gamepedia.com/API_floor)
function floor(value) end

---Taints the current execution path.
---@return void
---[View Documents](https://wow.gamepedia.com/API_forceinsecure)
function forceinsecure() end

---Apply the function f to the elements of the table passed. On each iteration the function f is passed the key-value pair of that element in the table.
---@param tab unknown
---@param func unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_foreach)
function foreach(tab, func) end

---From TableLibraryTutorial of lua-users.org.
---@param table unknown
---@param f unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_foreachi)
function foreachi(table, f) end

---Create a formatted string from the format and arguments provided. This is similar to the printf(format,...) function in C. An additional option %q returns string in a format that can safely be read back by Lua interpreter (puts quotes around a string and escapes special characters), but used by World of Warcraft to preparse all strings before saving them between sessions.
---@param formatstring unknown
---@param e1 unknown
---@param e2 unknown
---@param ... unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_format)
function format(formatstring, e1, e2, ...) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_frexp)
function frexp() end

---Returns the amount of memory in use by Lua (in kilobytes).
---@return number memoryInUse
---[View Documents](https://wow.gamepedia.com/API_gcinfo)
function gcinfo() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_geterrorhandler)
function geterrorhandler() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_getfenv)
function getfenv() end

---This is used to determine the size of a table. The size of a table is discussed at the top of this page.
---@param table unknown
---@return unknown size
---[View Documents](https://wow.gamepedia.com/API_getn)
function getn(table) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_gmatch)
function gmatch() end

---This is a very powerful function and can be used in multiple ways. Used simply it can replace all instances of the pattern provided with the replacement. A pair of values is returned, the modified string and the number of substitutions made. The optional fourth argument n can be used to limit the number of substitutions made:
---@param s unknown
---@param pattern unknown
---@param replace unknown
---@param n unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_gsub)
function gsub(s, pattern, replace, n) end

---Creates a secure post hook for the specified function. Your hook will be called with the same arguments after the original call is performed.
---@param table unknown @ Optional Table - Table to hook the functionName key in; if omitted, defaults to the global table (_G).
---@param functionName string @ name of the function being hooked.
---@param hookfunc unknown @ Function - your hook function.
---@return void
---[View Documents](https://wow.gamepedia.com/API_hooksecurefunc)
function hooksecurefunc(table, functionName, hookfunc) end

---Determines whether the current execution path is secure.
---@return boolean secure
---[View Documents](https://wow.gamepedia.com/API_issecure)
function issecure() end

---Determines whether the given globally-accessible variable is secure.  A variable in this context could be any of the basic lua types such as functions or userdata.
---@param table table @ ?Optional.  Could be nil. - table to check the the key in; if omitted, defaults to the globals table (_G).
---@param variable string @ string key to check the taint of. Numbers will be converted to a string; other types will throw an error.
---@return boolean isSecure, string taint
---[View Documents](https://wow.gamepedia.com/API_issecurevariable)
function issecurevariable(table, variable) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_ldexp)
function ldexp() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_log)
function log() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_log10)
function log10() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_max)
function max() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_min)
function min() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_mod)
function mod() end

---Creates a zero-size userdata object, optionally with a sharable empty metatable.
---@param boolean_or_otherproxy unknown
---@return unknown obj
---[View Documents](https://wow.gamepedia.com/API_newproxy)
function newproxy(boolean_or_otherproxy) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_rad)
function rad() end

---Returns a random number within the specified interval.
---@param low number @ lower integer limit on the returned random value.
---@param high number @ upper integer limit on the returned random value.
---@return number rand
---[View Documents](https://wow.gamepedia.com/API_random)
function random(low, high) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_scrub)
function scrub() end

---Calls the specified function without propagating taint to the caller.
---@param func_or_functionName unknown
---@param ... any @ any number of arguments to pass the function.
---@return any ...
---[View Documents](https://wow.gamepedia.com/API_securecall)
function securecall(func_or_functionName, ...) end

---Sets the function to be called when WoW encounters an error.
---@param errFunction unknown @ Function - The function to call when an error occurs. The function is passed a single argument containing the error message.
---@return void
---[View Documents](https://wow.gamepedia.com/API_seterrorhandler)
function seterrorhandler(errFunction) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_sin)
function sin() end

---Sort the array portion of a table in-place (i.e. alter the table).
---@param table table @ Table the array portion of which you wish to sort.
---@param compFunc unknown @ Optional Function - Comparison operator function; the function is passed two arguments (a, b) from the table, and should return a boolean value indicating whether a should appear before b in the sorted array. If omitted, the following comparison function is used:
---@return void
---[View Documents](https://wow.gamepedia.com/API_sort)
function sort(table, compFunc) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_sqrt)
function sqrt() end

---Returns the numerical code of a character in a string.
---@param s string @ The string to get the numerical code from
---@param index number @ Optional argument specifying the index of the character to get the byte value of
---@param endIndex number @ Optional argument specifying the index of the last character to return the value of
---@return number indexByte
---[View Documents](https://wow.gamepedia.com/API_strbyte)
function strbyte(s, index, endIndex) end

---Generate a string representing the character codes passed as arguments. Numerical codes are not necessarily portable across platforms.
---@param i1 unknown
---@param i2 unknown
---@param ... unknown
---@return unknown s
---[View Documents](https://wow.gamepedia.com/API_strchar)
function strchar(i1, i2, ...) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_strcmputf8i)
function strcmputf8i() end

---@return void
---[View Documents](https://wow.gamepedia.com/API_strconcat)
function strconcat() end

---Returns a pair of numbers representing the start and end of the first occurrence of the pattern within the string, if it exists.
---@param string string @ The string to examine.
---@param pattern string @ The pattern to search for within string.  This pattern is similar to Unix regular expressions, but is not the same -- see Lua Pattern matching for more details.
---@param initpos number @ Index of the character within string to begin searching.  As is usual for Lua string functions, 1 refers to the first character of the string, 2 to the second, etc.  -1 refers to the last character of the string, -2 to the second last, etc.  If this argument is omitted, it defaults to 1; i.e., the search begins at the beginning of string.
---@param plain boolean @ Whether or not to disable regular expression matching. Defaults to false, so regex matching is usually enabled.
---@return number startPos, number endPos
---[View Documents](https://wow.gamepedia.com/API_strfind)
function strfind(string, pattern, initpos, plain) end

---Joins strings together with a delimiter.
---@param delimiter string @ The delimiter to insert between each string being joined.
---@param string1 unknown
---@param string2 unknown
---@param ... unknown
---@return string joinedString
---[View Documents](https://wow.gamepedia.com/API_strjoin)
function strjoin(delimiter, string1, string2, ...) end

---Return the length, in bytes, of the string passed.
---@param s unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_strlen)
function strlen(s) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_strlenutf8)
function strlenutf8() end

---Gets a string with all lower case letters instead of upper case.
---@param s string @ The string to convert
---@return string lowerS
---[View Documents](https://wow.gamepedia.com/API_strlower)
function strlower(s) end

---Extract substrings by matching against a pattern.
---@param string string @ The string to examine.
---@param pattern string @ The pattern to search for within string.  This pattern is similar to Unix regular expressions, but is not the same -- see Lua Pattern matching for more details.
---@param initpos number @ Index of the character within string to begin searching.  As is usual for Lua string functions, 1 refers to the first character of the string, 2 to the second, etc.  -1 refers to the last character of the string, -2 to the second last, etc.  If this argument is omitted, it defaults to 1; i.e., the search begins at the beginning of string.
---@return unknown match1, unknown match2, unknown ...
---[View Documents](https://wow.gamepedia.com/API_strmatch)
function strmatch(string, pattern, initpos) end

---Generate a string which is n copies of the string passed concatenated together.
---@param s unknown
---@param n unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_strrep)
function strrep(s, n) end

---Reverses all of the characters in a string.
---@param string unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_strrev)
function strrev(string) end

---Splits a string using a delimiter (optionally: into a specified number of pieces)
---@param delimiter string @ Characters (bytes) that will be interpreted as delimiter characters (bytes) in the string.
---@param subject string @ String to split.
---@param pieces number @ optional) - Maximum number of pieces to make (the last piece would contain the rest of the string); by default, an unbounded number of pieces is returned.
---@return void
---[View Documents](https://wow.gamepedia.com/API_strsplit)
function strsplit(delimiter, subject, pieces) end

---Return a substring of the string passed. The substring starts at i. If the third argument j is not given, the substring will end at the end of the string. If the third argument is given, the substring ends at and includes j.
---@param s unknown
---@param i unknown
---@param j unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_strsub)
function strsub(s, i, j) end

---Trim characters (chars), off the left and right of str
---@param str string @ The input string.
---@param chars string @ A list of characters to remove from the left and right of str.
---@return string newstr
---[View Documents](https://wow.gamepedia.com/API_strtrim)
function strtrim(str, chars) end

---Make all the lower case characters in a string upper case.
---@param s unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_strupper)
function strupper(s) end

---@return void
---[View Documents](https://wow.gamepedia.com/API_tan)
function tan() end

---Returns a timestamp for the specified time or the current Unix time.
---@param dateTable table @ ? - Table specifying a date/time to return the timestamp of; if omitted, a timestamp for the current time (per the local clock) will be returned. This table must have fields year, month, and day, and may have fields hour, min, sec, and isdst. For a description of these fields, see the Lua reference manual.
---@return number timestamp
---[View Documents](https://wow.gamepedia.com/API_time)
function time(dateTable) end

---From TableLibraryTutorial of lua-users.org.
---@param table unknown
---@param pos unknown
---@param value unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_tinsert)
function tinsert(table, pos, value) end

---From TableLibraryTutorial of lua-users.org.
---@param table unknown
---@param pos unknown
---@return void
---[View Documents](https://wow.gamepedia.com/API_tremove)
function tremove(table, pos) end

---Wipes a table of all contents.
---@param table table @ The table to be cleared.
---@return table table
---[View Documents](https://wow.gamepedia.com/API_wipe)
function wipe(table) end
