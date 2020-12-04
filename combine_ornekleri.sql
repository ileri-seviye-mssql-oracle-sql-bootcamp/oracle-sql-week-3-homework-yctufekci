--UNION
select kategoriadi as ad
from urun_kategori
UNION
select ad as ad
from urun 
order by ad;

--INTERSECT
select ad
from musteri 
where ID IN (
    select ID from musteri 
        INTERSECT
    select musterino from siparis
	);

--MINUS
Select * from musteri 
minus
select musteri.* 
from musteri INNER JOIN siparis on musteri.id=siparis.musterino;

--UNION ALL
SELECT * FROM URUN
UNION ALL
SELECT U.* FROM URUN U INNER JOIN siparis_detay SD ON SD.URUNNO=U.NO; 


