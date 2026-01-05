\version "2.24.4"

tempusImperfectum = {
  \time 4/2
  \set Timing.timeSignatureFraction = #'(4 . 4)
}
MIDITempoImperfectum = {
  \tempo 2=64
}
MIDITempoImperfectumTarde = {
  \tempo 2=54
}

tempusPerfectumLong =  {
  \time 6/1
  \set Timing.timeSignatureFraction = #'(3 . 1)
  \once \override Staff.TimeSignature.style = #'single-digit
}
tempusPerfectumShort =  {
  \time 3/1
  \set Timing.timeSignatureFraction = #'(3 . 1)
  \once \override Staff.TimeSignature.style = #'single-digit
}
MIDITempoPerfectum = {
  \tempo 1=128
}

noTimeSignature = { \once \omit Staff.TimeSignature }

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key a \aeolian
  \tempusImperfectum
  \autoBeamOff
  \set Score.tempoHideNote = ##t  % MIDI tempo only
  \MIDITempoImperfectum
}

nSopranI = \relative c'' {
  \global
  a8 a a b c4 c8 d b2 a | r8 g a b c4 c8 d d([ e]) f([ e]) d2 | c1 r |
  R\breve*4 |
  r1 a8 a a b c4 c8 d | gis,4( a2 gis4)
  a8 e f g! a4 a8 a | b([ c]) d([ c]) c4. b8( c4) r8 e, e4. fis8 | g g g g g4. fis8( g4) d f! e8 e |
  d2 r4 e fis4. g8 a a a a | a4. gis8( a2) r r8 e' d e |
  
  cis8 cis r4 r8 d c! d b b r4 r8 c b c | a8.([ b16] c2 b4) c8 g f g e e r4 |
  r8 c' b c a a r4 r8 a g a f f r4 | r8 d' c d b2 a1 |
  r8 fis a a16 g fis8 a g fis g4 fis r2 | r1 r8 c' e e16 d c8 e d c |
  d4 cis r e8 f d d d d16 e c!8 b c4 | b r8 b a gis a4 gis1 | R\breve*2 |
  r1 r2 r4 d'~ | d d8 d d4. cis8 d4 a8 b c!4 b |
  
  a4.( g8 a[ g g f]) g1 | e2.( f8[ g] a2. b4 | c4.) c8 c4 a b( c2 b4) | c2 g2.( a8[ b] c2~ | c4 d8[ e] f2~ f4.) f8 e4 c |
  d1 c2 c4 c~( | c b8[ a]) b2 c1 | e4 c a a r2 r4 r8 b | c b a4 r r8 d e d c4 b2 |
  a1 cis8 cis cis cis d4 d8 e | cis4.( d16[ e] d2. cis8[ b] cis2) | d r r1 |
  r2 r8 g, b! c d4 d8 d c4 b | a2 a8 fis a b c4 c8 c b4 a~ | a gis8([ fis] gis2) a1 |
  r r8 a b cis d a d c! | \noTimeSignature \time 3/2 b2 a r4 c | \noTimeSignature \time 2/2 c4 c8 b c4 r |
  
  \noTimeSignature \time 3/2 r8 g a c b b r4 r8 g a c | \noTimeSignature \time 2/2 b b16 b c8 e d2 | c4 r r8 e, fis a |
  \noTimeSignature \tempusImperfectum gis8 gis r4 r8 e fis a a4. gis8( a2) | r1 d8([ c]) b([ a]) g4 g |
  r4 r8 c d c b4 g a2 gis4 | a4 r8 e' c d e c d c b4 r r8 b |
  c b a g fis fis g d' e d c b b4. a8 | a2 r r r4 g'8 f | e d c b d4 d 
  g, a2 gis4 | a2 c4. b8 b4 b r2 | e4. d8 d4. c8 c4. b8 b2 | a r b4 d g,2 |
  
  c2 r e4 g b,2 | \tempusPerfectumLong \MIDITempoPerfectum a1. e'2 d c d( c b a g f | e\breve) a2 g fis1 fis b2 a | g1 g d'2( c) c( b) b\breve |
  a1. c2 b a b( a g f e d | \noTimeSignature \tempusPerfectumShort c1.) e'2 d c | d( c b a g f | e\breve) r1 | R\breve. |
  \noTimeSignature \tempusPerfectumLong e'2( d) e( d) c( d) b\breve r1 | \noTimeSignature \tempusPerfectumShort c2( b) c( b) a( b) | g\breve r1 | e'2( d) c( d) b( c) |
  a1 r e' | c2( d c d e c | d1.) c2 b1 | a2( b) c( d) e( c) | d( c b a g f |
  e f g e) f( g | a1.) b2 gis1 | \tempusImperfectum \MIDITempoImperfectumTarde a1^\markup{\italic tarde.} r | e' d( | \noTimeSignature \time 8/2 c) b a\breve\fermata \bar "|."
}

nSopranII = \relative c' {
  \global
  R\breve*2 | r4 e e4. fis8 g g g g g4. fis8( |
  g4) d f! e8 e d2 r4 e | f4. g8 a a a a a4. gis8( a4) e | g f8 f e2 r r8 a g a |
  fis fis r4 r8 g f! g e e r4 r8 f e f | d2 c r a'8 a a b | c4 c8 d b2
  a8 g a b c4 c8 d | d([ e]) f([ e]) d2 c r | R\breve |
  r2 r4 g a4. b8 c c c c | b2 a4 e g f8 f e2 |
  
  r8 a g a fis fis r4 r8 g f! g e e r4 | r8 f e f d2 c r8 e' d e |
  c c r4 r8 a g a f f r4 r8 d' c d | b4( a2 gis4) a1 |
  r r4 a8. b16 g8 g g g16 a | f8 e f4 e2 r8 a c c16 b a8 c b a |
  b4 a r2 r r4 e'8 f | d d d d16 e c8 b c4 b1 | r4 g2 a8 b c2 g8 g g a |
  f4. d8 d4( cis) d2 r4 g~ | g g8 g g4. fis8 g4 g8 a b4 a | g4.( fis8 g[ fis fis e]) fis2 r |
  
  r1 r2 r4 g~( | g a8[ b] c2. d8[ e] f2~ | f4.) f8 e4 c d1 | c r4 e,2( f8[ g] | a2. b4 c4.) c8 c4 a |
  b4( c2 b4) c2 c | d2. d4 e1 | r d4 b g g | r r8 c8 d c b4 g( a2 gis4) |
  a1 r | e8 e e e f4 f8 g e1 | d2 r8 f a b c4 c8 c bes4 a |
  g2 g r1 | r2 r8 a c d e4 e8 e d4 c | b1 a2 r8 cis, d e |
  f d g f e2 d r4 a' | \noTimeSignature \time 3/2 a a8 gis a b c d e c f e | \noTimeSignature \time 2/2 d2 c4 g |
  
  \noTimeSignature \time 3/2 g4 g8 fis g g a c b b r4 | \noTimeSignature \time 2/2 r8 g a c c4. b8( | c) e, fis a gis gis r4 |
  \noTimeSignature \tempusImperfectum r8 e fis a gis gis16 gis a8 c b2 a | e'8([ d]) c([ b]) a4 a r2 r4 r8 b |
  c b a4 r r8 d e d c4 b8 a b4 | a2 r4 r8 c b c d g, b a g4 |
  r4 r8 c d c b a g4 a4.( gis16[ fis] gis4) | a4 e'8 d c b a g b4 b r2 | r r4 g'8 f
  e d c b b2 | a r r d4. c8 | c4 c4. b8 b4.( a8 a4.) gis8 gis4 | a4 c fis,2 g2 r |
  
  a4 c fis, g c e gis,2 | \tempusPerfectumLong \MIDITempoPerfectum a\breve r1 r\breve. | R\longa.*2 |
  r1 r2 e' d c d( c b a g f | \noTimeSignature \tempusPerfectumShort e\breve) a2 g | fis1 fis b2 a | g1 g d'2( c) | c( b) b\breve |
  \noTimeSignature \tempusPerfectumLong a\breve r1 d2( c) d( c) b( c) | \noTimeSignature \tempusPerfectumShort a\breve r1 | g2( f) g( f) e( d) | e\breve f'2( e) |
  d( e) c( d) b1 | r r c | b2( c b c d b | c1.) b2 a1 | g2( a) b( c) d( b) |
  e( d c b) a( b) | c( d) b\breve | \tempusImperfectum \MIDITempoImperfectumTarde a2^\markup{\italic tarde.} e'1 d2~( | d c2. b4 b2~ | \noTimeSignature \time 8/2 b4 a a2. gis8[ fis]) gis2 a\breve\fermata \bar "|."
}

nBC = \relative c' {
  \global
  a4 g f e d e a, b | c b a g f e g2 | c4 d e d c b d2 |
  g, a4 c g g' f e | d e f d e2 a, | b4 d a2 a'4 g8[ a] fis4 e |
  d4 cis8[ d] b2 c!4 b8[ c] a4 f | g2 c a'4 g f d | e c d e
  a, g' f e | d e f g c, d e d | c b d2 g, a4 c |
  g g' f e d c8[ b] a4 c | e2 a, b4 d a2 |
  
  a'2 d, g c, | f, g c c'4 b |
  a g f e d e f d | e1 a, |
  d2. d4 cis d b2 | cis4 d a2 a2. a'4 |
  gis a r a fis2 g4 a~ | a gis a a, e'1 | c c |
  d4 g, a2 d c | b a g g'4 fis | e1 d2 a'4 g |
  
  f4 e d2 c1 | c2. d8[ e] f2. g4 | a2 a4. a8 g4 f g2 | c,1 c2. d8[ e] | f2. g4 a2~ a4. a8 |
  g4 f g2 c, a | f g c1 | a g | a2 b c4. d8 e2 |
  a,1 a'2 fis4 gis | a2 d,4 g, a1 | d2~ d8[ d c b] a4. a8 g4 f |
  c'2~ c8[ c b a] g2 a4 b | d2~ d8[ d c b] a4. a8 b4 c | e1 a,2 a |
  d4 g, a2 d1 | \noTimeSignature \time 3/2 e2 a, a'4 f | \noTimeSignature \time 2/2 g2 c,4 e |

  \noTimeSignature \time 3/2 c8[ e] d4 g, f'8[ a] g4 f | \noTimeSignature \time 2/2 g4 f8[ c] g'2 | c,4 d8[ f] e4 d |
  \noTimeSignature \tempusImperfectum e4 d8[ f] e4 d8[ a] e'2 a, | a1 g |
  a2 b c4. d8 e2 | a,1 g |
  a2 b c4. d8 e2 | a,1 g | a2 b 
  c4. d8 e2 | a,1 g | a2 b c4. d8 e2 | a,1 g |
  
  a2 b c4. d8 e2 | \tempusPerfectumLong \MIDITempoPerfectum a,\breve. g | a b | c\breve d e |
  a,\breve. g | \noTimeSignature \tempusPerfectumShort a | b | c\breve d1~ | d e\breve |
  \noTimeSignature \tempusPerfectumLong a,\breve. g | \noTimeSignature \tempusPerfectumShort a\breve. | b | c\breve d1~ |
  d e\breve | a,\breve. | g | a | b |
  c\breve d1~ | d e\breve | \tempusImperfectum \MIDITempoImperfectumTarde a,1 g | a b |\noTimeSignature \time 8/2 c2. d4 e1 a,\breve\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>1 <_>4 <_+> <_>2 | <_>1. <4>4 <3> | <_>2. <_+>2 <6>4 <4> <_+> |
  <_>2 <6>1. | <_>1 <4>4 <_+> <_>2 | <6> <_+>1. |
  <_+>2 <6>1. | <4>4 <3> <_>1 <_>4 <5>8 <6> | <6 _+>4 <6> <_> <_+>
  <_>1 | <_>4 <6>1. <_+>4 | <_> <6> <4> <_+> <_>2 <6> |
  <_>1 <_[+]> | <4>4 <_+> <_>2 <6> <_+> |
  
  <_+>2 <_+> <_>1 | <_>2 <4>4 <3> <_>1 |
  <_>\breve | <_+>4 <4>2 <_+>4 <_>1 |
  <_+> <_>4 <_+> <6>2 | <_> <_+> <_!>1 |
  <_>4 <_+> <_> <_!> <_>1 | <4 2> <_+> | <_>\breve |
  <_>2 <4>4 <_+> <_>1 | <6>2 <7>4 <6[+]> <_>1 | <7>2. <6[+]>4 <_[+]>1 |
  
  <_>\breve*2 | <6>1. <4>4 <3> | <_>\breve | <_>1 <6> |
  <_>2 <4>4 <3> <_>1 | <_>\breve*2 | <_>1 <_>4 <6 > <[4]> <_+> |
  <_+>1 <_+> | <_> <4>2 <_+> | <_>2. <6> <_->2 |
  <_>1. <_>4 <6> | <_+>2. <6> <6>4 <6> | <4>2 <_+> <_+>1 |
  <_>2 <_+>1. | <4>4 <_+> <_>1 | <4>4 <3> <_>2 |
  
  <_>4 <_+> <_>1 | <_>2 <4>4 <3> | <_> <_+> <_+> <_+> |
  <_+> <_+> <_+> <_+> <4> <_+> <_>2 | <_!>1 <_> |
  <_> <_>4 <6> <4> <_+> | <_>\breve |
  <_>2 <4[+]>4 <6> <_> <6> <4> <_+> | <_>\breve | <_>1 
  <_>4 <6> <4> <_+> | <_>\breve | <_>1 <_>4 <6> <4> <_+> | <5>2 <6[+]> <_>1 |
  
  <_>2 <5[+]>4 <6> <_>2 <_+> | <_>\longa. | <_>\breve. <5[+]> | <_>\breve <_> <_+> |
  <_>\longa. | <_>\breve. | <5[+]> | <_> | <_>1 <_+>\breve |
  <_>\longa. | <_>\breve. | <6> | <_> |
  <_>1 <_+>\breve | <_>\breve.*3 | <6>\breve. |
  <_> | <_>1 <_+>\breve | <_>1 <6>2 <5> | <4> <_!> <9> <8> | <7> <6> <4> <_+> <_>\breve \bar "|."
}
