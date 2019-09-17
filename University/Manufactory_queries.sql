USE Manufactory;

/* 23, 20, 28, 5, 6, 10, 14, 34, 19, 35 */

/* 23 */
SELECT DISTINCT SPJ.ProviderID FROM SPJ
WHERE SPJ.ItemID IN(
	SELECT SPJ.ItemID FROM SPJ
	WHERE SPJ.ProviderID IN (	
		SELECT DISTINCT SPJ.ProviderID FROM SPJ
			INNER JOIN P
			ON P.ItemID = SPJ.ItemID
		WHERE P.Color = 'Красный'
		)
	);

/* 20 */
SELECT DISTINCT P.Color FROM P
	INNER JOIN SPJ
	ON SPJ.ItemID = P.ItemID
WHERE SPJ.ProviderID = 'П1';

/* 28 */
SELECT DISTINCT SPJ.ProjectID FROM SPJ
WHERE SPJ.ProjectID NOT IN(
	SELECT SPJ.ProjectID FROM SPJ
		INNER JOIN(
			SELECT S.ProviderID FROM S
			WHERE S.City = 'Москва'
		) AS LondonProviders
		ON SPJ.ProviderID = LondonProviders.ProviderID
			INNER JOIN P
			ON P.ItemID = SPJ.ItemID
		WHERE P.Color = 'Красный'
	);

/* 5 */
SELECT P.Color, P.City FROM P;

/* 6 */
SELECT SPJ.ProviderID, SPJ.ItemID, SPJ.ProjectID FROM SPJ
	INNER JOIN P
	ON P.ItemID = SPJ.ItemID
		INNER JOIN S
		ON S.ProviderID = SPJ.ProviderID
			INNER JOIN J
			ON J.ProjectID = SPJ.ProjectID
WHERE P.City = S.City AND S.City = J.City;

/* 10 */
SELECT SPJ.ItemID FROM SPJ
WHERE SPJ.ProjectID IN(
		SELECT J.ProjectID FROM J
		WHERE J.City = 'Таллинн'
	) AND
	SPJ.ProviderID IN(
		SELECT S.ProviderID FROM S
		WHERE S.City = 'Таллинн'
	);

/* 14 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*/
SELECT DISTINCT SPJ1.ItemID, SPJ2.ItemID FROM SPJ AS SPJ1
	INNER JOIN SPJ AS SPJ2
	ON SPJ2.ProviderID != SPJ1.ProviderID
	WHERE SPJ1.ItemID != SPJ2.ItemID AND
		SPJ1.ItemID > SPJ2.ItemID
ORDER BY SPJ1.ItemID;


/* 34 */
SELECT DISTINCT SPJ.ItemID FROM SPJ
	INNER JOIN S
	ON S.ProviderID = SPJ.ProviderID
		INNER JOIN J
		ON J.ProjectID = SPJ.ProjectID
WHERE (S.City = 'Москва' OR
	J.City = 'Москва');

/* 19 */
SELECT DISTINCT SPJ.ProjectID FROM SPJ
	INNER JOIN J
	ON J.ProjectID = SPJ.ProjectID
WHERE SPJ.ProviderID = 'П1';

/* 35 */
SELECT DISTINCT SPJ1.ProviderID AS 'Not a provider', SPJ2.ItemID AS Item FROM SPJ AS SPJ1, SPJ AS SPJ2
WHERE SPJ1.ItemID NOT IN(
	SELECT SPJ3.ItemID FROM SPJ AS SPJ3
	WHERE SPJ3.ProviderID = SPJ2.ProviderID
)
ORDER BY SPJ1.ProviderID;