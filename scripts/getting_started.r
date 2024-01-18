####ymaps####
#version: SEE version.r
#authors: Mats Söderström (SLU), Kristin Persson (SLU), Henrik Stadig (Entorp lantbruk)
#Before use: read terms.r
#########################

##Upplägg

#1.	I filen scripts\\1_settings.r görs alla ändringar (sökvägar, kolumnnamn etc). 
#Övriga skript ska aldrig behöva öppnas utan körs från detta huvudskript. 
#R-paket som  behövs men inte finns installerade kommer att installeras och en 
#mapp kommer skapas under ”working directory” dit utdata exporteras.

#2.	vegetationsindex-raster ligger i mappen serverdata

#3.	Shapefil med blockgräns ligger i mappen userdata. 

#4. yield.mean är en siffra (fältets medelskörd i kg ha-1) som användaren specificerar.



##Gör så här
# 1. Ändra till egna settings (sökvägar, medelskörd et c) i filen scripts\\1_settings.r 
# 2. Kör hela skriptet scripts\\1_settings.r.
                            
                            