function Rfinal = Reatancia(vect,area,airgap,perdnucleo,efect)

  perdar =(4*pi()*power(10,-7));
  lc = sum(vect)-airgap;
  areaefe = 1+ 0.01*efect;
  Rfinal= lc/(perdar*perdnucleo*area*areaefe);
endfunction
