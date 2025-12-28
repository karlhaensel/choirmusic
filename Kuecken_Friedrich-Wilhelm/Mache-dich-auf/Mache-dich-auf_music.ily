\version "2.22.1"

global = {
  \key c \major
  \time 4/4
  \dynamicUp
  \autoBeamOff
}

common = {
  \global
  \tempo "Andante con moto" s4\mf s s8 s\< s4 | s2 s4\! \breathe s4\f | s1*8 |
  
  \tag #'s {s4^\markup{\italic "(ruhig und etwas langsamer)"} s2. | s1 | s2 \breathe s4\ppp^\markup{\italic "sempre pianiss."} s4 } \tag #'a \tag #'t \tag #'b {s4\fp s\> s s8 s\! | s1 | s2 \breathe s4\ppp s4 |} s1*6 | s4 s\cresc s2 | s1*2 | s4\ff s2. | 
  
  s1*4 | s2 \breathe s4\ff s | s1 | s2. s4\ppp | s1 | s2. s4\< | s1 | s8\f\dim s8\> s4 s s\p | s1*4 | 
  
  s4\> s2.  | s4\! s\mf s2 | s1 | s4 s\f s2 | \tag #'s \tag #'a \tag #'t { s1 | s4\pp s2. |s1 | s4\< s2. |} \tag #'b {s4\> s2 s4\! | s^\markup{\italic "dolce"} s s\< s | s8 s\! s4 s\< s | s\mf s\< s s |} s\f s2. | s1*3 | s2 s4\ff s | s2 s4\pp s | s1*2 \bar "|."  
}

beginn = { c4-^ e8. f16 g2 | g4-^ e8. g16 c4-. c8. c16 | }

nSopran = \relative c' {
  \global
  \beginn f2-^ c4-> d-> |
  e2~ e4-. r | R1*2 |
  r2 d4-> d8. d16 | g4( f e) d8. d16 | c4 r r2 |
  
  r2 r4 e8.\f e16 | e2\> b4->-.\p b->-. | b1 | b2 e,4\(-. e\)-. |
  c'4. c8 c4 c | c2. c8\(-. c\)-. | des2 des4 des | des2. cis8\(-. cis\)-. |
  d4. d8 d4 d | d2. d8\(-. d\)-. | e2. e4 |
  f2. f4 | fis2. fis4 | g4. g8 e4 d | d( c2) c8 c |
  
  f2 e4 d | d2 r4 \tuplet 3/2 { d8-.\( d-. d-.\) } | e2. d8. d16 |
  c2 a4-> a-> | c2-^ c4-. d-> | e-. e2-^ g,8\(-. g\)-. | bes4. bes8 bes4 c |
  d2 d4 d | es2 es4. es8 | es2. d8 c | c2 \slashedGrace e16 d4.. c16 |
  c4 r r2 | R1 | r4 f->\f e-> d-> |
  
  c2~( c8[ b]) a8. g16 | g4-. e'2-^ d8. d16 | c4-. c2-^ bes8. bes16 |
  a4-. cis2-^ d8.-. e16-. | f4-. r r2 | g,2 a4 a8. a16 | a2 b4 b8. b16 |
  c2 c4 d | e4. e8 d4 c | f2 e4 d | g2 c,4-> d-> |
  e2 e4. d8 | c4. r8 c4 c8. c16 | e2  c4 c8. c16 | e1~ | e4 r r2 |
}

nAlt = \relative c' {
  \global
  \beginn a2-^ a4-> a-> |
  a( gis8[ fis] gis4)-. r | r2 c,4-^ c8.\( c16 | a'4 g8. g16 f4( e-.)\) |
  d2~( d8[ e] f4 | g8[ a]) b8. b16 c4 g8. g16 | g4 r r c8.\f c16 |
  
  b4 r r a8. a16 | gis1 | fis8([ gis]) a2 a4 | gis2 e4\(-. e\)-. |
  e4. e8 e4 e | f4.( as8 g4) f8\(-. f\)-. | f2 f4 f | ges4.( beses8 as4) ges8\(-. ges\)-. |
  fis4. fis8 fis4 fis | g8([ a] bes4 a) g8\(-. g\)-. | bes4.( a8) bes4 bes |
  a4.( gis8) a4 a | c4.( b!8) c4 c | c4. c8 c4 b! | b( a2) a8 a |
  
  a2 g4 f8([ a]) | g2 b4-> a8. a16 | gis2. b8. b16 |
  a2 a4-> a-> | a2-^ a4-. a-> | g4-. g2-^ g8\(-. g\)-. | g4. g8 g4 g |
  f2 f4 f | es2~( es8[ g]) f g | as4.( g8) fis2 | g4( e) f4.. e16 |
  e4 r g4\mf-> g8. g16 | c4-. e,2-> e8. e16 | a2 a4\f-> a-> |
  
  g( f8[ e]) f4.. f16 | e4-. g-^( gis) b8. b16 | a4-. e2-^ e8. e16 |
  f4-. g2-^\f f8.-. g16-. | a4-. r r2 | e2 e4 e8. e16 | f2 f4 e8. e16 |
  e2 a8( c4) c8 | c4. c8 b4 b8([ a]) | a2 a4 a8([ c!]) | c2 a4-> a8([ as]) |
  g4(-> ges->) f4. f8 | e4. r8 f4 f8. f16 | e2 f4 f8. f16 | e1~ | e4 r r2 |
}

nTenor = \relative c {
  \global
  \beginn c2-^ c4-> c-> |
  b2~ b4-. r | R1 | r2 a4-^ a8. a16 |
  d4\( c8. c16 b4( a)\)-. | g2~( g8[ g']) f8. f16 | e8 r e8.\f e16 e2~ |
  
  e4 e8. e16 e2 | e1~( | e2~ e8[ dis]) cis([ dis]) | e2 e,4\(-. e\)-. |
  bes'4. bes8 bes4 bes | as4.( c8 bes4) as8\(-. as\)-. | as2 ces4 ces | beses4.( des8 ces4) beses8\(-. beses\)-. |
  a!4. a8 c!4 c | bes8([ c] d4 c) bes8\(-. bes\)-. | cis2 cis4 cis |
  d2 d4 d | dis2 dis4 dis | e4. e8 g4 f | e4. e8 c4 a |
  
  d4( a2) a4 | b2 r | r4 \tuplet 3/2 {b8-.\( b-. b-.\)} e4 e8. e16 |
  e2 a,4-> a-> | c2-^ c4-. c-> | <c g>-. <c g>2-^ g8\(-. g\)-. | bes4. bes8 bes4 bes |
  bes2 g4 g | g( c) des4. des8 | c2 c4. d!8 | e!4( c2) b8. g16 |
  g4-. e'2->\mf d8. d16 | c2 c4 b8. b16 | a4 a\f-> cis-> d-> |
  
  e( d8[ c]) d4( c8.) b16 | c4-. e2-^ e8. e16 | e4-. c-^( bes) g8. c16 |
  c4-. a2-^ a8.-. a16-. | a4-. r r2 | c2 c4 c8. c16 | d2 d4 d8. d16 |
  c2 e4 f8([ fis]) | g4. g8 f4 e | d( a8[ b] cis4) d | e2 e4-> f-> |
  c2 b4. b8 | g4. r8 a4 a8. a16 | g2 a4 a8. a16 | g1~ | g4 r r2 |
}

nBass = \relative c {
  \global
  \beginn f,2-^ f4-> f-> |
  e2 e4-^ e8. e16 | c'4\(-> b8. b16 a4( g)\)-. | f( e) d c |
  b( a g f' | e d c) \breathe b8. b16 | c4 r r a'8.\f a16 |
  
  gis4 r r c8. c16 | b1~ | b2 b,4 b | e2 e4\(-. e\)-. |
  c4. c8 c4 c | f2. f8\(-. f\)-. | des2 des4 des | ges2. fis8\(-. fis\)-. |
  d!4. d8 d4 d | g2. g8\(-. g\)-. | g4-. g2-> g4-. |
  f-. f2-> f4-. | a-. a2-> as4 | g4. g8 g4 gis | a2. a8 a |
  
  d,2 e4 f | g-. g2-> f8. f16 | e2. gis8. gis16 |
  a2 a4-> a-> | f2-^ f4-. f-> | c-. c2-^ g'8\(-. g\)-. | es4. es8 es4 es |
  bes2 b4 b | c2\( bes'4.\) bes8 | as1 | g2 g,4.. c16 |
  c4-. c'2\mf-> b8. b16 | a2 a4 g8. g16 | f4 d\f-> e-> f-> |
  
  g1( | c,4)-. c'-^( b) gis8. gis16 | a4-. a-^( g) c,8. c16 |
  f4-. e2-^ d8.-. cis16 | d2( e4 f-.) | g-^ e8. d16 c2~( | c4 b8.) a16 gis2 |
  a4-^ c8. e16 a4. as8 | g8. g16 g4~( g8->[ gis]->) a4 | d,2 e4 f8([ fis]) | g2 a4-> f-> |
  g2 g,4. g8 | c4. r8 c4 c8. c16 | c2 c4 c8. c16 | c1~ | c4 r r2 |
}