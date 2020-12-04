select ad,length (ad) as uzunluk from musteri where id=1;
select substr('Yiðit Can Tüfekçi',7,4) from dual;
select substr('Yiðit Can Tüfekçi',7) from dual;
select instr('Yiðit Can Tüfekçi','ð') from dual;
select instr('Yiðit Can Tüfekçi','i',1,3) from dual;
select musterino, lpad(adres,50,'_') as adres from musteri_adres;
select musterino, rpad(adres,23,'Turkey') as adres from musteri_adres;
select trim('i' from 'iiiYiðit Can Tüfekçiiiii') from dual; --select trim(trailing 'i' from 'iiiYiðit Can Tüfekçiiiii') from dual;
select trim(leading 'i' from 'iiiYiðit Can Tüfekçiiiii') from dual;
select trim(both 'i' from 'iiiYiðit Can Tüfekçiiiii') from dual;
select replace ('iiiYiðit Can Tüfekçiiiii','i') from dual;
select replace ('iiiYiðit Can Tüfekçiiiii','i','!') from dual;
select email,replace(email,'@') from musteri;
select rank() over(partition by musterino order by tarih desc) as rank,musterino,sepetfiyat from siparis;
select no,musterino,tarih,decode(durum,'0','Beklemede','1','Kabul Edildi','2','Kabul Edildi','3','Teslim Edildi','4','Ýptal Edildi') SiparisDurumu from siparis;
select '10.08.2020', trunc(to_date('10.08.2020'),'MONTH') from dual; 
select sysdate, round(sysdate,'Q') from dual; 





