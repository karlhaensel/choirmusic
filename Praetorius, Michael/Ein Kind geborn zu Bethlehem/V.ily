% Satz Variante V, sechsstimmig, Melodie in der 2. Stimme, original SSATBB / SSTTBB
% Tag norm -> normale Strophen, Tag punk -> Strophen, die punktierten Rhythmus im zweiten Volltakt benötigen


% Oberstimme
nVO = \relative c'' {
  \global
  \partial 4 d4 | d2 c4 |
  \tag #'norm {c2 c4 |}
  \tag #'punk {c4. c8 c4 |}
  d2 c4 | a2. |
  \tag #'melI {d2( c4 | d) c2 |}
  \tag #'melII {d2( c4) | d4 c2 |}
  d2.~ | d2 d4 |
  d2 d4 | c2 c4 | bes4 a2 | b2 d4 | d4.( c8) bes4 | c2 c4 | d2( c4 | bes) a2 | b2
}

% Melodie -> \mel in global.ily

% Unterstimme I
nVUI = \relative c' {
  \tag #'partI {
  \global
  \partial 4 d4 | d2 e4 |
  \tag #'norm {f2 f4 |}
  \tag #'punk {f4. f8 f4 |}
  f2 e4 | f2. |}
  \tag #'melI {d2( f4) | f2. | f2.~ | f2}
  \tag #'melII {d2 f4 | f2. |f2.~ | f2}
  \tag #'partIII {f4 |
  g2 f4 | f2 c4 | d2 d4 | d2 }
  \tag #'partIV {d4 | d2.( | f2) f4 | f2. | d | d2}
}

% Unterstimme II
nVUII = \relative c' {
  \tag #'partI {
  \global
  \partial 4 bes4 | bes2 c4 |
  \tag #'norm {c2 c4 |}
  \tag #'punk {c4. c8 c4 |}
  bes8( c d4) g,4 | a2. |}
  \tag #'melI {g2( a4 | f) c'2 | bes2.~ | bes2}
  \tag #'melII {g2( a4) | f4 c'2 | bes2.~ | bes2}
  \tag #'partIII {bes4 |
  bes2 bes4 | c2 g4 | bes8( c d4) a | g2 }
  \tag #'partIV {bes!4 | a2( bes4 | a2) c4 | bes2( c4 | g) a2 | g2}
}

% Unterstimme III 
nVUIII = \relative c' {
  \global
  \partial 4 g4 | g2 g4 |
  \tag #'norm {f2 f4 |}
  \tag #'punk {f4. f8 f4 |}
  f2 c'4 | c2. |
  \tag #'melI {b2( f4 | d8 e f4) f |}
  \tag #'melII {bes2( f4) | d8( e f4) f |}
  f2.~ | f2 d4 |
  d( g) d | f2 e4 | g( a4.) d,8 | d2 d4 | d4( a') g | c2 f,4 | f2( a4 | d,2) d4 | d2
}

% Unterstimme IV
nVUIV = \relative c {
  \global
  \partial 4 g4 | g2 c4 |
  \tag #'norm {f,2 f4 |}
  \tag #'punk {f4. f8 f4 |}
  bes2 c4 | f,2. |
  \tag #'melI {g8(a bes4 a | bes f) f |}
  \tag #'melII {g8(a bes4 a) | bes( f) f |}
  bes2.~ | bes2 bes4 |
  g2 bes4 | f2 c'4 | g( d') d | g,2 g4 | d'2 g,4 | f2 f4 | bes2( f4 | g) d'2 | g,2
}