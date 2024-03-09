function Rfinal = Reatancia(vect,area,airgap,perdnucleo,efect)
%const
  perdar =(4*pi()*power(10,-7));
  %caminho medio do fluxo
  lc = sum(vect)-airgap;
  %possivel diferenca de arear do air gap
  areaefe = 1+ 0.01*efect;
  %calculo da "resistencia"
  Rfinal= lc/(perdar*perdnucleo*area*areaefe);
endfunction
