T = table(['M';'F';'M'],[45 45;41 32;40 34],{'NY';'CA';'MA'},[true;false;false]);

writetable(T,'myData.xls','Sheet',2,'Range','B2:F6');