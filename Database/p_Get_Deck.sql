USE [MTG]
GO
/****** Object:  StoredProcedure [dbo].[p_Get_Deck]    Script Date: 4/13/2018 8:33:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[p_Get_Deck] (@DeckId BIGINT = 1)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT 
		CAST(( 
			Select
				 a.[Name] '@Name'
				,(
					Select 
						c.id,
						c.ImageUrl,
						c.[Name],
						c.[Power],
						c.Toughness,
						(				 
							Select 
								e.[Type]
							From CardTypes d
							INNER JOIN [Types] e
							  on d.TypeFk = e.Id
							Where c.id = d.CardFk
							For xml raw('Type'),type 

						) 'Types',
						(				 
							Select 
								g.[SubType]
							From CardSubTypes f
							INNER JOIN [SubTypes] g
							  on f.SubTypeFk = g.Id
							Where c.id = f.CardFk
							For xml raw('SubType'),Type 

						) 'SubTypes',
						(
							Select 
								h.Quantity,
								i.Abbreviation--,
								--i.ImageUrl
							From CardManaProduction h
							inner join Colors i
							  on h.ColorFk = i.ID
							Where h.CardFk = c.id
							For xml raw('Mana'),Type 
						) 'ManaProduction'
					FROM DeckCards b
					INNER JOIN cards c
					 ON b.CardFk = c.id
					INNER JOIN CardTypes d
					  on c.id = d.CardFk
					INNER JOIN [Types] e
					  on d.TypeFk = e.Id
					where a.Id = b.DeckFk
					For xml raw('Card'),type 
				) 'Cards'
			FROM Decks a
			where a.Id = @DeckId
			For xml path ('Deck')
		) AS VARCHAR(MAX))
END
