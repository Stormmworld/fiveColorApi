IF(NOT EXISTS(Select Id FROM [Sets] WHERE [Code] = '5CP'))
	INSERT INTO [dbo].[Sets] ([Name],[Code],[ReleaseDate],[Border],[type]) VALUES ('5 Color Promotional','5CP','','black','promo')
IF(NOT EXISTS(Select Id FROM [Cards] WHERE [Name] = 'Mox Crystal'))
	BEGIN
		INSERT INTO [dbo].[Cards] ([id],[SetFk],[RarityFk],[Power],[Toughness],[Text],[ImageUrl],[Name]) VALUES (-1,(Select Id FROM [Sets] WHERE [Code] = '5CP'),9,null,null,'Add 1 colorless mana to your mana pool. Tapping this artifact can be played as an interrupt','','Mox Crystal')
		Declare @MoxCrystalId bigint = SCOPE_IDENTITY()
		INSERT INTO [dbo].[CardManaProduction] ([CardFk],[ColorFk],[Quantity]) VALUES (@MoxCrystalId,(SELECT [ID] FROM [dbo].[Colors] WHERE [Color] = 'Colorless'),1)
	END

DECLARE @stormDeckId bigint
Select @stormDeckId = Id From Decks Where [Name] = 'Storm: 5-Color'
IF(Exists(Select Id From Decks Where [Name] = 'Storm: 5-Color'))
	BEGIN
		Delete From DeckCards Where DeckFk = @stormDeckId
	END
ELSE
	BEGIN
		INSERT INTO [dbo].[Decks] ([Name]) VALUES ('storm: 5-Color')
		SET @stormDeckId = SCOPE_IDENTITY()
	END

INSERT INTO [dbo].[DeckCards]([DeckFk],[CardFk])
     VALUES (@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Black Lotus'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Mox Pearl'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Mox Sapphire'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Mox Emerald'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Mox Jet'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Mox Ruby'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Mox Crystal'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Demonic Tutor'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Time Walk'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Timetwister'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tropical Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tropical Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tropical Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tropical Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Volcanic Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Volcanic Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Volcanic Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Volcanic Island'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tundra'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tundra'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tundra'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Tundra'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Underground Sea'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Underground Sea'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Underground Sea'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = 'Underground Sea'))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))
	       ,(@stormDeckId ,(Select top 1 Id from Cards Where [Name] = ''))


