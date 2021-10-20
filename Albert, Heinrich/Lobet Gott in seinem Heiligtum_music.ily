\version "2.18.2"

global = {
  \key c \major
  \time 4/4
  \dynamicUp
}

nSopranI = \relative c'' {
  \global
  r4 g4.( a8 b c | d2.) cis4 | d e c b | a8( b c2) b4 | c2 r4 c~ |
  c c f e | d c d2 | c e4 e | c4. b8 a4 g | d'1 |
  b4 d2 e4 | c2 e4 f~ | f8\noBeam f e2 d4 | e2 % \bar "" \break 
  r4 e~ | e d c2 | b d4 c |
  b2 g4.( a8 | b c d4) a c~( | c8 d e f g4) d | r d2 f4 | e8( d c b a b c4) | d c2 b4 | c1\fermata \bar "|."
}

nSopranII = \relative c'' {
  \global
  c,4.( d8 e f g4~ | g) fis g a | f!( e4.) f8 g4( | f) e d2 | r4 e2 e4 |
  a4 g a c | b( c4. b16 a b4) | c g g e~ | e8\noBeam d c4.( d8) e4 | fis4( g4. fis16 e fis4) |
  g2 d4 g | a4. a8 g4 c | d( c8 b a4) b | c2 r4 g~ | g g a2 | d,4 g2 g4 |
  g4.( f16 e d2) | d4.( e8 f g a4) | e g4.( a8 b c | d2) a | c8( b a g f4) g | g2 g | g1\fermata | 
}

nAlt = \relative c' {
  \global
  R1*6
  r2 g'4 g | e4. d8 c4 g' | a e r c~ | c b a2 |
  g4 b2 c4 | c2. c4 | g'4. g8 f4 f | g2 r4 c,4~ | c d e( d8 c | g'4.) g8 d4 e |
  d2 r4 g,~( | g8 a b c d4) a | c4.( d8 e f g4~ | g) g r d | c c4.( d8 e4) | d e8( f g4) d | e1\fermata |
}

nTenor = \relative c' {
  \global
  R1*3 r2 g4 g | a4.( b8 c b a g | 
  f4) e d c | g'1 | c,4 c'2 c4 | a4. g8 f4 e | d1 |
  g4 g2 c,4 | f8( g a b c4) a | b c d4. d8 | c2 r4 g | g g2 fis4 | g2. g4 |
  g4.( a8 b2) | R1*2 | d,4.( e8 f g a4) | g a2( g8 a | b4) c d4. d8 | c1\fermata |
}

nBass = \relative c {
  \global
  R1*13
  r2 r4 c~ | c b a2 | g b4 c |
  g1 | R1 | r2 r4 g~( | g8 a b c d2) | e4 f2 c4 | g'2. g4 | c,1\fermata |
}