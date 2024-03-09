function vectFinal =  func_FME (vecdir,vecesq,vectcent,x,y,corrent,permnucleo,nespiras,argapesq,argpdir)
% seting defaul/debuggin values en M
vecdir = (3*30 + 3.5*6)*power(10,-3);
vecesq = (3*30 + 3.5*6)*power(10,-3);
vectcent = (30*1+ 3.5*2)*power(10,-3);
x = 7*power(10,-3);
y = 5*power(10,-3);
corrent =8;
permnucleo =2500;
nespiras =250;
argapesq = 0.07*power(10,-3); %m
argpdir = 0.05*power(10,-3); %m

#area contante
Area = x*y;
#retorna a reatancia
Rdir = Reatancia(vecdir,Area,argpdir,permnucleo,0);
Resq = Reatancia(vecesq,Area,argapesq,permnucleo,0);
Rcent = Reatancia(vectcent,Area,0,permnucleo,1);
%air gap
Rarpgdir =Reatancia(argpdir,Area,0,1,5);
Rarpgesq =Reatancia(argapesq,Area,0,1,5);
%corrente e NI
i= corrent;
ni=nespiras*i;


%calculo do total
Rtotal = power((1/(Rdir+Rarpgdir)+1/(Resq+Rarpgesq)),-1)+Rcent

fluxtotal = ni/Rtotal;
% Calculando fluxo direito
fluxdir = (1/(Rarpgdir+Rdir)/((1/(Rarpgdir+Rdir))+(1/(Rarpgesq+Resq))))*fluxtotal;

% Calculando fluxo esquerdo
fluxdesqd = (1/(Rarpgesq+Resq)/((1/(Rarpgdir+Rdir))+(1/(Rarpgesq+Resq))))*fluxtotal;
%resoltado finais en Ft=Fdir+Fesq
vectFinal = [fluxtotal,fluxdir,fluxdesqd];
endfunction
