use KampusDB;

SELECT D.NamaDosen 
FROM Dosen D
JOIN MataKuliah MK
on D.DosenID = MK.DosenID
WHERE MK.NamaMK = 'Basis Data';

SELECT D.NamaDosen
FROM Dosen D
WHERE D.DosenID = (
	SELECT DosenID
	FROM MataKuliah
	WHERE NamaMK = 'Interaksi Manusia dan Komputer'
);

--cte tabel sementara
WITH MK_Dosen AS (
	SELECT D.* 
	FROM Dosen D
	JOIN MataKuliah MK
	on D.DosenID = MK.DosenID
)
SELECT * FROM MK_Dosen