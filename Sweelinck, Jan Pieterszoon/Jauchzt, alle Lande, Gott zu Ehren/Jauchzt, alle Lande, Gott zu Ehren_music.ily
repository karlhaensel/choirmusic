\version "2.18.2"

global = {
  \key c \major
  \time 4/2
  \dynamicUp
  \autoBeamOff
}

nSopran = \relative c'' {
  \global
  c2 a g c4 c | d f e2 e4 c4.(d8[[ e c]] | % 1-2
  d4) g, a8[( b] c4~ c8[ b16 a] b4) c2 | b2 a4 g d' d e g~ | % 3-4
  g fis g2 r1 | r4 c, a2 g c4 c | % 5-6
  
  d f2 e4.( d8 d2 cis4) | d1 g2 e4 e | % 7-8
  c2 f e d~ | d4 c4.( b8 b[ a16 b] c1) | % 9-10
  r4 g4 c b e2 r | r4 c a g c2 r4 c | % 11-12
  
  d f e2 d c | d4 f e2 d1 | % 13-14
  r2. g4 f e d c | c b c2 r2. g4 | % 15-16
  a a b c d d c g' | f e d c c b c2 | r2 g'1 g2 | % 17-19
  
  r2 g1 g2 | f e4 d c b a2~ | a g r e'~ | % 20-22
  e d4 c b2 c | d g, g'2. g4 | % 23-24
  f2 e4 d c b a2 | g1 r | % 25-26
  
  r1 r4 g c c | b2 a c d | % 27-28
  e r r1 | r2. c4. c8 d4 e c | % 29-30
  f4 f e8[( d c b] a4. b8 c[ d] e4~ | e8[ d] d2 cis4) d d c b | % 31-32
  
  a4 g g fis g2 r4 g' | f e d c c b c2 | % 33-34
  r4 a' g f e d d cis | d4.( c8 b4) b c2 d | % 35-36
  r2. g4 f2 e | d c4 c2( b8[ a] c4) b | c\breve\fermata \bar "|." | % 37-39
}

nAlt = \relative c' {
  \global
  r1. f2 | d c g'4 g a c | % 1-2
  b2 a4 a f d g g | r g e2 d g4 g | % 3-4
  a c b2 a1 | r2. c4 bes g a2 | % 5-6
  
  a r4 a2 a4 a2~ |a d,4 g b b c c | % 7-8
  a a f8[( g a b] c4) c b a | g2 r g e4 c | % 9-10
  g'2 r r4 c a g | c c, f e a4.( g16[ f] g4) e | % 11-12
  
  g a a e8 e g4 a a e | g a2 c4 b2 a | % 13-14
  d4 c2 b4 a e g g | g2 r g g4 d | % 15-16
  f c d g g1 | R\breve | c1 c2 c~( | % 17-19
  
  c b4 a b2) b | a c4 g a g f2 | c r r c'~ | % 20-22
  c b4 a g f e2 | d1 r | % 23-24
  r4 d e g g g fis2 | g4 g c, c b2 a | % 25-26
  
  c d e8[( d e f] g2) | R\breve | % 27-28
  r4 e4. e8 f4 g e a a | g2 a  r2. a4~ | % 29-30
  a8 a b4 c a c a a2~ | a1 a2 r | % 31-32
  
  r1 r4 g g2 | c,4 c' bes a g f f e | % 33-34
  f2 c' c4 b a g | g fis g1 r4 g | % 35-36
  a f g e f8[( g a b] c4) g | g\breve~ | g\fermata \bar "|." | % 37-39
}

nTenorI = \relative c' {
  \global
  R\breve | r1 c2 a | % 1-2
  g c4 c d f e2 | d c g4 g' e2 | % 3-4
  c2 d4 d f2. d4 | g2 c, r4 d c a~ | % 5-6
  
  a d2 cis4 d f e2 | fis g2. e4 e c~ | % 7-8
  c c a a g g d' d | g, g' g d e2 g | % 9-10
  e c4 g'2 g4 c, e | e2 r r4 f e8 c g'4 | % 11-12
  
  d2 c d4 f e2 | d4 d c8 a a'4.( g8 g2 fis4) | % 13-14
  g1 r | g,2 a4. a8 b4 c d d | % 15-16
  a f' f e d2 e | c4 c g1 r2 | e'2.( f4 g1~ | % 17-19
  
  g) g | R\breve | f2 e4 d c b a2 | % 20-22
  g\breve | g2 g4 a b8 c d4.( cis16[ b] cis4) | % 23-24
  d f c d e d d2 | d4 r2. r1 | % 25-26
  
  r2. g,4 g'2 e | d f e4 c g'2~ | % 27-28
  g r r1 | R\breve | % 29-30
  r2. c,4. c8 d4 e c | f f e2 d g | % 31-32
  
  f4 e d c c b c2 | r4 c f f e f g g | % 33-34
  a4.( g16[ f] e4) a g g fis g | a a g d e2 d4 d~ | % 35-36
  d c2 b4 r2. c4 | d2 e d4 g, g' g | e\breve\fermata \bar "|." | % 37-39
}

nTenorII = \relative c' {
  \global
  R\breve | R | % 1-2
  R | r1 r2. c4 | % 3-4
  a2 g c4 c d f | e2 f d e4 e | % 5-6
  
  f a a4.( g8 f4) d a2 | d4 d b b g2 g'| % 7-8
  f4 f c4.( d8 e[ f] g2) f4 | e2 d c r | % 9-10
  c a4 g c2 r4 c~ | c a f c' r2. c4 | % 11-12
  
  b8 g d'4 a2 r2. c4 | b8 g d'4 a2 r2. d4 | % 13-14
  b4 e d2 c r | r4 g' f e d c c b | % 15-16
  c2 r r g | a4. a8 b4 c d d c2 | g'2.( f4 e d e2~ | % 17-19
  
  e d4 c d2) d | r4 f g d e e c2 | a4 a c d  e d c8[( d e f] | % 20-22
  g2) g r g | g d1 e2 | % 23-24
  a,2 a4 b c g a2 | b4 d e e d2 f | % 25-26
  
  e4 c g'2 r c, | g d' a b | % 27-28
  c4.( b16[ a] g2) r4 c4. c8 d4 | e c f f e2 a, | % 29-30
  r2. e'4. e8 f4 a e | c d e2 f4 f e4.( d8 | % 31-32
  
  c4) c b c d d e2 | a, bes4 f c' d c c | % 33-34
  f,2 r2 r1 | r2 d' c b | % 35-36
  a g d'4 d g,2 | b c d d | c\breve\fermata \bar "|." | % 37-39
}

nBass = \relative c {
  \global
  R\breve | R | % 1-2
  r2 f d c | g'4 g a c b2 c | % 3-4
  r1 f,2 d | c f4 f g bes a4.( g8 | % 5-6
  
  f4 d a'2) d, r | r g e4 e c2 | % 7-8
  f f4 f c2 d | e4.( f8 g4) g c,1 | % 9-10
  r1 r4 c f e | a2 c a4 f c'2 | % 11-12
  
  r2. c4 b8 g d'4 a2 | r2. a4 b g d'2 | % 13-14
  g, g a4. a8 b4 c | d d c2 r g | % 15-16
  f4. e8 d4 c c b c2 | R\breve | c'1 c | % 17-19
  
  g g | d'2 c4 b a e f2~ | f c r1 | % 20-22
  r2 d'2. d4 c2~ | c b4 a g f e2 | % 23-24
  d r r d | g c, g' d | % 25-26
  
  a' b c1 | R\breve | % 27-28
  r4 c,4. c8 d4 e c f f | e2 d4 a'4. a8 b4 c a | % 29-30
  d2 a a1~ | a d,2 e | % 31-32
  
  f4 c g' a g g c,2 | r1 r2 c | % 33-34
  c' c4 a c g d' e | d d g,2 r g | % 35-36
  f e d c | g'1 g | c,\breve\fermata \bar "|." | % 37-39
}
