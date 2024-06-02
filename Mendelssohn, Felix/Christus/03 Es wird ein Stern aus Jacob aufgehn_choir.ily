\version "2.22.00"

dChoir = {
  \global
  \global_voice
  % S.4
  s1 | \tag #'s \tag #'a {s4 s2.\p} \tag #'t \tag #'b {s1} | s1*3 |
  % S.5
  s1*2 | \tag #'s \tag #'a \tag #'t { s1*2 | } s4 s2.\p | \tag #'b { s1*2 | } s1 |
  % S.6
  s1*6 |
  % S.7
  s1*6 |
  % S.8
  s1*6 |
  % S.9
  s1*2 | s4 s2.\f | s2\sf s | s1*2 |
  % S.10
  s1*6 |
  % S.11
  \tag #'s \tag #'a \tag #'t {s1 | s1\sf | s1*3 | s1\sf } \tag #'b {s1*6} |
  % S.12
  s1*6 |
  % S.13
  s1*6 |
  % S.14
  s2\sf s\dim | s1*2 | \tag #'s {s1 | s4 s2.\p} \tag #'a {s1*2} \tag #'t {s4 s2.\p | s1} \tag #'b {s1 | s\p} | s1 |
  % S.15
  \tag #'s \tag #'t \tag #'b {s2} \tag #'a {s4 s\p} s2\cresc | s1 | \tag #'s {s1 | s4 s2.\f} \tag #'a \tag #'t {s2. s4\f | s1} \tag #'b {s4 s2.\f | s1} | s1 | s4 s2.\dim |
  % S.16
  s1*2 | s2 s\cresc | \tag #'s \tag #'a \tag #'b {s1\f} \tag #'t {s4 s2.\f} | s1 | s4 s2.\dim | s1 |
  % S.17
  s1 | s2 s\p | s1*5 | s1\cresc |
  % S.18
  s1*3 | s2 s\p | s1*4 |
  % S.19
  s1\f | s1*3 | s1\p | s | s\cresc |
  % S.20
  s1 | s\cresc | s1*2 | s1\f | s\dim | s | s\p | s |
  % S.21
  s1*8 \bar "|."
}

nSopran = \relative c' {
  \global
  \global_voice
  % S.4
  R1 | r4 es g bes | c4. c8 bes4 as | bes es, es' d | c4 g8 g8 c4 bes8 bes8 |
  % S.5
  as4 f r2 | R1 | R1 | R1 | r4 es4 g bes | c4. c8 bes4 as |
  % S.6
  bes4 es, g bes | es(d) c2 | r4 c4 as c8 c | f4(es) d2 ~ d4 b c d | es4 g f es |
  % S.7
  d2 d2(~d4 e f g | c,) f,4 a c | d4. d8 c4 bes4 | es2 es~| es4 d c bes |
  % S.8
  a4 bes c d | es4(g) f2~ | f4 f, f'2~ | f4 es8([ d8]) c2 | bes2 r2 | R1 |
  % S.9
  R1 | R1 | r4 bes4 bes bes | e2 e | r2 bes4 bes8 bes | f'2 f |
  % S.10
  r4 bes,4 bes bes | ges'1~ | ges4 bes,4 bes bes8 bes | bes2 as2 | R1 | R1 |
  % S.11
  r4 f4 f f | bes4. bes8 bes4 bes8 bes | as2 as4 r4 | R1 | r4 as4 as as | des4. des8 des4 des8 des8 |
  % S.12
  c2 c4 r4 | R1 | r4 bes4 bes es | ges4. ges8 f4 es | es2 a,2 | es'2 es4. es8 |
  % S.13
  ges2 d2 | es2 ces4. ces8 | bes2 bes | as as4. as8 | ges2 ges | ges ges4. ges8 |
  % S.14
  f1~ | f1 | f1~ | f4 r4 r2| r4 es4 g bes | c4. c8 bes4 as4 |
  % S.15
  bes2 es,2 | es'1~ | es2 bes2 | r4 es,4 g bes | c4. c8 bes4 a | es'4 bes as g |
  % S.16
  g2 (f2) | es2 r4 g4 | es'1~( | es4 g4 f4) es4 | d1 ( | es4 bes2) as4 | g2 (f2) |
  % S.17
  es1 | r2 es2 | bes'2 g2 | es2 bes' | c c | bes1 | r2 bes2 | c d |
  % S.18
  es d | c c | bes1~ | bes4 r4 g2 | c2 bes | as g | f1 | es1 |
  % S.19
  bes' | g | bes | g | as2 g2 | f g | as2 g |
  % S.20
  f g | as g | f1 | es | es'2 d | c bes | as g | f1 | es1 |
  % S.21
  R1*7 | R1\fermata
}

nAlt = \relative c' {
  \global
  \global_voice
  % S.4
  R1 | r4 es4 g bes | c4. c8 bes4 as | bes es, r2 | R1 |
  % S.5
  r2 as4 g | f c8 c f4 es8 es | d4 bes r2 | R1 | r4 es es g | as4. as8 g4 f4 |
  % S.6
  g es es es | g2 g | r2 f4 es | d4 es8 es f4 as8 as | g2 g | r4 g c2~( |
  % S.7
  c2 bes~ | bes4) bes bes bes | bes2 a | as2. as4 | g4(bes) a g | a2(g4) f |
  % S.8
  es4 d f bes | a4(g4) c2 | bes4(a) bes f | g4(bes2 a4) | bes2 r2 | R1
  % S.9
  R1*2 | r4 bes bes bes | bes2 bes | r bes4 bes8 bes | bes2 bes |
  % S.10
  r4 bes bes bes | bes1~ | bes4 ges ges ges8 ges | ges2 es | R1 | r4 des des des |
  % S.11
  f2 f4 f | f4. f8 e4 e8 e | f2 f4 r | r f f f | as2 as4 as | as4. as8 g4 g8 g |
  % S.12
  as2 as4 r | r es f ges | ges2 ges4 bes | a2 a | r4 a a a | bes2 ces4. ces8 |
  % S.13
  bes2 as | ges f4. f8 | f2 es | es d4. d8 | es2 fes | es es4. es8 |
  % S.14
  c1~ | c1 | ces | R1*3 |
  % S.15
  r4 es g bes | c4. c8 bes4 as | bes2 es,4 g | a2 g | f2. f4 | g2 f4 es |
  % S.16
  es2( d) | es r4 es | c'2( bes4) a | bes2( as4 g | as c bes) as | g( bes) es,2 | es( d) |
  % S.17
  es1 | r2 bes | bes bes | c bes | es es | d1 | r2 f | as f |
  % S.18
  es f | g f | f1~ | f4 r es2 | es d | es es | es( d) | es1 |
  % S.19
  f | es | es2( d) | es1 | es2 es | d es | es es |
  % S.20
  f es | d es | f( d) | c1 | g'2 g | es es | es es | es( d) | bes1 |
  % S.21
  R1*7 | R1\fermata
}

nTenor = \relative c' {
  \global
  \global_voice
  % S.4
  R1*5 |
  % S.5
  R1*4 | r4 g bes es | es4. as,8 bes4 c |
  % S.6
  bes g es' d | c g8 g c4 bes8 bes | as2 as~ | as4 as as c | b d c b | g'( es) c2 |
  % S.7
  r4 bes d f | g4. g8 f4 e | f2 f~ | f4 f f d | bes2 r4 c | c( d es d |
  % S.8
  c) bes a bes | c( d es2) | d4 es f d | bes( c8[ d] es2) | d2 r2 | R1 |
  % S.9
  R1*2 | r4 bes bes bes | des2 des | r bes4 bes8 bes | des2 des |
  % S.10
  r4 bes bes bes | des1~ | des4 des des des8 des | des4. des8 c4 as | des2 des | r4 des des des |
  % S.11
  f2 des4 des | des4. des8 des4 des8 des | c2 c4 r | r f f f | f2 f4 f | f4. f8 fes4 fes8 fes |
  % S.12
  es4 as,8 as c4 es | ges4. ges8 f4 es | es2 es | r4 es f ges | ges2. ges4 | ges2 f4. f8 |
  % S. 13
  bes,2 f' | es d4. d8 | d2 es | ces bes4. bes8 | bes2 ges | ges es4. es8 |
  % S.14
  es1~ | es1 | es | r4 bes d f | bes2. bes4 | es2( d4) c |
  % S.15
  g2 bes | r4 as bes c | g2( bes4) es | es1~ | es2. es4 | g( es) bes2 |
  % S.16
  bes( as) | g r4 es'4 | f1 | r4 bes, d es | f( as g) f | es( d2) c4 | bes2( as) |
  % S.17
  g1 | r2 g | f g | g f | g a | bes1 | r2 d | es bes |
  % S.18
  bes bes | bes as | f1~ | f4 r bes2 | as f | es bes' | c( as) | g1 |
  % S.19
  bes1 | es, | f | g | es2 bes' | bes bes | as bes |
  % S.20
  bes bes | as bes | c( b) | c1 | es2 bes | as g | as bes | c( as) | g1 |
  R1*7 | R1\fermata
}

nBass = \relative c {
  \global
  \global_voice
  % S.4
  R1*5 |
  % S.5
  R1*2 | r4 bes d f | as4. as8 g4 f | g es2.~ | es4 es es as |
  % S.6
  es2 es~ | es4 es es es | f1~ | f4 f f f | f2( es4) d | c bes a2 |
  % S.7
  bes r | R1*2 | r4 bes d f | g4. g8 f4 es | f2 f~ |
  % S.8
  f4 f es d | c( bes) a2 | bes4 c d4. d8 | es2( f) | bes,2 r | R1 |
  % S.9
  R1*2 | r4 bes' bes bes | g2 g | r bes4 bes8 bes | f2 f |
  % S.10
  r4 bes bes bes | es,1~ | es4 es es es8 es | as2 as | r4 des, f as | bes4. bes8 as4 ges |
  % S.11
  des'2 des, | R1 | r4 f as c | des4. des8 c4 bes | f2 f | r4 des des des |
  % S.12
  as'2 as4 as | a2 a | r4 bes bes bes | c2 c | ces1 | bes2 as4. as8 |
  % S.13
  bes2 ces | bes as4. as8 | ges2 ges | f bes,4. bes8 | es2 bes | ces bes4. bes8 |
  % S.14
  a1~ | a1 | as~ | as | g | as2. as4 |
  % S.15
  es'1~ | es1 | r4 es g bes | c4. c8 bes4 bes | a2 bes4 c | bes2( d,4) es |
  % S.16
  bes1 | c4 es g bes | a2( bes4) c | bes1 | bes2 bes, | c4( g) as2 | bes1 |
  % S.17
  es | r2 es | d es | c d | es f | bes,1 | r2 bes' | as as |
  % S.18
  g f | es f | d1~ | d4 r es2 | as, bes | c bes | as( bes) | es1 |
  % S.19
  d1 | es | bes | es | c2 bes | as g | c bes |
  % S.20
  d es | f g | as( g) | c,1 | c'2 g | as es | c bes | as( bes) | es1 |
  % S.21
  R1*7 | R1\fermata
}
