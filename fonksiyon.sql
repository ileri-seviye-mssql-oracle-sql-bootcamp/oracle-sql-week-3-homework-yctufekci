select ad,length (ad) as uzunluk from musteri where id=1;
select substr('Yi�it Can T�fek�i',7,4) from dual;
select substr('Yi�it Can T�fek�i',7) from dual;
select instr('Yi�it Can T�fek�i','�') from dual;
select instr('Yi�it Can T�fek�i','i',1,3) from dual;
select musterino, lpad(adres,50,'_') as adres from musteri_adres;
select musterino, rpad(adres,23,'Turkey') as adres from musteri_adres;
select trim('i' from 'iiiYi�it Can T�fek�iiiii') from dual; --select trim(trailing 'i' from 'iiiYi�it Can T�fek�iiiii') from dual;
select trim(leading 'i' from 'iiiYi�it Can T�fek�iiiii') from dual;
select trim(both 'i' from 'iiiYi�it Can T�fek�iiiii') from dual;
select replace ('iiiYi�it Can T�fek�iiiii','i') from dual;
select replace ('iiiYi�it Can T�fek�iiiii','i','!') from dual;
select email,replace(email,'@') from musteri;
select rank() over(partition by musterino order by tarih desc) as rank,musterino,sepetfiyat from siparis;
select no,musterino,tarih,decode(durum,'0','Beklemede','1','Kabul Edildi','2','Kabul Edildi','3','Teslim Edildi','4','�ptal Edildi') SiparisDurumu from siparis;
select '10.08.2020', trunc(to_date('10.08.2020'),'MONTH') from dual; 
select sysdate, round(sysdate,'Q') from dual; 





