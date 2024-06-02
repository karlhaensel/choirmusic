% Satz Variante II, dreistimmig, Melodie in der 2. Stimme, originbal SST / SAT
% Tag norm -> normale Strophen, Tag punk -> Strophen, die punktierten Rhythmus im zweiten Volltakt benötigen


% Oberstimme
nIIO = \relative c'' {
  \global
  \partial 4 bes4 | c2 bes4 |
  \tag #'norm {c2 c4 |}
  \tag #'punk {c4. c8 c4 |}
  d2 c4 | a2. | g8( a bes4 a | d) c2 | d2.~ | d2 d4 |
  g,2 d'4 | c2 c4 | c a2 | b c4 | a2( bes4 | c2) f,4 | bes8( c d4 c | bes) a2 | b2
}

% 2. Stimme, Melodie -> \mel in global.ily

% Unterstimme

nIIU = \relative c'' {
  \global
  \partial 4 g4 | c,2 g'4 |
  \tag #'norm {f2 f4 |}
  \tag #'punk {f4. f8 f4 |}
  bes,2 c4 | d2. | g2( f8 e | d4 es) f | bes,2.~ | bes2 bes4 |
  es2 d4 | f2 c4 | es d2 | g, c4 | d4.( c8 bes4 | a2) d4 | g,8( a bes4 f' |  g) d2 | g,2
}