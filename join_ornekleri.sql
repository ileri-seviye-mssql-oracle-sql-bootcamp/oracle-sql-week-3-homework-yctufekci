SELECT * 
FROM MUSTERI 
INNER JOIN SIPARIS ON muster�.�d=s�par�s.muster�no 
WHERE SIPARIS.DURUM=1;


SELECT MUSTERI.*,s�par�s.no,s�par�s.sepetf�yat 
FROM MUSTERI 
INNER JOIN SIPARIS ON muster�.�d=s�par�s.muster�no 
INNER JOIN SIPARIS_DURUM ON SIPARIS_DURUM.DURUMKODU=s�par�s.durum AND SIPARIS_DURUM.ACIKLAMA='Teslim Edildi';


SELECT M.ID,M.AD,M.SOYAD,SD.ACIKLAMA,COUNT(S.NO) AS SIPARIS_SAYISI
FROM MUSTERI M
INNER JOIN SIPARIS S ON M.ID=s.muster�no
INNER JOIN SIPARIS_DURUM SD ON S.DURUM=SD.DURUMKODU
GROUP BY M.ID,M.AD,M.SOYAD,SD.ACIKLAMA
ORDER BY M.ID;

SELECT u.ad,U.FIYAT FROM URUN U 
JOIN (SELECT M.ID,M.AD,M.SOYAD,SD.URUNNO AS URUNKODU,COUNT(S.NO) AS SIPARIS_SAYISI
FROM MUSTERI M
INNER JOIN SIPARIS S ON M.ID=s.muster�no
INNER JOIN SIPARIS_DETAY SD ON S.NO=SD.SIPARISNO
GROUP BY M.ID,M.AD,M.SOYAD,SD.URUNNO
)T
ON T.URUNKODU=U.NO 
WHERE U.FIYAT > 25;


