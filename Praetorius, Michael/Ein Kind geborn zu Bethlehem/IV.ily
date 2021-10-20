% Satz Variante V, sechsstimmig, Melodie in der 2. Stimme, original SSATBB / SSTTBB
% Tag norm -> normale Strophen, Tag punk -> Strophen, die punktierten Rhythmus im zweiten Volltakt benötigen


% Melodie -> \mel in global.ily

% Unterstimme I (in zwei Tags geteilt, damit Liedtext oberhalb Zeile beim Halleluja)
nIVUI = \relative c' {
  \tag #'stro {
  \global
  \partial 4 d4 | e4( d) e |
  \tag #'norm {f2 f4 |}
  \tag #'punk {f4. f8 f4 |}
  g( d) es | d2. | f2( e!4 | d f) f | f2.~ | f2 f4 |
  g( f) g | c,( f) d | e d2 | d2}
  \tag #'halleluja {e4 | d2.( | f2.| d2) f4 | d( e) d | d2}
}

% Unterstimme II (in zwei Tags geteilt, s.o.)
nIVUII = \relative c' {
  \tag #'stro {
  \global
  \partial 4 b4 | c4( d) c |
  \tag #'norm {c2 d4 |}
  \tag #'punk {c4. c8 d4 |}
  d4( bes) bes | bes2. | d2( g,4 | bes c) c | d2.~ | d2 d4 |
  d2 d4 | a2 bes4 | c( bes) a | bes2}
  \tag #'halleluja {c4 | a2 g4 | f4.( g8 a4) | f( g f) | g( c) a | g2}
}

% Unterstimme III (in zwei Tags geteilt, s.o.)
nIVUIII = \relative c' {
  \tag #'stro {
  \global
  \partial 4 g4 | g2 g4 |
  \tag #'norm {f( a) f |}
  \tag #'punk {f4. a8 f4 |}
  bes( g) g | d8( e! f2) | f2( c'4 | g c) f, | f2.( | bes2) bes4 |
  bes2 bes4 | c2 bes4 | g( d') d, | g2}
  \tag #'halleluja {g4 | d'( a bes | d2) c4 | bes2( c4 | bes g) d' | b2}
}

% Unterstimme IV (in zwei Tags geteilt, s.o.)
nIVUIV = \relative c' {
  \tag #'stro {
  \global
  \partial 4 g4 | c,4( b) c |
  \tag #'norm {f2 d4 |}
  \tag #'punk {f4. f8 d4 |}
  g2 es4 | bes2. | bes4( d c | g' f) f | bes,2.~ | bes2  bes'4 | 
  g8( a bes4) g4 | f2 g4 | c,( d) d | bes( g)}
  \tag #'halleluja {c4 | d2 g4 | d8( e f4) f, | bes( g a | bes c) d | g,2}
}