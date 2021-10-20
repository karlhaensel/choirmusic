\version "2.22.00"

nSopran = \relative c' {
  \global
  \global_voice
  % S.10
  R1 | r4 es\p g bes | c4. c8 bes4 as | bes es, es' d |
  c4 g8 g8 c4 bes8 bes8 | as4 f r2 | R1 | R1 | R1 |
  % S.11
  r4 es4\p g bes | c4. c8 bes4 as | bes4 es, g bes | es(d) c2 | r4 c4 as c8 c |
  f4(es) d2 ~ d4 b c d | es4 g f es | d2 d2(~d4 e f g |
  % S.12
  c,) f,4 a c | d4. d8 c4 bes4 | es2 es~| es4 d c bes | a4 bes c d | 
  es4(g) f2~ | f4 f, f'2~ | f4 es8([ d8]) c2 | \mark \default bes2 r2 | R1 |
  % S.13
  R1 | R1 | r4 bes4\f bes bes | e2\sf e |
  r2 bes4 bes8 bes | f'2 f | r4 bes,4 bes bes | ges'1~ |
  % S.14
  ges4 bes,4 bes bes8 bes | bes2 as2 | R1 | R1 |
  r4 f4 f f | bes4.\sf bes8 bes4 bes8 bes | as2 as4 r4 | R1 |
  % S.15
  r4 as4 as as | des4.\sf des8 des4 des8 des8 | \mark \default c2 c4 r4 | R1 |
  r4 bes4 bes es | ges4. ges8 f4 es | es2 a,2 | es'2 es4. es8 |
  % S.16
  ges2 d2 | es2 ces4. ces8 | bes2 bes | as as4. as8 |
  ges2 ges | ges ges4. ges8 | <<f1~\sf{s2 s\dim}>> | f1 |
  % S.17
  f1~ | f4 r4 r2| r4 es4\p g bes | c4. c8 bes4 as4 |
  bes2 es,2\cresc | es'1~ | es2 bes2 | r4 es,4\f g bes |
  % S.18
  c4. c8 bes4 a | es'4 bes\dim as g | g2 (f2) | \mark \default es2 r4 g4 |
  <<es'1~( {s2 s\cresc}>>| es4\f g4 f4) es4 | d1 ( | es4 bes2\dim) as4 | g2 (f2) |
  % S.19
  es1 | r2 es2\p | bes'2 g2 | es2 bes' | c c | bes1 |
  r2 bes2 | c\cresc d | es d | c c |
  % S.20
  bes1~ | bes4 r4 g2\p | c2 bes | as g | f1 | es1 | \mark \default bes'\f |
  g | bes | g | as2\p g2 | f g |
  % S.21
  as2\cresc g | f g | as\cresc g | f1 | es | es'2\f d | c\dim bes | as g |
  f1\p | es1 | R1*3 |
  R1*4 | R1\fermata \bar "|."  
}

nAlt = \relative c' {
  \global
  \global_voice
  % S.10
  R1 | r4 es4\p g bes | c4. c8 bes4 as | bes es, r2 |
  R1 | r2 as4 g | f c8 c f4 es8 es | d4 bes r2 | R1 |
  % S.11
  r4 es\p es g | as4. as8 g4 f4 | g es es es | g2 g | r2 f4 es |
  d4 es8 es f4 as8 as | g2 g | r4 g c2~( | c2 bes~ | bes4) bes bes bes |
  % S.12
  bes2 a | as2. as4 | g4(bes) a g | a2(g4) f | es4 d f bes |
  a4(g4) c2 | bes4(a) bes f | g4(bes2 a4) | \mark \default bes2 r2 | R1
  % S. 13
  R1*2 | r4 bes\f bes bes | bes2\sf bes |
  r bes4 bes8 bes | bes2 bes | r4 bes bes bes | bes1~ |
  % S. 14
  bes4 ges ges ges8 ges | ges2 es | R1 | r4 des des des |
  f2 f4 f | f4.\sf f8 e4 e8 e | f2 f4 r | r f f f |
  % S. 15
  as2 as4 as | as4.\sf as8 g4 g8 g | \mark \default as2 as4 r | r es f ges |
  ges2 ges4 bes | a2 a | r4 a a a | bes2 ces4. ces8 |
  % S. 16
  bes2 as | ges f4. f8 | f2 es | es d4. d8 |
  es2 fes | es es4. es8 | <<c1~\sf {s2 s\dim}>> | c1 |
  % S. 17
  ces | R1*3 |
  r4 es\p g\cresc bes | c4. c8 bes4 as | bes2 es,4 g\f | a2 g |
  % S. 18
  f2. f4 | <<g2{s4 s\dim}>> f4 es | es2( d) | \mark \default es r4 es |
  c'2( bes4\cresc) a | bes2\f( as4 g | as c bes) as | g( bes\dim) es,2 | es( d) |
  % S. 19
  es1 | r2 bes\p | bes bes | c bes | es es | d1 |
  r2 f | as\cresc f | es f | g f |
  % S. 20
  f1~ | f4 r es2\p | es d | es es | es( d) | es1 | \mark \default f\f |
  es | es2( d) | es1 | es2\p es | d es |
  % S. 21
  es\cresc es | f es | d\cresc es | f( d) | c1 | g'2\f g | es\dim es | es es |
  es\p( d) | bes1 | R1*3 |
  R1*4 | R1\fermata \bar "|."
}

tAlt = \lyricmode {
  % Text Alt  
}


nTenor = \relative c' {
  \global
  \global_voice
  % S. 10
  R1*4 |
  R1*2 | R1 | R1*2 |
  % S. 11
  r4 g\p bes es | es4. as,8 bes4 c | bes g es' d | c g8 g c4 bes8 bes | as2 as~ |
  as4 as as c | b d c b | g'( es) c2 | r4 bes d f | g4. g8 f4 e |
    % S. 12
  f2 f~ | f4 f f d | bes2 r4 c | c( d es d | c) bes a bes |
  c( d es2) | d4 es f d | bes( c8[ d] es2) | \mark \default d2 r2 | R1 |
    % S. 13
  R1*2 | r4 bes\f bes bes | des2\sf des |
  r bes4 bes8 bes | des2 des | r4 bes bes bes | des1~ |
  % S. 14
  des4 des des des8 des | des4. des8 c4 as | des2 des | r4 des des des |
  f2 des4 des | des4.\sf des8 des4 des8 des | c2 c4 r | r f f f |
  % S. 15
  f2 f4 f | f4.\sf f8 fes4 fes8 fes | \mark \default es4 as,8 as c4 es | ges4. ges8 f4 es |
  es2 es | r4 es f ges | ges2. ges4 | ges2 f4. f8 |
  % S. 16
  bes,2 f' | es d4. d8 | d2 es | ces bes4. bes8 |
  bes2 ges | ges es4. es8 | << es1\sf~ {s2 s2\dim}>> | es1 |
  % S. 17
  es | r4 bes\p d f | bes2. bes4 | es2( d4) c |
  g2 bes\cresc | r4 as bes c | g2( bes4) es\f | es1~ |
  % S. 18
  es2. es4 | g( es\dim) bes2 | bes( as) | \mark \default g r4 es'4 |
  <<f1 {s2 s\cresc}>> | r4 bes,\f d es | f( as g) f | es( d2\dim) c4 | bes2( as) |
  % S. 19
  g1 | r2 g\p | f g | g f | g a | bes1 |
  r2 d | es\cresc bes | bes bes | bes as |
  % S. 20
  f1~ | f4 r bes2\p | as f | es bes' | c( as) | g1 | \mark \default bes1\f |
  es, | f | g | es2\p bes' | bes bes |
  % S. 21
  as\cresc bes | bes bes | as\cresc bes | c( b) | c1 | es2\f bes | as\dim g | as bes |
  c\p( as) | g1 | \override Staff.VerticalAxisGroup.remove-empty = ##t R1*3 |
  R1*4 | R1\fermata \bar "|."
}

tTenor = \lyricmode {
  % Text Tenor  
}

nBass = \relative c {
  \global
  \global_voice
  % S. 10
  R1*4 |
  R1*3 | r4 bes\p d f | as4. as8 g4 f |
  % S. 11
  g es2.~ | es4 es es as | es2 es~ | es4 es es es | f1~ |
  f4 f f f | f2( es4) d | c bes a2 | bes r | R1 |
  % S. 12
  R1 | r4 bes d f | g4. g8 f4 es | f2 f~ | f4 f es d |
  c( bes) a2 | bes4 c d4. d8 | es2( f) | \mark \default bes,2 r | R1 |
  % S. 13
  R1*2 | r4 bes'\f bes bes | g2\sf g |
  r bes4 bes8 bes | f2 f | r4 bes bes bes | es,1~ |
  % S. 14
  es4 es es es8 es | as2 as | r4 des, f as | bes4. bes8 as4 ges |
  des'2 des, | R1 | r4 f as c | des4. des8 c4 bes |
  % S. 15
  f2 f | r4 des des des | \mark \default as'2 as4 as | a2 a |
  r4 bes bes bes | c2 c | ces1 | bes2 as4. as8 |
  % S. 16
  bes2 ces | bes as4. as8 | ges2 ges | f bes,4. bes8 |
  es2 bes | ces bes4. bes8 | << a1\sf~ {s2 s\dim}>> | a1 |
  % S. 17
  as~ | as | g\p | as2. as4 |
  <<es'1~{s2 s\cresc}>> | es1 | r4 es\f g bes | c4. c8 bes4 bes |
  % S. 18
  a2 bes4 c | << bes2( {s4 s\dim}>> d,4) es | bes1 | \mark \default c4 es g bes |
  a2( bes4\cresc) c | bes1\f | bes2 bes, | c4( g\dim) as2 | bes1 |
  % S. 19
  es | r2 es\p | d es | c d | es f | bes,1 |
  r2 bes' | as\cresc as | g f | es f |
  % S. 20
  d1~ | d4 r es2\p | as, bes | c bes | as( bes) | es1 | \mark \default d1\f |
  es | bes | es | c2\p bes | as g |
  % S. 21
  c\cresc bes | d es | f\cresc g | as( g) | c,1 | c'2\f g | as\dim es | c bes |
  as\p( bes) | es1 | R1*3 |
  R1*4 | R1\fermata \bar "|."
}

tBass = \lyricmode {
  % Text Bass  
}