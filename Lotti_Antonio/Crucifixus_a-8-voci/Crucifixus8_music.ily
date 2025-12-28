\version "2.22.1"

global = {
  \key c \minor
  \time 2/2
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  R1*5 |
  R1*2 | r4 bes2 g4 | es'1~( | es4 d8[ c] d2) | d1 |
  
  R1 | r2 es8 es es es | es es d d es4 es | r2 f8 f f f |
  f f es d es2~( | es4 d8[ c]) d2 | R1 | r2 r4 f4 | f8 f es es es4 d |
  
  R1*2 | r4 f2( es4~ | es d2 c4 | bes2 as) |
  g r | R1 | g'2( f | es des) | c d4 d |
  
  c2. c4 | c c2 c4 | d2 d | d1~ | d~ | d~ |
  d2 c | c c | b( c~ | c) b | c1 \bar "|."  
}

nSopranII = \relative c'' {
  \global
  R1*5 |
  R1 | r4 bes2 g4 | d'1~( | d4 c8[ b] c2~ | c4 b8[ a] b2) | b1 |
  
  r2 c8 c c c | c c b b c4 c | r2 bes8 bes bes bes | c c c c f, f bes4 |
  bes2.( c4~ | c bes8[ a]) bes2 | R1*2 | r2 r4 d4~( |
  
  d c2 bes4~ | bes as) bes2 | R1 | r2 r4 es | d8 d es es c4 d |
  r c2( b4) | c r f2( | es d~ | d4 c2 bes4~ | bes) as as as |
  
  g2. g4 | as c2 c4 | c2 bes | a( bes | a1 | as) |
  g | a2 a | g1~ | g2 g | g1 \bar "|."
}

nAltI = \relative c'' {
  \global
  R1*5 |
  r4 a2 d,4 | bes'1 | bes2 bes~ | bes4 a8([ g]) a2~( | a2. g8[ fis]) | g1 |
  
  g8 g g g g g f f | g2 g | R1 | r2 f8 f f f |
  g1 | f | R1 | r4 bes bes8 bes as as | as4 g r2 |
  
  R1 | r4 as2( g4~ | g f) g2 | r2 r4 as | f8 f g g es4 f |
  R1 | g2( as | g4 es f d | es2 g) | c, f4 d |
  
  g2. g4 | f as2 g4 | fis2 g | fis( g~ | g4 f8[ e] f2~ | f1~ |
  f2) es! | es es | d( es | d2.) d4 | e1 \bar "|."
}

nAltII = \relative c' {
  \global
  R1*4 | r4 es2 c4 |
  a'1~ | a2 g | g1~ | g4 c, a'2( | d,1) | d |
  
  R1 | r2 es8 es es es | f f f f g4 g | r2 as8 as as as |
  g4.( f8 es2 | f4. es8) d2 | r4 g es8 es f f | d4 es r2 | r4 g f8 f g g |
  
  es2 d | R1 | as'2( g | f) es | r2 r4 f4 |
  g8 g g g f2 | g r | R1 | g1~ | g4 f2 f4~ |
  
  f e8([ d]) c4 c | c f2 c'4 | a2. g4 | a2( d,~ | d1~ | d) |
  c | c2 a | b4( d2 c4 | d2.) d4 | c1 \bar "|."
}

nTenorI = \relative c' {
  \global
  R1*3 | r4 d2 g,4 | es'1~ |
  es2 d | d1~ | d2. bes4 | es2.( a,4 | g1) | g |
  
  r2 c8 c c c | d d d d es4( c~ | c as) es'2 | es8 es es es es es d d |
  es4( es,8[ f] g4 c) | f,1 | r4 d'4 c8 c c c | bes4 bes8 bes g g as as | f4( g8[ as]) bes2 |
  
  r2 r4 d | c8 c c c bes4 bes8 bes | es es f f d4 es | r2 r4 c | d8 d bes bes c4 as |
  r2 r4 f'~( | f es2 d4~ | d c2 b4) | c2 des | as2.( f4) |
  
  c'4( g2) c4 | as4 as2 es'4 | a, d d2 | d4 d,2 d4 | d1~( | d |
  es2.) c'4 | a2 a | d,( g~ | g) g | g1 \bar "|."
}


nTenorII = \relative c' {
  \global
  R1*2 | r4 as2 f4 | d'1~( | d4 c8[ b] c2~ |
  c2. bes8[ a]) | bes1~ | bes | g2 c | c2.( b8[ a]) | b1 |
  
  b8 b b b c c c c | g2 g | r bes!8 bes bes bes | bes bes as as bes2~( |
  bes2. g4) | bes1 | R1 | r4 es4 c8 c c c | bes4 bes r d |
  
  bes8 bes c c as4 bes | R1 | r2 r4 es | c8 c d d bes4 c | r2 r4 d |
  bes8 bes c c as4( f) | c'2. d4 | bes8 bes c c f,4( g) | g2 g( | c4) f, f2~ |
  
  f4 f e4. e8 | f4 c'2 c4 | fis,2 bes | fis4( a2 g4 | a1 | b2 d) |
  g,1 | es2 es' | b4( g es2 | g4 d2) g4 | e1 \bar "|."
}

nBassI = \relative c {
  \global
  R1 | r4 es2 c4 | as'1~( | as4 g8[ f]) g2~ | g1 |
  a~ | a4 g8([ fis]) g2 | g1 | c,2 c | g'1 | g |
  
  R1 | r2 g8 g g g | as as as as g4 g | es8 es es es bes' bes bes bes | 
  es,1 | bes' | r4 bes bes8 bes as as | as4 g r2 | r r4 bes |
  
  g8 g as as f4 g | r2 r4 es | c8 c d d bes4 c | r2 r4 as'~( | as g2 f4~ |
  f es2 des4) | c c' f,8 f bes bes | es,4 as8 as d, d g g | c,4 c g'( bes) | f2 f4 f |
  
  c2. c4 | f f2 g4 | d2 g | d1~( | d | f) |
  c | c2 c | g'1~ | g2 g | c,1 \bar "|."
}

nBassII = \relative c {
  \global
  r4 es2 c4 | g'1~( | g4 f8[ e] f2~ | f2. es8[ d] | es2) c |
  fis,1 | g | bes( | c2 fis, | g1) | g |
  
  g'8 g g g as as as as | g4 g c,2 | f es4 es | c8 c c c bes bes bes bes |
  es1 | bes | R1 | r4 g' es8 es f f | d4( es) bes2 |
  
  r2 r4 g' | es8 es f f d4 es | r2 r4 c' | as8 as bes bes g4 as | R1 |
  R1 | r4 c2( bes4~ | bes as2 g4) | c2 e, | f b,4 b |
  
  c2. c4 | f, f'2 es4 | d2 g, | d'1~(  | d | b) |
  c | fis,2 fis | g1~ | g2 g | c1 \bar "|."
}