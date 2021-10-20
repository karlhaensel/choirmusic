\version "2.19.84"

global = {
  \key a \major
  \time 4/4
  \dynamicUp
  \autoBeamOn
  \tempo "Andantino"
}

dolce = \markup{\italic dolce} 

nTenorI = \relative c' {
  \global
  \dynamicUp
  \partial 4 a4^\markup{\italic {dolce e legato}} | cis2 cis4 b | a2. r4 | d2 cis4 a | b2 a4 a8( cis) |
  e2( d4) cis | b2 r4 b | b a d cis | b2 r4 b\mf | d2 d4 cis |
  b2. r4 | fis'2\> d4 b\! | a2 gis4 e8^\dolce( gis) | b2. a4 | gis2 r4 gis8( b) |
  d2. cis4 | b r r e, | e'2.\< d4\! |
  
  cis e d b | cis2.\> b4\! | a2 r | r4 gis\< b e\! |
  e dis\f e cis | b4.\>( a8) gis4\! r | ais2\p b | e\< dis4 dis\! |
  cis\f dis e dis | cis4.( dis8) cis4 cis8( b) | ais4 cis fis e |
  dis2 e4 cis | b2.\> a4\! | gis2 r4 e^\dolce | cis'2 cis4 b | a2. r4 |
  
  d2 cis4 a | b2 a4 a8( cis) | e2. d4 | cis e d b |
  cis2. b4 | a1 | fis2\fp fis4 fis | gis a b cis d2. d4 |
  gis,2 r | R1 | cis2 cis4 cis | d cis b a |
  gis2. gis4 | cis2 cis | b4( d) cis( b) | a2 r2 |
  
  d2 d4 d | cis b a gis | fis( gis a) ais |
  b2 cis4( d) | e2. d4 | cis2. cis4 | cis1 |
  d2 e | cis d | b cis | R1*2 |
  e2 e4 d | cis2.\< cis4\! | e2\>( d4) cis | b2\! b4 b |
  b( d) cis a | gis2 a4 b | cis2 r4 cis | fis1~( |
  
  fis4 e) d cis | b2 b4\<-. cis-. | d-.\! e-.\! fis2\f | cis r4 cis4^\dolce |
  cis2 r4 cis4\pp | cis2 cis4 b | a1 | d2 cis4 a |
  b2 a4 a8( cis) | e2.\< d4\! | cis e d b | cis2.\> b4 |
  a2\! r | R1 | e'2\p cis4 a | e2 e4 r |
  e'1~\< | e2 d4\! cis | b2\>( e\!) | a, r4 a | cis1 | \partial 2. a2 r4 \bar "|."
}

nTenorII = \relative c' {
  \global
  \dynamicUp
  \partial 4 a4 | a2 a4 gis | a2. r4 | a2 a4 a | gis2 a4 a |
  a2( gis4) a | gis2 r4 gis | gis a gis a | gis2 r4 gis\mf | b2 b4 ais |
  b2. r4 | cis2\> b4 b\! | a2 e4 r | r gis^\dolce gis a | e2 r |
  r4 b' b a | gis e\< fis gis\! | a\<( gis) a( gis\!) |
  
  a2. a4 | a2.\> gis4\! | a e a cis | b1 |
  a4\f a gis gis | fis2\> e4\! r | fis2\p b | b4\<( ais) b b\! |
  b\f b cis b | b2 b4 r | r fis fis ais |
  b2. a4 | a\>( gis fis) fis\! | gis2 r4 e^\dolce | a2 a4 gis | a2. r4 |
  
  a2 a4 a | gis2 a4 a | a2. b4 | a a a a  |
  a2. gis4 | a1 | R1*3 |
  cis2\fp cis4 cis | b a gis fis | eis2( fis4) gis | a2 gis4( fis) |
  eis2. eis4 | fis2 r | r1 | a2 a4 a |
  
  b a gis fis | eis( gis) fis eis  | fis gis fis2 |
  r b | b2. b4 | b2. b4 | ais1 |
  b2 b | a a | gis gis | r a | b1 |
  gis2 a4 gis | a2.\< a4\! | b2.\> a4\! | gis2 gis4 gis |
  b2 a4 a | gis2 a4 gis | a2 cis4 cis | cis( e) d b |
  
  ais( cis) b ais | b2 b4-. ais-. | b-. cis-. a\f( b) | cis2 r | 
  r2 r4 a4\pp^\dolce | a2 a4 gis | a1 | a2 a4 a |
  gis2 a4 a | a2.\< b4\! | a a a a | a2.\> gis4 |
  a2\! r4 a\p | cis2 cis4 b | a2. a4 | cis2 cis4 b |
  a1\< | a2 a4\! a | a2\>( gis\!) | a2 r4 a | a1 | a2 r4 
}

nBassI = \relative c' {
  \global
  \dynamicUp
  \partial 4 a4 | e2 e4 d | cis2. r4 | fis2 e4 cis | e2 cis4 cis8( e) |
  e2. e4 | e2 r4 e | e e e e | e2 r4 e\mf | fis2 fis4 e |
  d2. r4 | fis2\> fis4 fis\! | e2 e4 r | r e^\dolce e e | e2 r |
  r4 e e e | e r r e | e2.\< e4\! |
  
  a\> g fis fis\! | e2. e4 | cis2 r | gis'\< gis4 gis\! |
  fis\f fis gis e | dis2\> e4\! r | fis2\p fis | fis\< fis4 fis\! |
  gis\f fis e fis | gis2 gis4 gis | fis2. fis4 |
  fis2 e4 e | dis\>( e dis) dis\! | e2 r4 e^\dolce | e2 e4 d | cis2. r4 |
  
  fis2 e4 cis | d2 cis4 cis8( e) | e2( fis4) gis | a e fis fis |
  e2. e4 | cis1 | fis2\fp fis4 fis | fis fis fis fis | fis2. fis4 |
  eis2 r | R1*3 |
  d2 d4 d | cis dis eis fis | fis2 eis | fis r |
  
  R1 | cis2 cis4 cis | dis eis fis e |
  d2 e4( fis) | e( fis) g( fis) | e2. e4 | fis1 |
  fis2 e | e d | d cis | r fis | fis1 |
  e2 e4 e | e2.\< e4\! | e2.\> e4\! | e2 e4 e |
  e2 e4 e | e2 e4 e | e2 a4 a | fis2 fis4 fis |
  
  fis2 fis4 fis | g2 g4-. fis-. | fis-. a-. fis2\f | eis r |
  r r4 e\pp^\dolce | e2 e4 d | cis1 | fis2 e4 cis |
  e2 cis4 cis8( e) | e2\<( fis4) gis\! | a e fis fis | e2.\> e4 |
  cis2\! r4 cis\p | e2 e4 d | cis2. cis4 | e2 e4 d |
  cis1\< | cis2 fis4\! e | d1\> | cis2\! r4 cis | e1 | cis2 r4
}

nBassII = \relative c {
  \global
  \dynamicUp
  \partial 4 a4 | a2 a4 a | a2. r4 | a2 a4 a | e'2 a,4 a |
  cis2( b4) a | e'2 r4 e | d cis b a | e'2 r4 e\mf | b2 b4 b |
  b2. r4 | ais2\> b4 d\! | cis2 e4 r | r d^\dolce d cis | e2 r |
  r4 gis, a cis | e e\< dis d\! | cis\< d cis b\! |
  
  a\> cis d dis | e2.\! e4 | a,2 r | e'\< e4 e\! |
  b\f b b b | b2\> e4\! r | e2\f dis | cis\< b4 b\! |
  e\f dis cis dis | e2 e4 eis | fis e dis cis |
  b a gis a | b2.\> b4\! | e2 r4 e^\dolce | a,2 a4 a | a2. r4 |
  
  a2 a4 a | a2 a4 a  | cis2( b4) e | a, cis d dis |
  e2. e4 | a,1 | fis4\fp( gis) a ais | b cis d cis | b2. b4 |
  cis2 r | d d4 d | cis b a gis | fis2 gis4( a) |
  b2. b4 | a2 a | gis cis | fis, r |
  
  R1*3 |
  b2 b4 b | cis d e fis | g2. g4 | fis1 |
  b,2 gis | a fis | gis eis | r fis | d'1 |
  d2 cis4 b | a2.\< a4\! | gis2.\> a4 | e'2\! e4 e |
  gis,2 a4 cis | e( d) cis b | a2 a4 a | ais2 b4 d |
  
  fis2 fis4 fis | g2 g4\<-. fis-. | b,\!-. a-. d2\f | cis2 r |
  r r4 a\pp^\dolce | a2 a4 a | a1 | a2 a4 a | 
  e'2 a,4 a | cis2\<( b4) e\! | a, cis d dis | e2.\> e4 |
  a,4\! a\p a2~ | a a | a1 | a2 a |
  a1\< | a1 | a2\!\> a\! | a1~ | a | a2 r4
}
