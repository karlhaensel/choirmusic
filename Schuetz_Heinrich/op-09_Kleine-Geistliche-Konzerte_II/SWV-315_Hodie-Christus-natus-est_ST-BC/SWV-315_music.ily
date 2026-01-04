\version "2.24.4"

ficta = { \once \set suggestAccidentals = ##t }

global = {
  \key d \dorian
  \time 4/2  % not shown due to layout settings
  \autoBeamOff
}

nSopran = \relative c'' {
  \global
  a1. b4 b | cis2 d d cis | d d,1 d2 | e fis gis a4 a | a2 gis a r4 a8 \ficta g |  % original gis
  fis d d' c b g g f! e cis a' g f d g f | e1 d | R\breve*2 |
  
  a'1. b4 b | cis2 d d cis | d a1 a2 | a b cis d4 d |
  d2 cis d4 a8 g fis d d' c! | b2 a r4 g8 f e c c' b | \time 6/2 a a d c b b e d cis4( d2 cis4) d1\fermata |
  \time 4/2 R\breve | \time 2/2 R1*2 | \time 4/2 r1 d4. d8 d4 d |
  g,2 a bes8([ a a g16 f] g8.[ f16] e[ f g a] | bes8[ c16 d g,8 a16 bes] a8.[ g16] f[ g a b!] c[ d e b] c[ b c a] b8) e, a4~( | a gis8[ fis] gis4.) gis8 a4 e'8 e e4 e |
  a,2 a r e16([ f g d] e[ d e c] | \time 2/2 d8) d r4 f16([ g a e] f[ e f d] | \time 4/2 e8) e e16([ d e f] g[ f g e] f[ e f d] e8\([ f]\)) g([ f]) e4. d8 |
  
  d1 r | R\breve | r8 e fis4~( fis16[ d e fis] g4~ g16[ e f! g] a2) g8 f |
  e4( f2) e4 f a8 g f d d' c | b2 a r4 g8 f e c c' b | \time 6/2 a8 a d c b b e d 
  cis4( d2 cis4) d1\fermata | \time 4/2 a2. a4 a2 r8 a f a | g4 e r8 g d g f4 d8 f g4( a~ a g8[ f] g2) a1 |
  r1 r2 f16([ g a b] c[ d e c] | f4) e8 e d d d8. cis16 d8 d r4 r2 |
  g,16([ a b c] d[ e f d] g4) f8 f e e d d c c b b | e e d d c c r4 d2 r4 bes | g g r a g2 e |
  
  d r r4 f g a~ | a gis8 fis gis a b gis a4 a r e' | c2 a gis4 b cis d~ | d cis8 b cis d e cis
  d4 d r2 | r1 r4 a8 g f d g f | e2 d r4 e'8 d c a d c |
  b2 a r4 g8 f e c c' b | a a d c b b e d cis4( d2 cis4) | d d2 c!4 bes2.( a4 | \time 6/2 g1) fis\breve \bar "|."
}

nTenor = \relative c' {
  \global
  R\breve*4 | r1 a~ |
  a2 b4 b cis2 d | d cis d d,~ | d d e fis | gis a4 a a2 gis |
  
  a cis1 d4 d | e2 f e e | d1 r2 r4 a8 g | fis d d' c b g g f! e cis a' g f d g f |
  e1 d2 r | r4 e'8 d c a f' e d2 c | \time 6/2 r4 f8 e d d g f e1 d1\fermata |
  \time 4/2 a4. a8 a4 a d,2 e | \time 2/2 f8([ e e d16 c] d8.[ e16] f[ g a b] | c8[ d16 e a,8 b16 c] b8.[ g16] a[ b c d] | \time 4/2 e[ f g d] e[ d e c] d8) g, c2( b8[ a] b4.) b8 |
  c1 r | R\breve | e4. e8 e4 e a,2 a4 a |
  f2 f a16([ b c g] a[ g a f] g8) g r4 | \time 2/2 b16([ c d a] b[ a b g] a8) a r4 | \time 4/2 c16([ d e b] c[ b c a] b[ a b cis] d[ c! d b] cis4) d d4. cis8 |
  
  d2 r8 a b4~( b16[ g a b] c4~ c16[ a b c] d4~ | d16[ b c d] e2) d8 c b2. b4 | a2 r r1 |
  R\breve | r4 e'8 d c a f' e d2 c | \time 6/2 r4 f8 e d d g f
  e1 d\fermata | \time 4/2 c2. c4 c1 | r8 c g c bes4 g r8 d' a d c4 a8 a | bes1 a |
  f16([ g a b] c[ d e c] f4) e8 e d f f8. e16 f8 f r4 | r1 d,16([ e f g] a[ b c a] d4) c8 c |
  b b a a g16([ a b c] d[ e f d] g4) f8 f e e d d | c c b b c c r4 bes2 r4 g | e e r f e d2 cis4 |
  
  d2 r r r4 e' | d2 b a4 c d e~ | e d8 c d e f d e4 e r a, | g2 e
  d4 f g a~ | a g8 e f g e8. d16 d4 d r2 | r4 a'8 g f d d' c b2 a |
  r4 e'8 d c a f' e d2 c | r4 f8 e d d g f e1 | d r4 d2 c4 | \time 6/2 bes1 a\breve \bar "|."
}

nBC = \relative c {
  \global
  d2. e4 f2 g | a d, a'1 | d, d | c2 d e f | e1 a, |
  d2 g a bes | g a d,1 | d c2 d | e a, e'1 |
  
  a,\breve | a1. a4 a | b2 d d cis | d g, a bes |
  g a d d | e f g c, | \time 6/2 d g a1 d,1\fermata |
  \time 4/2 d1 d2 cis | \time 2/2 d1 | a2 e' | \time 4/2 c g'4 e d1 |
  c2 a g1~ | g2 d' a e'4 d | e1 a,2 a4 a' |
  f1 f2 c | \time 2/2 g' d | \time 4/2 a' g4 d a' g a2 |
  
  d, d e f | g a4 d, e1 | a,2 b c d |
  c4 bes c2 f, d' | e f g c, | \time 6/2 d g
  a1 d,\fermata | \time 4/2 f,2. f4 f1 | c'2 g d' c4 a | bes1 a |
  f'4 e d c bes c f, e' | d c bes8[ g] a4 d c g16[ a b c] d[ e f d] |
  g4 f8[ f] e4 d c d e g8[ g,] | c4 g' c, r g2 r4 g | c2 r4 f, g2 a |
  
  d, r r4 d' c2 | d e a,4 a' g e | f1 e2 a4 f | e1
  d2 c4 f,8[ g] | a[ b] c4 d8[ g,] a4 d2 d4 g, | a2 d e f4 d |
  e2 f g c, | d g a1 | d,2 bes4 a g1 | \time 6/2 g d'\breve \bar "|."
}

nBCfigured = \figuremode {
  \global
  <_>\breve | <_+>1 <4>2 <_+> | <_>\breve | <_>2 <_+> <_+> <_> | <4> <_+> <_+>1 |
  <_+> <_+> | <_->2 <_+> <_>1 | <_>1. <_+>2 | <_+>1 <4>2 <_+> |
  
  <_+>\breve | <_+>2 <6 4> <4> <_+> | <_>\breve | <_+>1 <_+> |
  <_->2 <_+> <_+>1 | <_+>\breve | <_>1 <_+>4 <4>2 <_+>4  <_>1 |
  <_>\breve*2 | <_>2. <6>4 <7>2 <6> |
  <_>1 <_-> | <_>1. <_+>2 | <4> <_+> <_>1 |
  <_>\breve | <_>1 | <_> <_+>2 <4>4 <_+> |
  
  <_>2 <5>4 <6> <5> <6> <5> <6> | <5> <6> <_>2 <_+>4 <4>2 <_+>4 | <4> <6[+]> <5[+]> <6> <5> <6> <_>2 |
  <_> <4>4 <3> <_>1 | <_+>\breve | <_>1
  <_+>4 <4>2 <_+>4 <_>1 | <_>\breve | <_>2 <_-> <_>1 | <7>2 <6> <_+>1 |
  <_>4 <6> <_>1 <_>4 <6> | <_>2. <_+>4 <_> <_6> <_>2 |
  <_>4 <6> <_>1 <6>2 | <_>1 <_->2 <_>4 <_->4 | <_>1 <6>4 <5> <4> <_+> |
  
  <_>1. <5>4 <6> | <_+>2 <_+> <_>1 | <7>2 <6> <_+> <_>4 <6> | <7>2 <6[+]>
  <_>1 | <_>2. <_+>4 <_+>2 <_!> | <_+> <_> <_+>1 |
  <_+> <_> | <_> <_+>4 <4>2 <_+>4 | <_>1 <_-> | <_> <_>\breve
}
