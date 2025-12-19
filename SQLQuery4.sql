SELECT M.NamaMahasiswa, MK.NamaMK
FROM Mahasiswa M
CROSS JOIN MataKuliah MK;

SELECT D.NamaDosen, R.KodeRuangan 
FROM Dosen D
CROSS JOIN Ruangan R;

SELECT M.NamaMahasiswa, K.MataKuliahID
FROM Mahasiswa M
LEFT JOIN KRS K ON M.MahasiswaID = K.MahasiswaID;

--namamatkul jadwal hari--
SELECT MK.NamaMK, JK.Hari
FROM JadwalKuliah JK
LEFT JOIN MataKuliah MK  ON MK.MataKuliahID = JK.MataKuliahID;