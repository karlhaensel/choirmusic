% Satz Variante III, vierstimmig-gleichstimmig, Melodie in der 3. Stimme, original TTBB
% Tag norm -> normale Strophen, Tag punk -> Strophen, die punktierten Rhythmus im zweiten Volltakt benötigen

\include "Ein Kind geborn zu Bethlehem-2.ily"

% 1. Oberstimme (in zwei Tags geteilt, um nur beim Halleluja Liedtext oberhalb der Zeile zur ermöglichen)
nIIIOI = \relative c' {
  \tag #'stro {
  \global
  \partial 4 d4 | e2 d4 |
  \tag #'norm {f2 f4 |}
  \tag #'punk {f4. f8 f4 |}
  f2 e4 | d2. | d4.( e8 f4~ | f g) f | f2.~ | f2 f4 |
  g2 f4 | f2 e!4 | c4 d2 | d }
  \tag #'halleluja {e4 | d2.( | f4 e f | g) f2 | d d4 | d2}
}

% 2. Oberstimme (in zwei Tags geteilt, s.o.)
nIIIOII = \relative c' {
  \tag #'stro {
  \global
  \partial 4 b4 | c2 bes4 |
  \tag #'norm {c2 c4 |}
  \tag #'punk {c4. c8 c4 |}
  d2 c4 | a2. | g8( a bes4 a8 g | d'4 c) c  d2.~ | d2 d4 |
  es2 bes4 | c2 c4 | g4 a2 | b2 }
  \tag #'halleluja {c4 | a2( bes4 | c2) d4 | d2( c4 | bes) a2 | b2}
}
% Melodie -> \mel in global.ily

% Unterstimme entspricht Unterstimme aus Satz II, eine Oktave tiefer
nIIIU = \transpose g g, {\nIIU} 