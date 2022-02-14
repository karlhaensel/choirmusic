\version "2.18.2"

global = {
  \key f \minor
  \time 4/4 
  \dynamicUp
}

nSopran = \relative c'' {
  \global
  c2. c4 | bes2 c | des c4 c~( | c bes8 as bes2) | % 1-4
  c1 | r4 c2 c4 | c2 c | c c | % 5-8
  as4.( g8 as4 bes) | c1 | R1 | r2 r4 c4~ | % 9-12
  c es2 d4 | c2 bes | r2 r4 g4 | bes c es4. d8 | % 13-16
  c2 r2 | r4 g bes c | f4. f8 es2 | d( c4 es~ | % 17-20
  es8 d c4~ c8 b16 a b4) | c1 | r4 c2 c4 | es2 c | % 21-24
  r4 as4. bes8( c4) | des2. c8( bes) | c4 c2 bes4 | as g as2 | % 25-28
  f4 bes des2 | c1 | r4 bes bes bes | f4. g8 as4. bes8 | % 29-32
  c4( bes8 as g as bes4~ | bes8 as g f g2) | f4 as4~( as8 g as bes) | c1 | % 33-36
  R1 | r2 r4 c4 | c c g4. as8 | bes4 c as2 | % 37-40
  g4 g g f8\noBeam as~ | as g\noBeam f4.( e16 d e4) | f2 r4 f' | f f c4. des8 |% 41-44
  es4 f des2 | c r4 es | es es as,4. bes8 | c4 des c2 | % 45-48
  c r | r4 c des bes | c a bes2~( | bes4 a8 g) a2\fermata \bar "|." % 49-52
}

nAlt = \relative c' {
  \global
  f2. f4 | f2 f | f2. c4 | des4.( es8 f2) | % 1-4
  f1 | r4 g2 g4 | f2 g | as g4 as~( | % 5-8
  as8 g f e f2) | e r4 g~ | g as2 g4 | f2 e | % 9-12
  r4 c es f | as4. as8 g4 bes~( | bes8 as g f) g2 | g4 es4. f8 g4~ | % 13-16
  g8\noBeam g c,4 f2 | bes, r | r4 d g a | bes4. bes8 as4 g~( | % 17-20
  g8 f16 es f4 g2) | e1 | r2 r4 es4~ | es es as2 | % 21-24
  f4 des2 es4 | f2 bes, | es r4 es4~ | es es f4. g8 | % 25-28
  as4 g f2 | f1 | f1 | r4 f f f | % 29-32
  c4. d8 es4 f8\noBeam g~( | g f f2) e4 | r4 f f f | c4. d8 es4. f8 | % 33-36
  g4( c, es f~ | f8 g as f) g4 g | c,4. d8 es\noBeam f g4~( | g f8 es f2) | % 37-40
  e2 r | r2 r4 c'4 | c c f,4. g8 | as4 f as2~ | % 41-44
  as des, | r4 as' as as | es8.\noBeam f16 g4 f as~( | as8 g f2 e4) | % 45-48
  f4 r8 c des4 bes | c a bes8( c des4 | c2) f2~ | f1\fermata | % 49-52
}

nTenor = \relative c' {
  \global
  c2. c4 | des2 c | bes a | bes4.( c8 des2) | % 1-4
  c1 | r4 e2 e4 | f c c4. bes8 | as( g f4) e4 r8 es( | % 5-8
  f g as2 g8 f) | g4 c2 es4~ | es es es2( | c) c | % 9-12
  es c4 d | es4. es8 es2 | es4.( d8 c2 | g4 as8 bes) c2 | % 13-16
  r4 f, c' d | es4. es8 d4 c~( | c8 b16 a b4) c r8 c | d\noBeam es f4. f8 es4 | % 17-20
  c2( d) | c1 | r4 es!2 es4 | c2 as4 c | % 21-24
  des f2( es4 | des2.) es4 | c es2 bes4 | es4. es8 des4 c~ | % 25-28
  c8 des\noBeam( es4) f( des8 bes | c f, f'4. es8 c4) | d2 r4 des4 | des des c8\noBeam f, f'4~ | % 29-32
  f f es8( c des4) | bes2 r4 c | c c f,4. g8 | as4 f g2 | % 33-36
  c r4 f, | f f c c | as'4. bes8 c( d es4 | d) c r c | % 37-40
  c c g8.\noBeam bes16 as8( c~ | c bes16 as bes4) c c | as4. as8 des8.\noBeam c16 des8( es | f4 des) es es | % 41-44
  es as, bes2 | es,4 es'8.( des16 c8 bes as4 | g2) c | r2 r4 c4 | % 45-48
  c c f,4. g8 | as4 f f'2~( | f4 c des2~ | des4 c8 bes) c2\fermata | % 49-52
}

nBariton = \relative c' {
  \global
  a2. a4 | bes f f2 | f r4 f~( | f8 es des c bes4 bes'~ | % 1-4
  bes a8 g) a2 | r4 g2 g4 | as2 g4 c~ | c as c2 | % 5-8
  f,1 | r2 g | c2. bes4 | as2 g | % 9-12
  R1 | r2 r4 g4 | bes c es4. es8 | d4 c2( g4~ | % 13-16
  g as f2) | es r4 g | f f g c | f,2 c'( | % 17-20
  c,) g'~ | g1 | r4 as2 as4 | as2 es4 as~ | % 21-24
  as f2 as4~( | as g8 f g4) g | as as2 g4 | c4. bes8 as4 f~ | % 25-28
  f g as8( f bes4~ | bes a8 g a2) | bes r4 bes | bes bes f4. g8 | % 29-32
  as4 bes c( bes | des2 c) | f, r | r4 c' c c | % 33-36
  g4. as8 bes4 c | as2 g | r4 c c c | g as c f, | % 37-40
  r c' c c | f,4. g8 as4 g | f2 f | r4 as as as | % 41-44
  es8.\noBeam g16 f8( as~ as g16 f g4) | as2 r4 c | c c f,4. g8 | as4 bes g2 | % 45-48
  f r4 f~ | f f2 f4 | as f f2 | f1\fermata | % 48-52
}

nBass = \relative c {
  \global
  f2. f4 | bes,2 a | bes f' | bes,1 | % 1-4
  f' | r4 c2 c4 | f2 e | f c | % 5-8
  des1 | c | c2 es4 es | f2 c4 c | % 9-12
  c'2. bes4 | as2 es2~ | es r | r2 r4 c4 | % 13-16
  es f as4. as8 | g4 g4.( f8 es4 | d2) c4 c | bes bes c4. bes8 | % 17-20
  as2 g | c1 | r4 as2 as4 | as2 as | % 21-24
  des2. c4 | bes2. es4 | as,2 es'4. es8 | c4 c f2~ | % 25-28
  f4 es des bes( | f'1) | bes,1 | R1 | % 29-32
  R | R | r2 r4 f'4 | f f c4. d8 | % 33-36
  es4 f g( as~ | as8 g f4~ f8 e16 d e4) | f2 r | r4 f f f | % 37-40
  c4. des8 es4 f | des2 c | r2 r4 des4 | des des as4. bes8 | % 41-44
  c4 des bes2( | as1) | c2 r | r c | % 45-48
  a4 a bes bes | f'2 bes,2 | f'4.( es8 des4 bes) | f'1\fermata | % 49-52
}