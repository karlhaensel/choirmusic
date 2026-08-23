\version "2.27.2"

tempusImperfectum = {
  \time 4/2
  \tempo 2=72
  \set Timing.timeSignature = #'(4 . 4)
}

tempusPerfectumLong =  {
  \time 6/1
  \set Timing.timeSignatureFraction = #'(3 . 1)
  \once \override Staff.TimeSignature.style = #'single-number
}
tempusPerfectumShort =  {
  \time 3/1
  \tempo 1=116
  \set Timing.timeSignatureFraction = #'(3 . 1)
  \once \override Staff.TimeSignature.style = #'single-number
}


noTimeSignature = { \once \omit Staff.TimeSignature }

setBarNumberXXXVI = \set Score.currentBarNumber = 36  % bad style, but could not find dynamic way to do this...

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key d \dorian
  \tempusImperfectum
  \autoBeamOff
}

nSopranI = \relative c'' {
  \global
  R\breve*4 | r1 r2 r4 e16([ d c b] |
  c2) b a gis | a e1 e2 | e1 r1 | r2 r4 a16([ g f e] f2) e~( |
  
  e4 d) d1 cis2 | d1 r1 | a'2 a d1 | c a2 b | c\breve~ | c |
  c1 r | r2 r4 b c a a gis | a f e2 r1 | R\breve |
  r1 r2 r4 d' | e c c b c a g2 | r1 r2 r4 g |
  
  a4 f f e f d f2 | r1 a2 b | c d c b | a2.( gis4) a1~ | a\breve~ |
  a~ | a1 r | r a~ | a b2 c~ | c b1 c2~ | c b4( a) g1 | g1. e2 |
  fis( g2. fis8[ e] fis2) | \time 2/2 \noTimeSignature g1 \bar "" \setBarNumberXXXVI \tempusPerfectumShort R\breve. | \tempusPerfectumLong \noTimeSignature R\longa. | e'\breve b1 c\breve g1 | a\breve g1 f\breve. | \tempusImperfectum e4 e2 a4 b b c c | 
  
  b2 a g e | e e r4 b'2( cis4) | d2 r r a~ | a g1 a2~ | a g f1~( |
  f2 e4 d) e2 g | f4.( g16[ f] e4. f16[ e] d2) cis | d( e f1~ | f2) d f g | a r a b |
  c r r r4 b | a2 r4 g f2 r4 e | d2 r r1 |
  
  r1 r2 r4 e~ | e f g2 g4 g2 f4 | e d e2 fis r |
  r r4 e f f g g | a4. a8 g4 g a a b b | c4. c8 bes4 bes a1~ | \time 10/2 \noTimeSignature a2 a a\longa \bar "|."
}

nSopranII = \relative c'' {
  \global
  R\breve*5 | 
  r2 r4 e16([ d c b] c2) b | e,( a1) gis2 | a r4 a16([ g f e] f2) e | d cis d r |
  
  r4 a'16([ g f e] f4) f e2 e | d1 r | r d2 d | a'1 f | g2 g c,( d) | e a g1 |
  f2 d c1( | b) a2 r | R\breve | r2 r4 a' b g g fis |
  g4 e d2 r1 | r1 r2 r4 g | a f f e f d c2 |
  
  r2 r4 g' f f d c | d e f2 r1 | R\breve*2 | d2 e f g |
  f e2. d2( cis4) | d1 r | R\breve | r1 g~ | g g | g2 g1 e2~ | e fis g2.( a4 |
  b!1 a) | \time 2/2 \noTimeSignature g1 \bar "" \tempusPerfectumShort \setBarNumberXXXVI R\breve. | \tempusPerfectumLong \noTimeSignature e'\breve b1 c\breve g1 | a\breve g1 e\breve e1 | c\breve e1 d\breve. | \tempusImperfectum cis1 r4 e2 a4 |
  
  b4 b c2. b2 a4~( | a gis) a2 r1 | r4 fis2( gis4) a2 f!2~ | f e1 f2~ | f e1 d2~( |
  d cis4 b) cis2 r | r1 r2 r4 g' | f4.( g16[ f] e4. f16[ e] d2) c | d4.( e8 f2) d4 f2 e4 | f2 r r4 a2 gis4 |
  a2 r r r4 g | f2 r4 e d2 r4 cis | d2 r r r4 e |
  
  f4 f g g a4. a8 g4 g | a a b b c4. c8 bes4 bes | a2 a a1 |
  R\breve | r2 r4 e2 f4 g2 | g4 g2 f4 e2 f4( e8[ d] | \time 10/2 \noTimeSignature e2.) e4 fis\longa \bar "|."
}

nTenor = \relative c {
  \global
  d1( a'2 g | a e) f1 | e2 r4 a16([ g f e] f2) e | d cis d r4 e'16([ d c b] | c2) b a gis |
  a2 r r1 | r4 e'16([ d c b] c4) c b2 b | a1 r | r r2 r4 a16([ g f e] 
  
  | f2) a a a | a1 r | R\breve*2 | e2 e a g~ | g f1 e2 |
  f4( g a f gis2 a~ | a gis) a r | R\breve*2 |
  r2 r4 d e c c b | c a g2 r1 | r2 r4 g a f f e |
  
  f4 d c c' a bes f f | f bes a2 r1 | R\breve*2 | r4 d2 cis4 d2 e |
  d c f,( e) | d1 r | R\breve | d' | d1 e | d e | cis2 d1( cis2) |
  d\breve~ | \time 2/2 \noTimeSignature d1 \bar "" \tempusPerfectumShort \setBarNumberXXXVI R\breve. | \tempusPerfectumLong \noTimeSignature r\breve. e\breve b1 | c\breve g1 a\breve e1 | f\breve c1 d\breve. | \tempusImperfectum a'2 r4 a2 gis4 a2 |
  
  e2 r4 e'2 d4 c2( | b) a g8([ a g f] e[ f16 g] a4) | d,2 r r c' | c1 c~ | c2 e, a1 ~ |
  a a2 r4 bes | a4.( bes16[ a] g4) e a4.( bes16[ a] g2) | a\breve~ | a1 r | f2 g a r |
  a b c r | r r4 c a2 r4 a | a2 r4 e f f g g |
  
  a4. a8 g4 e a a b b | c4. c8 b4 b e4. e8 d4 d | cis( d2) cis4 d2 r4 e, |
  f f g g a4. a8 g4 e | a a b b c4. c8 b4 b | e4. e8 d4 d cis2( d~ | \time 10/2 \noTimeSignature d) cis d\longa \bar "|."
}

nBass = \relative c {
  \global
  R\breve*2 | a1( d2 cis | d a) bes1 | a2 r4 e'16([ d c b] c2) b |
  a gis a r4 e'16([ d c b] | c2) a e' e | a,1 r2 r4 a'16([ g f e] | f2) e d cis |
  
  d2 d, a' a | d,1 r | R\breve | a'2 a d1 | c a2 b | c\breve |
  f,1 r | R\breve | r2 r4 e' f d d cis | d b a2 r1 |
  R\breve | r2 r4 g' a f f e | f d c2 r1 |
  
  r2 r4 c d bes bes a | bes g f2 r1 | R\breve*2 | d'2 a d cis |
  d a f4.( g8 a2) | d,1 d'~ | d fis2 g~ | g fis g1~ | g\breve | g1 e~ | e e |
  b2.( c4 d1) | \time 2/2 \noTimeSignature g, \bar "" \tempusPerfectumShort \setBarNumberXXXVI e'\breve b1 | \tempusPerfectumLong \noTimeSignature c\breve g1 a\breve e'1 | a, a r1 r\breve. | R\longa. | \tempusImperfectum r1 r2 r4 a'~ |
  
  a gis a a, e' g c,4.( d8 | e2) a, r1 | d8([ e d cis] b[ cis16 d] e4) a,1 | c1. f,2 | a cis d1 |
  a r | r2 r4 g' f4.( g16[ f] e4. f16[ e] | d2) cis d4.( e8 f2) | d1 r | r4 f2 e4 f2 r |
  r4 a2 gis4 a2 r | r r4 c, d2 r4 a | d2 r r1 |
  
  r1 r2 r4 e | a a g g c4. c8 g4 g | a2. a,4 d2 r |
  R\breve | r2 r4 e a a g g | c4. c8 g4 g a1~ | \time 10/2 \noTimeSignature a2 a, d\longa \bar "|." 
}

nBC = \relative c {
  \global
  \clef tenor d1 a'2 g | a e f1 | \clef bass a,1 d2 cis | d a bes1 | a2 e' c b |
  a gis a e' | c a e'1 | a, d2 a' | f e d cis |
  
  d2 d, a'1 | d, \clef tenor a''2 a | d c b1 | \clef bass a,2 a d1  | c a2 b | c1 c |
  f, e | e a4 c d e | cis d e2 f4 d d cis | d b a2 g4 b c d |
  b c d2 c4 e f g | c a g2 a4 f bes, c | f d c2 f4 bes, c2 |
  
  f4 d c2 d4 bes bes a | bes g f2 f' e | a g c, g' | a4 d, e2 a,1 | d2 a d cis |
  d a f4 f8[ g] a2 | d,1 d'~ | d fis2 g~ | g fis g1 | g g | g e~ | e\breve |
  b2. c4 d1 | \time 2/2 \noTimeSignature g, \bar "" \tempusPerfectumShort \setBarNumberXXXVI e'\breve b1 | \tempusPerfectumLong \noTimeSignature c\breve g1 a\breve e'1 | a,\breve g'1 a\breve e1 | f\breve c1 d\breve. | \tempusImperfectum a'2 a, e' a |
  
  e2 a4 a, e' g c,4.( d8 | e2) a, g'8[ a g f] e4 a | d,8[ e d cis] b4 e a,2 f | c'1. f,2 | a cis d1 |
  a1. bes'2 | a g4 e f2 e | d cis d4. e8 f2 | d1~ d4 \clef tenor d' bes c | f, \clef bass d bes c f \clef tenor f' d e |
  a, \clef bass f d e a,8[ b c d] e[ f g e] | f[ f, a b] c[ d e c] d[ d, f g] a[ b cis a] | d4 cis8[ b] cis[ d e cis] d[ c! bes a] g4 c |
  
  f8[ e d c] bes4 c f, f' e8[ d c b] | a4 a' g8[ f e d] c[ d e f] g[ a bes g] | a[ e f d] a'4 a, d cis8[ b] cis[ d e cis] |
  d[ c! bes a] g4 c f8[ e d c] bes4 c | f, f' e8[ d c b!] a4 a' g8[ f e d] | c[ d e f] g[ a bes g] a[ g f e] d4 c8[ b!] | \time 10/2 \noTimeSignature a4 g a2 d\longa \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>\breve*3 | <_>2 <_+> <_>1 | <_>2 <_+> <6> <6[+]> |
  <_>1. <_+>2 | <6>1 <4>2 <_+> | <_+>\breve | <6>2 <6[+]> <_>1 |
  
  <_>1 <4>2 <_+> | <_+>\breve | <_>2 <6>1. | <_>1 <5>2 <6> | <_>1. <6>2 | <3> <6 4> <4> <3> |
  <5> <6> <6 _+> <4> | <4> <_+> <_>4 <6>2 <_+>4 | <_>\breve | <_>1 <_>4 <6>2 <_+>4 |
  <_>2 <_+> <_>4 <6>2. | <_>2 <4>4 <3> <_>1 | <_>2 <4>4 <3> <_>2 <4>4 <3> |
  
  <_>2 <4>4 <3> <_>2. <6>4 | <_> <6> <_>1. | <_>\breve | <_>2 <4>4 <_+> <_+>1 | <_>2 <4>4 <_+> <_>1 |
  <_>2 <_-> <7>4 <6> <4> <_+> | <_+>1 <_+> | <_>1. <2>2 | <_>1 <3>2 <4> | <4> <3> <6 3> <6 4> | <4> <3> <_>1 | <6[+]>2 <7> <7> <6[+]> |
  <5[+]> <6> <4> <_+> | <_>1 | \setBarNumberXXXVI <_>\breve. | <_>\longa.*3 | <_+>2 <_+> <4>4 <_+>2. |
  
  <4>4 <_+> <_>2 <6> <7>4 <6> | <4> <_+> <_>1 <_>4 <_+> | <_+>2 <_>4 <_+> <_>1 | <6 4>2 <5 3>1. | <6>1 <9>2 <8> 
  <6 4>2 <5 _+> <_> <6> | <6> <6> <6> <6> | <_>\breve*2 | <_>1. <_>4 <_+> |
  <_>2. <_+>4 <_>1 | <_>1 <_>2 <_+> | <_>\breve |
  
  <_>\breve | <_>1. <_->2 | <_+>4 <6> <4> <_+> <_>1 |
  <_>\breve*2 | <_>2 <_-> <_+>1 | <4>2 <_+> <_>\longa \bar "|."
}
