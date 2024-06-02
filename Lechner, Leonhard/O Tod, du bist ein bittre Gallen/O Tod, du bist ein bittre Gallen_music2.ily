\version "2.22.1"

nIISopran = \relative c'' {
  \global
  a\breve | g | e | f2 d g1 | r r2 e | % 31-35
  a4 g2 \ficta fis4 g1 | r r2 g | g g4 g2 a4 a a | d1 c4 a2( \ficta gis4) | % 36-39
  a2 r4 a a a a2 | r4 a a a a2 r4 b | b b b2. d4 d2~ | d4 d d1 d2 | % 40-44
  r b b b | c a2. g4 g2 | fis g b1 | b2 b c1 | R\breve | % 45-48
  r2 c c d | e a, c2.( b8[ a] | g2) a b2. b4 | c c b c a2 g4 g | % 49-52
  c c b g c1~ | c2 c r a | a a4 c2 g4 r2 | R\breve | r2 g g1 | % 53-57
  g2 c2. a4 a2~( | a \ficta gis) a1~( \repeat unfold 2 {| a\breve~} | a) \bar "|." % 58-62
}

nIIAlt = \relative c' {
  \global
  e\breve | e1 e | g\breve | r1 e | a2 f e2. e4 | % 31-35
  e d c2 b4 b c d | c2 b r d | e d4 e2 f4 f f | f2. f4 e1 | % 36-39
  cis d2 d4 d | cis2 r4 e e e e2 | r4 d g g g2 g | g2. g4 fis2 g | % 40-44
  r g g g | g f c4 e d2~ | d d r g | g g e f~ | f4 g d2 d1 | % 45-48
  e1 r2 g | g f e c | e f g g | e4 e g g f2 e4 e | % 49-52
  e f g g f2 e4 g | f2 e r f | f f e d~ | d c2.( b8[ a] b2) | c1 e | % 53-57
  e2 e c f | e1 cis2 cis | cis cis d2.( e4 | f2) e d1 | cis\breve \bar "|." % 58-62
}

nIITenorI = \relative c' {
  \global
  r1 c~ | c b~ | b c | c2 a b1 | a2 a2. gis4 gis2 | % 31-35
  r1 d2 e4 d | e( \ficta fis) g2 r b | c b4 c2 c4 d2 | d d,8([ e f g] a4) e e2~ | % 36-39
  e e f f4 f | e2 r4 c'! a c b2 | r4 g b b b2 g | g g a g | % 40-44
  r g g g | c f,2. e4 g2 | d g r d' | d d c c | c b a1 | % 45-48
  c1 r | R\breve | r2 c d4 d e d | c2 d4 e c2 c | % 49-52
  r4 c d e c2. g4 | a2 g r f | f a g2.( f4 | e2) c d1 | e r2 c | % 53-57
  c c f d | e1 e | e f2 f | d e f1 | e\breve \bar "|." % 58-62
}

nIITenorII = \relative c' {
  \global
  a\breve | e | r1 r2 e | a f e e' | c d b2. b4 | % 31-35
  c b a2 g4 g g g | a2 d,4 d g2. g4 | g2 g g4 f d8([ e f g] | a1) c2 b | % 36-39
  a1 a2 a4 a | a2 r4 a c a gis2 | r4 b d d d2 b | b2. b4 a2 g | % 40-44
  r d' d d | e c2. c4 b2 | a b r g | g g g a~ | a4 g g1 f!2 | % 45-48
  g2 g a b | c f, a2.( b4 | c2) a g1 | r r2 g | % 49-52
  a4 a g e f2 c4 c' | c2 c r c | c1. b2 | a e g1 | g c | % 53-57
  c2 g a d | b1 a~( \repeat unfold 2 {| a\breve~} | a) \bar "|." % 58-62
}

nIIBass = \relative c {
  \global
  R\breve | r1 e~ | e c | r r2 e | f d e1 | % 31-35
  r g,2 c4 b | a2 g r g | c g4 c2 f,4 f' f | d8([ e f g] a2) a, e' | % 36-39
  a,1 d2 d4 d | a2 r4 a' a a e2 | r4 g g g g2. g,4 | g2. g4 d'2 g, | % 40-44
  R\breve*2 | r2 g g'1 | g, c2 f~ | f4 e g2 d1 | % 45-48
  c1 r | R\breve | r1 r2 g' | a4 a g e f2 c | % 49-52
  r r4 g' a a g e | f2 c r f, | f f c' g | a1( g) | c\breve | % 53-57
  R\breve | r1 a | a2 a d1~ | d2 cis d1 | a\breve \bar "|." % 58-62
}
