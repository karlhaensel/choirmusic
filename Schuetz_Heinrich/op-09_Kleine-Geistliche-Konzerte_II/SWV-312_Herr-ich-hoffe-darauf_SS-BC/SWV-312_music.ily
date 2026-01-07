\version "2.24.4"

tempusImperfectum = {
  \time 4/2
  \set Timing.timeSignatureFraction = #'(4 . 4)
}
MIDITempoImperfectum = {
  \tempo 2=58
}

noTimeSignature = { \once \omit Staff.TimeSignature }

tempusUltimum = {
  \noTimeSignature \time 10/2
}

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key d \dorian
  \tempusImperfectum
  \autoBeamOff
  \set Score.tempoHideNote = ##t  % MIDI tempo only
  \MIDITempoImperfectum
}

nSopranI = \relative c' {
  \global
  d2 r4 d f2 g4 a | e2 r8 g f e f2 e | d r4 d8 g e([ f16 g c,8 d16 e] f8[ g16 a d,8 e16 f] | g8[ a16 b e,8 fis16 g] fis4.) fis8 g2 r4 g |
  f e d d c2 r4 e8 a | fis([ g16 a d,8 e16 fis] g8[ a16 b e,8 fis16 g] a8[ b16 c fis,8 g16 a] gis4.) gis8 | a2 r4 a g! f e e | d2 r a' r4 a |
  c2 d4 e b2 r8 d c b | c2 b a8 c b a bes2 | a1 g | r2 r4 g8 c a([ b16 c f,8 g16 a] b8[ c16 d g,8 a16 b] |
  c8[ d16 e a,8 b16 c] b4.) b8 c2 r4 d | c8 b b a a4 a8 d b([ c16 d g,8 a16 b] c8[ d16 e a,8 b16 c] |
  d8[ e16 f b,8 c16 d] cis4.) cis8 d2 r4 e | d8 c c b b2 r4 c bes a | g( f2) e4 f1 |
  
  R\breve*2 | r8 a fis fis a a16 a fis8 fis16 fis
  a8 a d, d r a' b cis | d2 b a1 | g4 r8 d' b b d d16 d b8 b16 b d8 d g, g r4 |
  R\breve*3 r8 a fis fis a a16 a fis8 fis16 fis
  a8 a d, d r fis g a | bes2 r8 g a bes c2 r8 a bes c | d2 r4 g, g1 |
  f2 r8 d e f g2 f | e1 d | r r2 r4 c' |
  
  a8([ b16 c f,8 g16 a] b8[ c16 d g,8 a16 b] c8[ d16 e a,8 b16 c] b4.) b8 | c2 r4 d c b a r8 d |
  b8([ c16 d g,8 a16 b] c8[ d16 e a,8 b16 c] d8[ e16 f b,8 cis16 d] cis4.) cis8 | d2 r4 e d c! b2 |
  r4 c bes a g f f e | f2 r4 a g f e d' | c bes a g f2( e4 d) | \tempusUltimum e1 d\longa\fermata \bar "|."
}

nSopranII = \relative c' {
  \global
  R\breve*7 |
  r1 f2 r4 f |
  a2 b4 c gis2 r4 r8 b | a gis a2 gis4 a4 r8 a g! fis g4~( | g fis8[ e]) fis2 g1 | R\breve |
  r2 r4 d8 g e([ f16 g c,8 d16 e] f8[ g16 a d,8 e16 f] | g8[ a16 b e,8 f16 g] fis4.) fis8 g2 r4 a |
  g8 f f e e4 e8 a fis([ g16 a d,8 e16 fis] g8[ a16 b e,8 f!16 g] | a8[ b16 c fis,8 g16 a] gis4.) gis8 a2 r4 c | bes a g g f1 |
  
  r8 g e e g g16 g e8 e16 e g8 g c, c r e f g | a2 f e1 | d
  r | R\breve | r1 r8 d' b b d d16 d b8 b16 b |
  d8 d g, g r b cis d e2 c! | b1 a2 r8 e f g | a2 f e1 | d4 r8 a' fis fis a a16 a
  fis8 fis16 fis a8 a d, d r4 | r8 d e fis g2 r8 e f! g a2 | r8 f g a bes2 e,4 f2( e4) |
  f8 f g a g4 f e( d d2~ | d4 cis8[ b] cis2) d2 r4 f | d8([ e16 f bes,8 c16 d] e8[ f16 g c,8 d16 e] f8[ g16 a d,8 e16 f] e4.) e8 |
  
  f2 r4 g f e d r8 g | e([ f16 g c,8 d16 e] f8[ g16 a d,8 e16 f] g8[ a16 b e,8 fis16 g] fis4.) fis8 |
  g2 r4 a g f! e r8 a | fis8([ g16 a d,8 e16 fis] g8[ a16 b e,8 fis16 g] a8[ b16 c fis,8 g16 a] gis4.) gis8 |
  a2 r4 c bes a g2 | r4 a g f e d' c bes | a g f e2( d4 d2~ | \tempusUltimum d cis) d\longa\fermata \bar "|."
}

nBC = \relative c {
  \global
  d1 d | cis d4 g, a2 | d g, c d | e4 c d2 g, c |
  d4 e f g c,2 a | d e f4 d e2 | a, d e4 f g a | d,2 r d1 |
  a e'2 b | e4 a, e'2 a, d4 g, | d'1 g,~ | g2 c f g |
  a4 f g2 c, d | e4 c d2 g a |
  bes4 g a2 d, e | f4 d e2 a,4 f g a bes2 c f,1 |
  
  c'1 c | cis2 d a1 | d1
  d | fis2 g d1 | g g |
  g gis2 a | e1 a, | a\breve | d1
  d | g, a | bes c4 bes4 c2 |
  f, bes g1 | a d2 d | bes c d4 bes c2 |
  
  f2 g a4 f g2 | c, d e4 c d2 |
  g a bes4 g a2 | d, e f4 d e2 |
  a,4 f g a bes2 c | f, e4 f c' d a bes | f g a c d1 | \tempusUltimum a d\longa\fermata \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>\breve | <_>1. <_+>2 | <_>\breve | <_>2 <_+>1. |
  <_>\breve | <_+>1 <_>4 <_+> <_+>2 | <_>1. <_>4 <_+> | <_>\breve |
  <_>1 <_+> | <6>2 <4>4 <_+> <_>2 <6[-] _+>4 <_-> | <4>2 <_+> <_>1 | <_>\breve*2 |
  <_>2 <_+>1. |
  <_>4 <6> <_+>2 <_+>1 | <6>4 <_+> <_[+]>1 <_->2 | <6>4 <5> <4> <3> <_>1 |
  
  <_>\breve | <_>1 <_[+]> | <_+>
  <_+> | <_> <_[+]> | <_>\breve*2 |
  <_[+]>1 <_+> | <_+>2 <6 4> <_+>1 | <_[+]>\breve |
  <_[-]> | <_> |
  <_>2 <6>4 <5> <6>2 <5> | <4> <_+> <_+> <_!> | <_>\breve |
  
  <_>\breve | <_>1. <_+>2 |
  <_>1. <_[+]>2 | <_[+]>1 <_>4 <_[+]> <_[+]>2 |
  <_> <_->1. | <_>\breve*2 | <_>1 <_>\longa \bar "|."
}
