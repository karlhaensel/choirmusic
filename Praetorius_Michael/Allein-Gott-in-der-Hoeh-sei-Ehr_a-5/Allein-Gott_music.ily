\version "2.22.1"

ficta = { \once \set suggestAccidentals = ##t } 

global = {
  \key f \major
  \time 3/2 % original: 6/1
  \autoBeamOff
}

nSopran = \relative c' {
  \global
  f2 a bes | c1 bes2 | a1 g2 | f1( e2 | f4 e c d e c | d e f2 e4 f | g2 f) e | f1 a2 | a1 g2 bes( a) g |
  f1( e2) | f1. | f2 a bes | c1 bes2 | a1 g2 | a1 r2 | R1. | c,2 d e | f1 d2 c( c') a |
  c1 r2 | R1.*4 | r2 r g | a4 bes c2. bes4 | a1 d,2 | e1 d2 | e( f) d |
  f1 r2 | R1. | r2 r f | a1 bes2 | c1 bes2 | a1 g2 | a1 r2 | R1. |
  
  R1. | a2 a g | bes( a) g | f1( e2) | f1 r2 | R1.*2 | c2 c d | f2. f4 e2 | d1 c2 |
  d1 d2 | e4( f g2) bes | a f g | a1 c2 | f,1 r2 | bes c d | es2. es4 d2 | c1 bes2 | c1. | a2 a g |
  d1 r2 | R1. | r2 r f | f1 g2 | bes bes a | g1 fis2 | g1 g2 | a1 bes2 | c1 bes2 | a1 g2 |
  a1 f2 | g1 a2 | bes( a) g | f1( e2) | f1 a2 | bes2. g4 c2 | d2.( c4 bes2) | c bes( g) | a1. \bar "|."
}

nAlt = \relative c' {
  \global
  R1. | f2 a bes | c1 bes2 | a g1 | a4( g a bes  c2) | bes4( g a bes c2) | bes a g | f4( g a bes c2) | r4 c, f2 e | d d2.( e4 |
  f2) g1 | a4 f a2 bes | c1 bes2 | a1 g2 | f1 r2 | c' a bes | c( d c4 bes | a g f2) g | a1 g2 | g1 r2 |
  R1.*2 | r2 r a | a1 g2 | bes( a) g | f1( e2) | f2. f4 a bes | c1 f,2 | c'1 d2 | c1 r2 |
  R1. | r2 r g | a4 bes c2 bes | a4( g f e d2) | a'1 g2 | f1 e2 | f1 r2 | r r bes |
  
  a4( bes c2. bes4 | a g f e d c | d e f2) d | c f g | f4 a a2 g | bes( a) g | f1( e2) | f1. | R1. | f2 g a |
  bes2. bes4 a2 | g e f | c d e | f2. f4 e2 | d1 e2 | g1 r2 | g g g | g1 g2 | g e f | c1 r2 |
  bes bes c | d1. | d | R1.*2 | r2 r d | d1 e2 | f1. | R1.*2 |
  f2 d4( e f e | d2. e4 f2) | f f d | a' g1 | r2 r f | g1 a2 | bes( a) g | f1( e2) | f1. \bar "|."
}

nTenorI = \relative c' {
  \global
  R1.*7 | r2 r c | c1 c2 | bes( f') d |
  c( d c) | c1 r2 | R1. | f2 f d | f2.( e4 d2) | e f d | f1( g2 | a1) r2 | r r d, | e1 f2 |
  g1 f2 | e( d) e | f1 c2 | c2.( d4 e2) | f2.( e4 d2) | c2 d( c4 bes | c2) f,1 | f1. | r2 r f | a1 bes2 |
  c1 bes2 | a g1 | c d2 | e f g | f f4 e d2 | R1. | c2 f4( e d c | d e f2) d |
  
  f1 e2 | f4( e d c bes a | g2) f g | a bes( g) | a1 bes4( c | d e f2) c | c d c | a1. | f2 f g | bes2. bes4 a2 |
  g1 fis2 | g1 r2 | R1. | \ficta f!2 f g | bes2. bes4 a2 | g1 f2 | g4 g c2 d | es2. es4 d2 | c2.( bes4 a g | a bes c2) bes |
  f4 f g2 a | bes2. bes4 a2 | g g f bes a g | d'1. | d2 e d | b1 c2 | c c d | e e d | f1 d2 |
  d4( e f e d c | bes a g2) c | d( c) bes | c( d c) | bes a1 | g2 d'4( e f2) | f1 d2 | c d c | c1. \bar "|."
}

nTenorII = \relative c {
  \global
  R1.*7 | r2 r f | f1 g2 | g( a) bes |
  a( g1) | f1. | R1. | f2 a bes | c1 bes2 | a1 g2 | f4( e d2 e | f) d c | c'1 bes2 | g2. g4 d'2 |
  c1 a2 | c1 bes2 | c2.( bes4 a g | f g a bes c2) | d c bes | a g1 | f2 f4 bes c2 | R1. | g2 a bes | c1 bes2 |
  a1 g2 | f2.( e8[ d] e2) | f a bes | c( d) bes | a( f) g | d'4( c a bes c2) | a f g | bes( a) g |
  
  f4( g a2 g) | f1 r2 | R1. | r2 r c' | c d1 | d g,2 | a( bes4 a g2) | f1. | R1.*2 |
  R1. | c2 c d | f2. f4 e2 | d1 c2 | d1 r2 | r r a' | c g1 | g1. | c,2 c c | f2. e4 d2 |
  d1 f2 | d1. | bes'2 bes a | d c1 | bes2 g( f) | bes a1 | g1. | f1 f2 | g2.( a4 bes2) | c c bes |
  a1. | r2 r f | d4( e f2) g | a( bes) g | d'( c d) | d4( c bes2 c | bes) f bes | a g1 | f1. \bar "|."
}

nBass = \relative c, {
  \global
  R1.*7 | r2 r f | f1 c'2 | g( d') g, |
  a( bes c) | f,1. | R1.*2 | f'2 a bes | c1 bes2 | a1 g2 | f1 r2 | f, a bes | c1 d2 |
  e( c d | e f) g | f1. | R1.*3 | r2 r f, | a1 bes2 | c1 bes2 | a1 g2 |
  a( f) g | a( bes) c | f,1 r2 | R1.*2 | r2 r c' | f4( e d c bes a | g2) d' g, |
  
  d' c1 | f,1 r2 | R1. | r2 r c' | f4.( e8 d4 c bes a | g2 d') e | f bes, c | f,1. | R1.*2 |
  R1.*4 | bes2 bes c | es2. es4 d2 | c1 b2 | c1 r2 | r r f, | f1 g2 |
  bes bes a | g1 fis2 | g1 d'2 | bes( f) c' | g1 d'2 | bes c d | g,1 c2 | f,( f') d | c4( d e f g2) | a f g |
  d1. | R1.*2 | r2 r c | d4( e f e d c | bes a g2) f | bes4( c d2) g, | a( bes c) | f,1. \bar "|."
}