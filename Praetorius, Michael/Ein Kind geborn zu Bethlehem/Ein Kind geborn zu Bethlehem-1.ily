% Satz Variante I, zweistimmig-gleichstimmig, Melodie in der 2. Stimme, original SS / SA
% Tag norm -> normale Strophen, Tag punk -> Strophen, die punktierten Rhythmus im zweiten Volltakt benötigen


% Oberstimme
nIO = \relative c'' {
  \global
  \partial 4 r4 | g4 bes g | 
  \tag #'norm {c2 c4 |}
  \tag #'punk {c4. c8 c4 |}
  d2( es4 | d) c2 | d8( es f4 es) | d c2 | d2.~ | d2 d4 |
  d( g,) d' | c2 bes4 | d a2 | bes d4 | a2( bes4 | c2) c4 | d2( c4 | bes) a2 | g2 
}

% Melodie -> \mel in global.ily