function vectFinal =  func_FME (vecdir,vecesq,vectcent,x,y,corrent,permnucleo,nespiras,argapesq,argpdir)
#area contante
Area = x*y;
#retorna a reatancia
Rdir = Reatancia(vecdir,Area,argpdir,permnucleo,0)
Resq = Reatancia(vecesq,Area,argapesq,permnucleo,0)
Rcent = Reatancia(vectcent,Area,0,permnucleo,1)
Rarpgdir =Reatancia(vecdir,argpdir,0,1,5)
Rarpgesq =Reatancia(vecesq,argapesq,0,1,5)
i= corrent;

ni=nespiras*i;
#debugin



Rtotal = power((1/(Rdir+Rarpgdir)+1/(Resq+Rarpgesq)),-1)+Rcent

fluxtotal = ni/Rtotal
#fluxdir = (1/(Rarpgdir+Rdir)/((1/(Rarpgdir+Rdir))+(1/(Rarpgesq+Resq)))*fluxtotal
#fluxdesqd = (1/(Rarpgesq+Resq)/((1/(Rarpgdir+Rdir))+(1/(Rarpgesq+Resq)))*fluxtotal


#vectFinal = [fluxtotal,fluxdir,fluxdesqd]
endfunction
