\version "2.22.00"

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key g \dorian
  \autoBeamOff
  \set Score.tempoHideNote = ##t  % Tempoangaben verbergen, nur für MIDI
  \override Staff.TimeSignature.style = #'single-digit % nur Anzahl Grundschläge, nicht Typ angezeigt
  \time 3/1
  \tempo 1=136
}


blindtakt = { \once \override Staff.TimeSignature.stencil = ##f }

dreier = { \bar "||" \time 3/1 \tempo 1=136  }

vierer = { \bar "||" \time 4/2 \tempo 2=70 }

ttTutti = {
  \global
  s\breve.*5 |  \vierer s\breve*7 |
  
  \blindtakt \time 6/2 s\breve. | \blindtakt \time 4/2 s\breve*11 |
  
  s\breve*11 |
  
  s\breve*9 \blindtakt \time 6/2 s\breve. | \dreier s\breve.*4 |
  
  s\breve.*2 | \vierer s\breve*10 |
  
  s\breve*12 |
  
  s\breve*13 |
  
  s\breve*11 |
  
  s\breve*2 | \blindtakt \time 6/2 s\breve. \bar ".|:" \time 3/1 \tempo 1=136 s\breve.*20 |
  
  s\breve.*18 | \vierer s1 \bar ":|." s1 | s\breve | \blindtakt \time 5/1 s1 s\longa \bar "|." 
}

nSopranI = \relative c'' {
  \global
  g1 bes c | d\breve. | c1. c2 c1 | d\breve bes1 | a a r | \repeat unfold 2 {r4 d2 fis,4 g8.([ a16 bes8. c16]) a2 |}
  r4 d2 fis,4 g8.([ a16 bes8. c16] a4) g | a2 g c4. bes8 a4 g |
  f e d4.( e8) cis2 r4 cis' | d d e8 f g f e4 d2 f4 | e2 d r4 fis, g g |
  
  a8 bes c bes a4 g2 bes4 a2 g1\fermata | r2 d'1 c2~ | c bes1 a2~ | a g f4. g8 a2~ |
  a4 d, e2 d f4. g8 | a4 a a2 g r | R\breve |
  R\breve*2 | r2 d'8. d16 d8 d 
  f2 d8. d16 d8 d | f4 f d2 c4 c a2 | b1 r2 f8. f16 f8 f |
  
  bes!2 f8. f16 f8 f d'4 c b2 | c4 c a2 b1 | r r2 d | \ficta bes!1 r2 c |
  a4 bes c c d2 g, | bes4( a8[ g] a2) g1 | r4 g a bes cis f e2 |
  d1 r8 d d e f4 e | d d r8 bes bes c d4 c bes bes |
  r8 d es f g4 f es es r8 es, es f | g4 f es d r8 es' es f g2~ |
  
  g4 es d2 c r | r1 r2 r4 f8 f | f bes, bes bes d2 es4 d a2 |
  b1 r8 c c c c4. c8 | d4 d e4. e8 d2 r | R\breve
  | R\breve | c4 c c c8 c cis1 | cis d2 e |
  e\breve d1 | b1. c2 d1 | c\breve b1 | c\breve. | a1. a2 g1 |
  
  fis fis bes | bes\breve a1 | a2 d4 d d c8 bes a4 a | d,8([ e f g] a[ bes] c2) c,4 es8.([ f16 g8. a16] |
  bes8.[ c16] d2) c8. bes16 a4 g r c | c4. c8 c4 c cis( r8 e cis4 r8 e | cis4 r8 e cis4 r8 f e4 d2 cis4) |
  d2 d,4 e fis2 fis4 g | a2 a4 bes c bes d8([ c c bes] | bes[ a a g] g[ f f e] fis4 g2 fis4) |
  g2 g8 \ficta f! g a bes4. c8 a2 | a8 g a bes c4. d8 b2 r8 a \ficta bes! c |
  
  d2. g,4 bes2 a | g1 r | R\breve | fis2. g2 a bes4~ |
  bes a2 g a4 fis2 | r4 a bes a c bes a a | r d8 d c4 bes8 bes a a g4 r2 |
  r4 g a8 a b4 r2 c | cis cis4 cis d d e2 | cis4 f4. f8 e4. e8 d2( cis4) |
  d bes c4. d8 bes2 r8 a a bes | c2. bes8 a g4 a2 a4 |
  
  a8 a bes c d2. d4 c4. c8 | bes1 cis8 cis \repeat unfold 3 {cis8 cis16 cis} |
  cis4 cis r d d d e4. e8 | d1 r | R\breve*2 |
  r1 r2 d | cis r4 d e2 r8 e, e e | e2 g2. g4 f2 | e a4 a bes2 c |
  d c4 bes a b r2 | g4 g g bes a2 a | a8 a g f e4 d e4. e8 d2 |
  
  d'8 d c bes a4 g a4. a8 g2 | c8 c bes a g4 f g4. g8 f2 |
  a8 a a a a2. d,4 e4. e8 | d1 r | bes'4 bes bes bes8 bes es2 es |
  c4 c c c8 c f2 f | d4 d d d8 d g4 g8 f es4 d8 c | d2 c r r4 c |
  d4. d8 c4 b c2 r4 d | es4. es8 d4 cis d d2 cis4 | d2 r4 d8 d d4 d8 d d4 c8 bes |
  
  c4 c r c d c bes4. c8 | a2 r4 a8 a a4 a8 a a4 g8 f | g4 g r a c bes a4. b8 g1 |
  a2. a4 a2. bes4 c2. c4 | c\breve c1 | f e e | d\breve. | d2. d4 d2. e4 f2. f4 | f\breve f1 | bes, a a |
  g\breve. | R\breve.*2 | d'2 d c c bes bes | a\breve a1 | R\breve. |
  R\breve.*5 | d2 d c c bes bes | a\breve a1 |
  
  d2 d c c bes bes | a\breve a1 | g a a | g\breve r1 | \repeat unfold 6 {d'2} | c\breve c1 |
  \repeat unfold 6 {e2} | d\breve d1 | \repeat unfold 6 {f2} | e\breve. | d\breve r1 |
  \repeat unfold 6 {d2} | c\breve c1 | \repeat unfold 6 {e2} | d\breve d1 | 
  \repeat unfold 5 {f2} e2 | d\breve c1 | bes a a | b r2 g'~ | g es d1~ | d d\longa |
}

nSopranII = \relative c'' {
  \global
  g1 g a | bes\breve. | a1. a2 a1 | bes( f) g | fis fis r | \repeat unfold 2 {r4 a2 d,4 g8.([ fis16 g8. a16]) fis2 |}
  r4 a2 d,4 g8.([ fis16 g8. a16] fis4) g | fis2 g a4. g8 \ficta f!4 e |
  d e f4.( g8) e2 r4 a | a b c8 d e d cis4 d2 d4 | d( cis) d2 r4 d, d e |
  
  f8 g a g fis4 g2 g4 g( fis) g1\fermata | r2 bes1 a2~ | a g1 f2~ | f es d es |
  f4 d d( cis) d2 d4. d8 | cis4 f e e r1 | R\breve |
  R\breve*2 | f8. f16 f8 f bes2 
  f8. f16 f8 f bes2~ | bes4 c g4.( f16[ g] a4) g8 g fis2 | g1 \ficta f!8. f16 f8 f bes2 |
  
  f8. f16 f8 f bes2. c4 g4.( f16[ g] | a4) g8 g fis2 g1 | r2 \ficta f! g1 | r2 bes c1 |
  r4 f, g a bes( a8[ bes] c4) c, | r2 d' b r4 g | a e f g a1 |
  a2 r8 d d e f4 e d d | r8 bes bes c d4 c bes bes r8 d es f |
  g4 f es es r8 es, es f g4 f | es es r8 es' es f g2. es4 |
  
  b( c2 b4) c2 r | r1 r4 f,8 f f2 | r8 g g g g2 g4 g fis2 |
  g1 r8 a a a a4. a8 | a4 d d cis d2 r | R\breve
  | R\breve | a4 a a a8 a a1~ | a2 a a b |
  cis( d1 cis2) d1 | R\breve.*2 | c1. d2 e1 | d\breve cis1 |
  
  d\breve. | e\breve e1 | fis r2 d4. d8 | d4 c8 bes a4 a g8.([ f16 es8. f16] g4) g |
  g2 g4 g d d r a' | a4. a8 a4 a a2( r8 e'8 cis4 | r8 e cis4 r8 e cis4 r f e2) |
  d1 d,4 e fis2 | fis4 g a2. bes4 a8([ g a g] | f4. es8 d[ c d \ficta e!] d[ e d e] d2) |
  d1 r | R\breve |
  
  R\breve | r1 r4 cis d cis | r4 f2 e d cis4 | d1 r |
  R\breve | r4 fis g fis a g fis fis | r2 r4 d'8 d c4 bes8 bes a a g4 |
  r g fis8 fis g4 r2 a | a a4 a a a g2 | a4 c!4. c8 bes bes a1 |
  a4 bes bes a bes8 f f g a2~ | a4 g8 f e2 e4 e e8 e f g |
  
  a2. bes4 g8([ a] bes2) a4 | bes4.( a16[ g] f2) a8 a \repeat unfold 3 { a8 a16 a } |
  a4 a r a bes d d cis | d1 r | R\breve*2 |
  r1 r2 g, | e r4 f a2 r8 cis, cis cis | cis2 \ficta c!2. c4 d2 | cis2 c4 d2 e f4~ |
  f g2 a8 g fis4 g r2 | e4 e e g fis2 fis | f8 f e d cis4 d d cis d2 |
  
  bes'8 bes a g fis4 g g fis g2 | a8 a g \ficta f! e4 f f e f2 |
  f8 f f e d2 cis4 d2 cis4 | d1 r | g4 g g g8 g g2 g |
  a4 a a a8 a a2 a | bes4 bes bes bes8 bes bes4 a8 bes c4 b8 a | b2 c r r4 f, |
  f bes a g g2 r4 g | g c bes a a8 a a a a4 a | a2 r4 bes8 bes bes4 bes8 bes bes4 a8 g |
  
  a4 a r a a a f g | fis2 r4 \ficta f!8 f f4 f8 f f4 e8 d | e4 e r f g g g fis g1 |
  f2. f4 f2. f4 g2. g4 | a\breve a1 | a bes a | a\breve. | bes2. bes4 bes2. bes4 c2. c4 | d\breve d1 | d, es d |
  d\breve. | R\breve.*2 | bes'2 bes a a g g | fis\breve fis1 | R\breve. |
  R\breve.*5 | bes2 bes a a g g | fis\breve fis1 |
  
  bes2 bes a a g g | fis\breve fis1 | g g fis | g\breve r1 | \repeat unfold 6 {bes2} | a\breve a1 |
  \repeat unfold 6 {c2} | b\breve b1 | \repeat unfold 6 {d2} | cis1.( b2 \ficta cis!1) | d\breve r1 |
  \repeat unfold 6 {bes2} | a\breve a1 | \repeat unfold 6 {c2} | b\breve b1 | 
  \repeat unfold 6 {d2} | g,\breve g1 | g g fis | g r | r2 c1 bes2 | a1 b\longa |
}

nAlt = \relative c' {
  \global
  d1 d f | f\breve. | f1. f2 f1 | f d\breve | d1 d r | \repeat unfold 3 { r4 d2 d4 c2 d | }
  d2 d f4. d8 c4 c |
  f, a a( g) a cis e e | d g g f a d,2 d4 | e2 fis4 fis, a a g c |
  
  c bes d bes2 d4 es( d) d1\fermata | r2 d8.([ es16 d8. c16] bes8.[ c16 d8. \ficta e16] f8.[ g16 f8. e16] | d2) d4 c bes2 f | g2. a4 bes2 es |
  d8([ c bes a] bes4 a) a1 | r2 cis d e | f8 e d d c4 bes a a bes8 c d c |
  d e f4 d4.( e8) cis4 d e8 f g4~ | g d2 cis4 d1 | r2 bes8. bes16 bes8 bes
  bes'2 bes,8. bes16 bes8 bes | bes'4 a g2 es4 c d2 | d1 r2 bes8. bes16 bes8 bes |
  
  d2 bes8. bes16 bes8 bes bes'4 a g2 | es4 c d2 d1 | r2 f bes,1 | r2 g' es4 f g g |
  a2 g d4( c8[ d] e[ f g e] | fis4 g2 fis4) g1 | r4 c, c c f d e2 |
  fis1 r2 r8 d d e | f4 e d d r8 bes bes c d4 c |
  bes bes r8 es es f g4 f es es | r1 g2 es8 es es f |
  
  g4 g g8([ f16 \ficta e!] d4) e2 r4 d | g g g,2 fis4 d'8 d d2 | r8 d d d b2 c4 d d2 |
  d1 r | r f8 e d c d4 d | es8 d c bes c4 c 
  d8 c bes a bes4 a8 g | a2. a8([ bes]) g1 | c4 f f f8 f e2.( d8[ e] | fis2) g a g |
  g8([ f g e] f[ e f d] e1) fis | d1. e2 \ficta f!1 | g\breve f1 | e\breve. | R\breve. |
  
  d1. e2 f1 | e\breve e1 | d f4. g8 f4 f8 f | f1 es2 es4 es |
  d2 d4 es a, b r f' | f4. f8 f4 f e4( r8 cis a4 r8 cis | a4 r8 cis a4 r8 cis a4 r8 b cis8.[ d16] e4) |
  fis2 fis,4 g a1 | d4 d c2 f4 d d2 | d8 a bes c d4.( c16[ bes] a4 bes a2) |
  g1 d'8 c d e f4. g8 | e2 e8 d e f g4. a8 fis2 |
  
  r8 d e fis g4 e fis( g2) fis4 | g1 r | R\breve | a,2. bes2 c d4~ |
  d c2 bes c4 a2 | R\breve | r1 r4 d8 d c4 bes8 bes |
  a a g4 r2 r f' | e e4 e f f g2 | e4 a4. a8 g2 f4 e2 |
  fis4 fis g es d8 \ficta f! \ficta e! d c2~ | c4 a8 bes c2 c2. c4 |
  
  c8 c d e f4 d es2 c | d1 e8 e \repeat unfold 3 { e8 e16 e } |
  e4 e r f f a g e | fis1 d4 cis2 d8 e | \ficta f!4. f8 e4 d2 c bes4 | a2 a r4 f'2 es4 |
  d1 b2 r4 g | a2 r4 d cis2 r8 a a a | a2 a4 a a1 | a2 f4 f g2 a |
  bes c4 c d g, r2 | c4 c c g d' d d8 d c bes | a4 a a4. a8 a2 d8 d d c |
  
  bes4 c d4. d8 d2 g8 f es d | c4 c c4. c8 c2 f8 f f e |
  d2. fis,4 a2. a4 | <<{\voiceOne d,1} \new CueVoice {\voiceOne d'1}>> \oneVoice d4 d d d8 d | es2 es es4 es es es8 es |
  f2 f f4 f f f8 f | g2 g4 g g2. f8 es | d2 e4 c d4. d8 c4. d8 |
  bes([ c d e] f4) d es4. es8 d4. \ficta es!8 | c([ d es f] g4) \ficta e! f4. f8 \ficta e!4. g8 | fis2 r4 \ficta f!8 f f4 f8 f f4 f8 f |
  
  f4 f r f f e d d | d2 r4 c8 c c4 c8 c c4 c8 c | c4 c r c es d d d d1 |
  d2. d4 d2. d4 e2. e4 | f\breve f1 | d d cis | d\breve. | g\breve f1 | bes,\breve bes1 | d c a |
  b\breve. | d2 d c c bes bes | a\breve a1 | bes\breve c1 | d\breve d1 | a'2 a g g f f |
  e\breve e1 | a2 a g g f f | e\breve e1 | d e e | d\breve. | bes\breve c1 | d\breve d1 |
  
  bes\breve c1 | d\breve d1 | bes c d | g,\breve r1 | \repeat unfold 6 {f'2} | f\breve f1 |
  \repeat unfold 6 {g2} | g\breve g1 | \repeat unfold 6 {a2} | a\breve. | fis\breve r1 |
  \ficta \repeat unfold 6 {f2} | f\breve f1 | \repeat unfold 6 {g2} | g\breve g1 |
  \repeat unfold 6 {a2} | d,\breve es1 | g es d | d r2 d4.( e16[ f] | g2 a) fis g~( | g fis) g\longa |
}

nTenor = \relative c' {
  \global
  bes1 g c | bes\breve. | c1. c2 a1 | d\breve g,1 | a a r | \repeat unfold 2 {r4 fis2 bes4 g2 a |}
  r4 fis2 bes4 bes8([ a g a16 bes] c4) bes | a2 b! a4. \ficta bes8 c4 a |
  bes c d d, r a' cis e | a, g c a a f2 a4 | bes( a) a d, fis a d, c |
  
  f d d g2 g4 c( a) b1\fermata | R\breve | r2 d1 c2~ | c bes1 a2~ |
  a g f4. g8 a2~ | a4 d, e2 d r4 a' | a8 c bes a g4 g d' d d8 e f e |
  d c bes4 f8.([ e16 f8. g16]) e4 f g8 a bes g | r e f g a4 e8 g fis1 | bes8. bes16 bes8 bes d2
  bes8. bes16 bes8 bes d2~ | d4 c b2 c4 g a2 | g b8. b16 b8 b d2 d8. d16 d8 d |
  
  f2 d8. d16 d8 d f4 f d2 | c4 g a2 g1 | r r2 bes | g1 r2 es' |
  c4 c c c f2 e | d1 g,4 b b b | c2 c cis4( d2 cis4) |
  d1 r2 d | bes1 r2 bes |
  g1 r2 es' | c b c4 g g es' |
  
  d c d( g,) g2 r4 b | c es d2 d r4 \ficta bes!8 bes | bes2 r8 g g g g4 g8 g a2 |
  g1 r | r r2 bes8 a g f | g4 g a8 g f e
  f4 d2 d4 | e8([ f] g2) fis4 g1 | a4 c c c8 c a2( b | cis4 d e2) a, e'4 e |
  e8([ d cis \ficta bes!] a2) a4 a8 a a2 a1 | R\breve.*2 | c1. bes2 a1 | f\breve e1 |
  
  d d d' | d\breve cis1 | d2 a4 a bes c8 d d4 d | r d,8([ e] f[ g a bes] c2) c,4 es8.([ f16] |
  g8.[ a16] bes2) a8. g16 fis4 g r \ficta f! | c'4. c8 c4 c r2 a( | r a r a) |
  a1 r2 d,4 e | fis2 c'4 bes a g a4.( bes8 | f4. g8 d4) g r g d16([ e fis g] a[ bes c d]) |
  b1 r | R\breve |
  
  R\breve | r1 r4 e, f e | r a2 g4 f2 e | d1 r |
  R\breve*2 | r1 r2 r4 d'8 d |
  c4 bes8 bes a a g4 r2 c | a a4 a a a d,2 | a'4 a2 bes4 cis d e( a,) |
  a d g, a f2 r8 c'8 c bes | a2. g8 f g4 e2 a4 |
  
  a8 d c bes a4 g g4.( f16[ g] a8[ bes c]) f, | f1 cis'8 a \repeat unfold 3 { a8 a16 a } |
  a4 a r a d a bes a | a1 bes4 a2 b8 c | a4. a8 g4 bes2 a g4 | fis2 fis bes4.( a8 g4) a |
  fis( g2 fis4) g1 | R\breve*3 |
  R\breve*3 |
  
  R\breve*2 |
  R\breve | r1 bes4 bes bes bes8 a | g2 g c4 c c c8 bes |
  a2 a d4 d d d8 c | bes2 bes4 a g2 g4 g | g2 g4 a a bes bes a |
  bes2 r4 g g c c b | c2 r4 a a d d cis | d2 r4 d8 bes bes4 bes8 bes bes4 c8 d |
  
  c4 c r c f, a d, g | a2 r4 a8 a8 a4 a8 a f4 g8 a | g4 g r f es g a a b1 |
  R\breve.*2 | f1 g a | d,\breve. | R\breve.*2 | g1 g fis |
  g\breve. | bes2 bes a a g g | fis\breve fis1 | R\breve.*2 | f'2 f e e d d |
  cis\breve cis1 | f2 f e e d d | cis\breve cis1 | d d cis | d\breve. | R\breve.*2 |
  
  R\breve.*5 | \repeat unfold 6 {f,2} |
  c\breve c1 | \repeat unfold 6 {g'2} | d\breve d1 | a'2 a a\breve | a r1 |
  \repeat unfold 6 {bes2} | f\breve f1 | \repeat unfold 6 {c'2} | g\breve g1 |
  \repeat unfold 5 {d'2} c | b\breve c1 | d c a | g r2 g8([ a b c] | d2) c4.( bes8 a2 g) | a1 g\longa |
}

nBass = \relative c {
  \global
  g1 g' f | bes,\breve. | f'1. f2 f1 | bes,\breve g1 | d' d r | \repeat unfold 3 { r4 d2 d4 es2 d | }
  d2 g, f4. g8 a4 a |
  d c bes2 a4 a a' g | fis g c, d a bes2 f4 | g( a) <<{d,4 d} \new CueVoice {d'4 d}>> d c b c |
  
  f, g d' es2 bes4 c( d) g,1\fermata | bes'1 f | g d | es bes2 c |
  d4 f, g( a) << {d,1} \new CueVoice {d'1}>> | r2 a b cis | d e fis g4 a |
  bes2( bes,) a4 d c bes | a2 a4 a d1 | bes8. bes16 bes8 bes bes'2 
  bes,8. bes16 bes8 bes bes'2~ | bes4 f g2 c,4 es d2 | g,1 bes8. bes16 bes8 bes bes'2 |
  
  bes,8. bes16 bes8 bes bes'2. f4 g2 | c,4 es d2 g,1 | r2 bes g1 | r2 es' c4 c c c |
  f2 e d c | r1 r4 g' g g | c2 bes a1 |
  d,2 d bes1 | r2 bes g1 |
  r2 es' c1 | r2 g' es8 c c d es4 c |
  
  g1 c2 r4 g' | es c b2 d4 \ficta bes'8 bes bes2 | r8 g g g g2 c,4 b d2 |
  g,1 r8 f f f f4. f8 | f'4 f g a d,2 g8 f es d | c4 c f8 \ficta e! d c 
  bes2 g4 bes | c2 d g,1 | f'4 f f f8 f a1~ | a2 g fis g |
  a~( a8[ g16 f] e[ d cis bes] a1) d | g1. g2 f1 | es\breve d1 | c\breve r1 | R\breve. |
  
  d1. c2 bes1 | g\breve a1 | <<{d,2} \new CueVoice {d'2}>> d4 d bes a8 g d'4 d | bes2 f c' c4 c8 c |
  g2 bes4 c d g, r f' | f4. f8 f4 f a2( r | a, r a' r) |
  d,\breve | d4 e f2. g4 fis8([ e fis g] | d[ c d es] bes[ a bes c] d[ c d c] d2) |
  g,1 g'2 d | a a g4 g d' d |
  
  d c b c d2 <<{d,2} \new CueVoice {d'2}>> | g,1 a2 a4 a | f2 g a a | d d d4 d d2 |
  d es2. es4 d2 | r4 d d d c c d d | r d8 d d1 d2 |
  d d8 d g,4 r2 f' | a a4 a f d bes2 | a4 f4. f8 g g a1 |
  d4 d es f bes,8 d d \ficta e! f2~ | f4 e8 d c2 c4 c c8 c d e |
  
  f2. g4 es2 f | bes,1 a8 a \repeat unfold 3 { a8 a16 a } |
  a4 a r4 d bes f g a | <<{d,1} \new CueVoice {d'1}>> g,4 a2 d8 c | f4. f8 c4 bes2 f g4 | d'2 d bes c |
  d1 g, | R\breve*3 |
  R\breve*3 |
  
  R\breve*2 |
  R\breve | r1 bes4 bes bes bes8 bes | es2 es c4 c c c8 c |
  f2 f d4 d d d8 d | g2 g4 f es2 c4 c | g2 c4 f d bes f' f, |
  bes2 r4 g' es c g' g, | c2 r4 a' f d a' a, | d2 r4 bes8 bes bes4 bes8 bes bes4 bes8 bes |
  
  f4 f r f' d a bes g | d'2 r4 f8 f f4 f8 f f4 f8 f | c4 c r f c g' d d g,1 |
  d'\breve c1 | f,\breve f1 | R\breve.*4 | bes1 c d |
  g,\breve. | bes\breve c1 | d\breve d1 | R\breve.*2 | f\breve g1 |
  a\breve a1 | f\breve g1 | a\breve a1 | f g a | d,\breve. | R\breve.*2 |
  
  R\breve.*4 | \repeat unfold 6 {bes2} | f\breve f1 |
  \repeat unfold 6 {c'2} | g\breve g1 | \repeat unfold 6 {d'2} | a\breve. | <<{d,\breve} \new CueVoice {d'\breve}>> r1 |
  R\breve. | \repeat unfold 6 {f2} | c\breve c1 | \repeat unfold 6 {g'2} |
  d\breve d1 | R\breve. | bes1 c d | g, r2 b~ | b c d1~ | d g,\longa |
}