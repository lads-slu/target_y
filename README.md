(in Swedish) Upplägg just nu:
1. I filen scripts\1_settings.r görs alla ändringar (sökvägar, parametrar etc). Övriga skript ska aldrig behöva öppnas utan körs från detta huvudskript. R-paket som behövs men inte finns installerade kommer att installeras och en mapp kommer skapas under ”working directory” dit utdata exporteras.
2. Indata: Alla indata ska vara i referenssystemet Sweref99TM (epsg: 3006). Om man vill kan man välja att lägga alla indata och utdata i samma mapp och radera allt i denna mapp efter varje körning. Det ska finnas en tif-fil med indexet ndre75. ndre75-rastret ska vara i intervallet [0,1] och sdan multiplicerat med 255. ndre75=(b7-b5)/(b7+b5).
Det ska också finnas en shapefil med blockgräns.
4. Utdata: Två raster med beräknad skörd exporteras: 'yield.tif' (med klasser) samt yield_continuous.tif (kontinuerligt). Instruktioner och parametrar för att skala om rastren till kg per hektar exporteras som textfiler.
5. Gör så här: Ändra till egna settings (sökvägar, parametrar et c) i filen scripts\1_settings.r och ör hela skriptet.
