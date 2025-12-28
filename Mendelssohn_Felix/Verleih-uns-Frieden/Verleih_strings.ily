\version "2.24.00"

dStringsI = { % ohne Cb-Dynamik am Anfang
  \global
  % Vios 
  \tag #'vioI \tag #'vioII {s2.*15 | s2.*51 | s2 s8 s\p | s2.\cresc | s8 s\f s2 |}
  % Vla
  \tag #'vla {s2.*12 s2._\markup{\dynamic p \italic {dim.}} | s2.*2 \mark \default | s2.*4 | % S. 4
  s2.*3 | s4. s\p | s2.*3 | s4. s\cresc | s2 s4\dim | s2. | % S. 5
  s2.\p | s2.*3 | s4 s4.\< s8\! | s2.*4 | s2.\dim | % S. 6
  \tag #'score \tag #'vla {s4\p\< s4\> s\!} \tag #'part \tag #'vla {s4\<_\markup{\dynamic p} s4\> s\!} | s2. \mark \default | s4 s2\pp | s2.*7 | % S. 7
  s2.\cresc | s2.*2 | s4 s2\cresc | s2. | s\dim | s\p | s2.*3 | % S. 8
  s2 s4\p | s2.*3 | s2.\p | s2. | s8 s\cresc s2 | s2.*2 | s8 s\f s2 | % S. 9
  }
  % S. 3
  \tag #'vcI {s8 s8\p s2 | s2. |} \tag #'vcII {s2. | s8 s\p s2 |} \tag #'vcI \tag #'vcII { s8 s\< s2 | s2.\! | s2\> s8 s\! | s s\< s2 | s2.\cresc | s2.\< | s2.\! |
  % S. 4
  s2.*2 |} \tag #'vcI { \dynamicUp s8\<_\markup{\italic dim.} s8\! s2\> | s2.\! \dynamicDown | s4.\p\< s4.\> |} \tag #'vcII { \dynamicUp s4.\< s4.\>_\markup{\italic dim.} | s2.\! \dynamicDown | s2.\p |} \tag #'vcI \tag #'vcII { s2.\! | s2.\pp | s2\< s4\sf | s2\> s8 s\! | s2. |
  % S. 5
  s2.*2 | s2.\p | s4 s2\< | s8\! s\cresc s2 | s4 s2\< | s2.\! | s4 s2\cresc | s2 s4\dim | s2. |
  % S. 6
  s4\p\< s4.\> s8\! | s4\< s4\> s4\dim | s2. | s2 s4\cresc | s2\< s4\sf | s2. |} \tag #'vcI { s4. s\p |} \tag #'vcII {s8 s\p s2 |} \tag #'vcI \tag #'vcII { s4. s\< | s4 s4.\> s8\! | s8 s\dim s2 |}
  % S. 7
  \tag #'vcI {s4\p\< s4\> s\!|} \tag #'vcII {s2.\p|} \tag #'vcI \tag #'vcII { s2. \mark \default | s2.\pp | s2.\< | s2.\! | s2.*5 |
  % S. 8
  s2.\cresc | s2.*2 | s4 s2\cresc | s2 s4\dim | s2. | s4\p\< s2\> | s4\< s2\> |} \tag #'vcI {s2.\dim|} \tag #'vcII {s2.\!|} \tag #'vcI \tag #'vcII { s2 s4\cresc |
  % S. 9
  s2 s4\sf | s2. |} \tag #'vcI { s4. s\p | s4. s\< | s4 } \tag #'vcII { s8 s\p s2 | s4 s2\< | s8 s\! } \tag #'vcI \tag #'vcII { s2\> | s16 s\1 s8 s2 | s2.\cresc | s2.*2 | s2.\f |}
}

dStringsII = { % jetzt alle zusammen
  \global
  % S. 3-9
  s2.*15 \mark \default | s2.*26 \mark \default | s2.*28 \mark \default|
  % S. 10
  \tag #'vioI \tag #'vioII {s2.\mf} \tag #'vla \tag #'vcI \tag #'vcII \tag #'cb {s2 s4\mf} | s2.*2 | s2.\< | s2.\! | s2 s4\dim | s2. | \tag #'vioI \tag #'vioII \tag #'vla \tag #'cb { s2. | s4 s2\cresc | s2.*3 |} \tag #'vcI \tag #'vcII { s8 s\< s2 | s2.\! | s2.*2 | s8 s\< s2 |}  
  % S. 11
  s4.\f\< s4.\> | s8 s\! s4 \tag #'vioI \tag #'vioII \tag #'vla { s4\dim | s2.\< | s4\> s\p s | s2.*2 | s2 s4\p | s2.\cresc | s2. | s4\f\> s2 |} \tag #'vcI \tag #'vcII {s4\dim | s4\< s2\> | s4\< s2\> |} \tag #'vcI {s2.\dim | s2 s4\p | s2\< s8 s\! |} \tag #'vcII {s2.| s2 s4\p | s2\< s4\! |} \tag #'vcI \tag #'vcII {s2. | s2\< s4\sf | s2 s4\dim } \tag #'cb { s4 | s2.\< | s2.\> | s2.\! | s2.\p | s | s\cresc | s | s\> |}
  % S. 12
  \tag #'vioI \tag #'vioII \tag #'vla \tag #'cb {s2.\dim | s2 s4\p | s2. |} \tag #'vioI \tag #'vioII {s2. | s2.\pp | s2.*6}  \tag #'vla {s2. | s2.\pp | s2.*2 | s2.\< | s2.\> | s2.\pp | s2.} \tag #'vcI \tag #'vcII {s2.*4} \tag #'vcI { s4. s\p | s2. | s8 s\< s2 | s2.\! |} \tag #'vcII {s8 s\p s2 | s8 s\< s2 | s8 s\! s2 | s2. |} \tag #'vcI \tag #'vcII { s2.\> |} \tag #'cb { s2.\dim | s\pp | s2.*4 |} \tag #'vcI \tag #'vcII \tag #'cb { s2.\pp | s2.\! } \bar "|."
}

nVioI = \relative c''' {
  \global
  % S. 3-8
  R2.*15 | R2.*26 | R2.*18 |
  % S. 9
  R2.*5 \cueDuringWithClef "cello1" #UP "bass" {\tag #'part {\set instrumentCueName = "Vc. I"} R2.*2 | r4 r} r8 as\( | g f bes as g\) es'~ | es c\( bes as g f\) |
  % S. 10
  es4\( g f\) | es2 es4 | es\( bes'\) as | g2 g4 | c2\( bes4\) | as\( g\) es8\( f\) | g2. | es4 r r | es\( as\) as8\( g\) | f2 r4 | f\( bes\) bes8\( as\) | g2 r4 |
  % S. 11
  bes,4\( es des\) | c\( bes\) as8\( bes\) | c2.~ | c | R2.*2 | r4 r g | as\( g f\) | bes2\( des4\) | c\( bes as\) |
  % S. 12
  g2.~ | g4 r g | as8\( es c es as c | es4\) r r | g,4\( f2\) | es4 r r | R2.*4 | R2.\fermata
}

nVioII = \relative c'' {
  \global
  % S. 3-8
  R2.*15 | R2.*26 | R2.*18 |
  % S. 9
  R2.*5 \cueDuringWithClef "cello1" #UP "bass" {\tag #'part {\set instrumentCueName = "Vc. I"} R2.*2 | r4 r} r8 f\( | es d es4.\) as8\( | es\) as\( bes d, es bes\) |
  % S. 10
  bes4\( es\) es8\( d\) | es2 des4 | c\( es4. d8\) | es2 g4 | as2\( f4\) | f\( es\) es~ | es\( d2\) | c4 r r | c c8\( d es4\) | d2 r4 | d\( es\) f | es2 r4 |
  % S. 11
  es,4\( f\) g | as\( g\) f | c'2.~ | c | R2.*2 | r4 r des, | c2\( f4\) | es2 es4 | es es \( f\) |
  % S. 12
  es2.~ | es4 r es | c'2.~ | c4 r r | es,4.\( d8 f4\) | bes, r r | R2.*4 | R2.\fermata
}

nVla = \relative c' {
  \global
  % S. 3
  R2.*9 |
  % S. 4 
  R2.| \cueDuring "cello1" #UP {\tag #'part {\set instrumentCueName = "Vc. I"} R2.*2} | as2.~ | as4. as8\( g f\) | f4\( es\) r | R2.*4 |
  % S. 5
  R2.*3 | r4 r8 c\( es g | c4\) r r | r r8 d,\( f\) f\( | bes4\) r r | r4 r8 g8\( as bes\) | c\( bes as4\) g4\( | f es des\) |
  % S. 6
  c2.~ | c~ | c4 r r | R2. | r4 es2~ | es4\( c'\) r | R2.*3 | as2.~ |
  % S. 7
  as4. as8\( g f\) | f4\( es\) r | r g\( bes\) | r es,\( g\) | r f\( f'\) | r es\( g,\) | r c,\( c'\) | r bes\( as\) | r c\( g\) | r g8\( c, es g\) |
  % S. 8
  c\( bes\) as4\( es\) | r d\( f\) | bes8\( c d es bes4\) | r bes8\( es, f g\) | as4 as'\( g\) | f\( es des\) | c c,2~ | c2.~ | c4 r r | R2. |
  % S. 9
  r4 r es | es\( as\) r | R2.*2 | es'2. | as,2.~ | as8 as8\( g f es\) as'\( | g f g es~ es f,\) | g\( as bes c\) es4~ | es8 es,\( g as bes\) bes\( |
  % S. 10
  es8 g bes4\) bes | g2 bes4 | es,\( g\) bes, | bes2 es4 | es'2\( d4\) | bes2 c4~ | c2 b4 | c r8 c,,\( es g\) | c4 as'\( bes8 c\) | f,4 r8 f\( d f | bes as\) g4 bes | bes r8 es,,\( g bes |
  % S. 11
  es4\) as,\( es'\) | es\( des\) c | c,2.~ | c | R2.*2 | r4 r bes' | as2 as4 | g2 g4\( | c2.\) |
  % S. 12
  c2.~ | c4 r c | <c~ es~>2. | <c es>4 r r | bes2.~ | bes4 r r | R2. | as2.~ | as4. as8\( g f \) | f2.\espressivo\( | es2.\fermata\)
}

nVcI = \relative c {
  \global
  % S. 3
  r8 bes\( g bes es f | g2\)  f8\( g | as\) es\( c es c' des | es4.\) es8\( d c | bes4.\) c8\( bes as | g\) bes\( g bes es d\) | c4\( bes as8 g\) | as\( bes c d\) es4~ | es8 g4\( f8 c d\) |
  % S. 4
  es4.\( d8 c d\) | es4.\( d8 c d | es\) c\( des2~\) | des8 bes\( c2~\) | c8 c\( f c bes as\) | as4\( g8 f g as\) | bes4\( es4. d8\) | \clef "tenor" es\( f g as bes g\) | es8\( g4 f8 c d | es4\) bes8\( c des4\) |
  % S. 5
  c8 r e\( f g4~\) | g8\( f es bes\) c4~ | c8\( d es\) c~ c\( b\) | c\( g es g c d | es\) g4\( f es8\) | d\( bes f bes d es | f\) as4\( g f8\) | es\( bes g bes es des\) | c4. f4 es8~ | es des4 c8\( bes f'\) |
  % S. 6
  e\( f g e c d\) | e\( f g e c as\) | \clef bass g\( e c g c,4\) | f r c''8\( d | \clef "tenor" es f g as bes g\) | es2 r4 | r \clef bass r8 d\( c d | es4.\) d8\( c d | es\) c\( des2~\) | des8 bes\( c2~\) |
  % S. 7
  c8 c\( f c bes as \) | as4\( g8 f g as\)  | bes4\( es4. d8\) | \clef "tenor" es\( f g as bes g\) | es\( g4 f8 c d\) | es4\( bes8 c des4\) | c4\( e8 f\) g4~ | g8\( f es! bes\) c4~ | c8\( d es\) c~ c\( b\) | c\( g es g c d |
  % S. 8
  es\) g4\( f es8\) | d\( bes f bes d es | f\) as4\( g f8\) | es\( bes g bes es des\) | c\( des es\) f4 es8~| es des4 c8\( bes f'\) | e\( f g e c d\) | e\( f g e c as\) | \clef bass g\( e c g c,4\) | f4 r \clef "tenor" c''8\( d |
  % S. 9
  es! f g as bes g\) | es2 r4 | r4 \clef bass r8 d8\( c d | es4.\) d8\( c d | es\) c\( des2~\) | des8 bes\( c2~\) | c8 c->\( bes as g f\) | g\( d' es c bes as\) | bes\( d es4. c8\) | bes\( c es f g as\) |
  % S. 10
  g8\( es bes4\) bes, | c2 g4 | as\( g8 as\) bes4 | es,2 es'4 | as,2 bes4 | d\( es\) as | g2. | r8 g\( es g c d | es4\) f,,\( g8 as | bes\) f'\( d f bes c | d4\) r r | r8 bes\( g bes es f |
  % S. 11
  g4\) c,,\( es\) | as\( es\) c'8\( d\) | e\( f g e c d\) | e\( f g e c as\) | g\( e c g c,4\) | f r \clef "tenor" c''8\( d | es f g as bes g\) | c,4 r c8\( d | es f g as bes g\) | es4 r \clef bass f,,4\( |
  % S. 12
  c g' g'\) | c\( es g\) | as2.~ | as4 r r | r r8 d,\( c d | es4.\) d8\( c d | es\) c\( des2~\) | des8 bes\( c2~\) | c8 c\( f c bes as\) | as2.\espressivo\( | g\fermata\)
}

nVcII = \relative c {
  \global
  % S.3
  R2. | r8 es\( bes es as bes | c2\) as8\( bes | c bes as g\) as4~ | as8\( g as f d4\) | es8\( g es g bes4\) | as\( g f8 e\) | f\( g as ces bes des\) | c\( bes as2~\) |
  % S. 4
  as8 g\( as2~\) | as8 g\( as2~\) | as4. g8\( f g | as4.\) g8\( f es | d2.~\) | d4 es8\( d es f | g as bes4 as\) | g8\( as bes c des4\) | c4\( bes as\) | g8\( f g as bes g\) |
  % S. 5
  es\( c' bes as g c~\) | c\( d es4\) c,8\( d\) | es\( f g c d4\) | c8\( es, c es g b | c4.\) f8\( bes,4~\) | bes8 f\( d f bes c \) | d\( c bes2~\) | bes8\( g es\) es\( f g\) | as\( bes c4\) bes\( | as g8 as f4\) |
  % S. 6
  g8\( as bes4 as\) | g8\( as bes4 as8 f | e c\) r4 r | r r as'8\( ces | bes as bes c des4\) | des\( c\) r | r8 g\( as2~\) | as8 g\( as2~\) | as4. g8\( f g | as4.\) g8\( f es |
  % S. 7
  d2.~\) | d4 es8\( d es f\) | g\( as bes4 as\) | \clef "tenor" g8\( as bes c des4\) | c4\( bes as\) | g8\( f g as bes g\) | es\( c' bes as g c~\) | c\( d es4\) r8 d\( | es f g es d4\) | c8\( es, c es g b\) |
  % S. 8
  c4.\( f8 bes,!4\) | bes8\( f d f bes c\) | d\( c bes2~\) | bes8 g\( es g as bes\) | \clef bass c\( bes c4 bes\) | as\( g8 as bes4\) | g8\( as bes4 as\) | g8\( as bes4 as8 f | e c\) r4 r | r r \clef "tenor" as'8\( ces |
  % S. 9
  bes8 as bes c! des4\) | des\( c\)  r | \clef bass r8 g\( as2\) | r8 g\( as2~\) | as4. g8\( f g | as4.\) g8\( f es | d4.\) d8\( es d'\) | es\( as, g as bes d\) | es\( f g\)  as,\( bes\) es, | es\( as bes f' es f\) |
  % S. 10
  g8\( es bes4\) bes, | c2 g4 | as\( g8 as\) bes4 | es,2 es'4 | as,2 bes4 | d\( es\) as | g2. | r8 es\( c es g b | c4\) f,,4\( g8 as | bes\) d\( bes d f a | bes4\) r r | r8 g\( es g bes d |
  % S. 11
  es4\) c,\( es\) | as\( es\) as | g8\( as bes4 as\) | g8\( as bes4 as8 f | e c\) r4 r | r r \clef "tenor" as'8\( ces | bes as bes c! des4\) | c r c8\( ces | bes as bes c! des4\) | c r \clef bass f,,4\( |
  % S. 12
  c g' es'\) | g\( c es\) | as2.~ | as4 r r | r8 g,\( as2\) | r8 g\( as2~\) | as4. g8\( f g | as4.\) g8\( f es | d2.\) | d2.\espressivo\( | es\fermata\)
}

Bass = {
  % S. 3
  es2.~ | \repeat unfold 4 {es2.~ |}  es4 r4 g | as\( bes c\) | f,2 g4 | as2 r4 |
  % S. 4
  bes2.~ | bes | es,~ | es~ | es~ | es4 r r | r r bes'4 | c2 g4 | as f bes | es,2 es4 |
  % S. 5
  as4\( g8 f\) e4 | f g as | g2. | c4 r r | \partCombineUnisono c4.\( d8 es4\) | bes2 r4 | bes4.\( c8 d4\) | es4. des8\( c bes | as4\) r r | R2. |
  % S. 6
  \tag #'fagI \tag #'fagII { c2\( } \tag #'Cb { c2\( } f4\) | c2\( f,4\) | c' r \partCombineAutomatic \tag #'fagI { g'\( | as bes as | g\) g, } \tag #'fagII { e\( | f g as | g\) g, } \tag #'Cb { r4 | f,2. | g2 } es4 | as2 f4 | bes2.~ | bes  | es,~ | es~ |
  % S. 7
  es~ | es4 r r | r r bes'\( | c2\) es,4 | as f bes | es,2 es4 | as\( g8 f e4\) | f\( g as\) | g2\( g'4\) | c,2 r4 |
  % S. 8
  \partCombineUnisono c4.\( d8 es4\) | bes2 r4 | bes4.\(  c8 d4\) | es4. des8\( c bes\) | as4 r r | r r bes | c2\( f4\) | c2\( f,4\) | c' r \partCombineAutomatic \tag #'fagI { g'\( | as bes as\) | g g,2 | } \tag #'fagII { e4\( | f g as\) | g g,2 | } \tag #'Cb { r4 | f,2. | g2.  |} 
  % S. 9
  as2 f4 | bes2.~ | bes  | \partCombineAutomatic es,~ | es~ | \tag #'fagI { es2. | es'~ | es4 r8 \partCombineApart c\( bes as\) | g\( } \tag #'fagII { es2.~ | es~ | es4 r8 c'\( bes as\) | g\( } \tag #'Cb { es2.~ | es~ | es4. c'8\( bes as\) | g\( } as g f es4\)~ |  
}

dBass = {
    % S. 3
  s2.~\p | s2.*5| s2.\cresc | s\< | s\! |
  % S. 4
  s2.*2 | s2.\dim | s2. | s_\markup{\dynamic p \italic {dim.} } | s2. | s2 s4\p | s2.*3 |
  % S. 5
  s2.*2 |s2.\p | s | s\cresc | s2.*2 | s4. s4.\cresc | s2.*2 |
  % S. 6
  \tag #'fag { s2 } \tag #'cb { s2\p } s4 | s2. | s2 \tag #'fag { s4\p | s2. | s2\cresc } \tag #'cb { s4 | s2. | s2\cresc } s4 | s2 s4\p | s2.*2 | s2.\dim | s |
  % S. 7
  s2.*2 | s2 s4\p | s2.*7 |
  % S. 8
  s2.\cresc | s2.*2 | s4. s4.\cresc | s2. | s2 s4\p | s2.*2 | s2 \tag #'fag { s4 | s s2\cresc  | s2. | } \tag #'cb { s4 | s2._\markup{\dynamic p \italic {cresc. }} | s2\< s4\!  |} 
  % S. 9
  s2 s4\p | s2.*4 | \tag #'fag { s2.\cresc | s | s | s\f \mark \default } \tag #'cb { s2.\cresc | s2. | s4. s4.\f | s2. \mark \default} |  

}

nCb = \relative c, {
  \global
  % S. 3-9
  \keepWithTag #'Cb \Bass
  % S. 10
  es2 bes'4 | c2 g4 | as\( g8 as\) bes4 | es,2 es'4 | as,2 bes4 | d\( es\) as | g2. | c,4 r r | c f,\( g8 as\) | bes2 r4 | bes c d | es2 r4 |
  % S. 11
  es8\( des\) c4\( es\) | as\( es\) f | c2\( f4\) | c2\( f,4\) | c' r r | f,2. | g2 es4 | f2. | g | as4 g f |
  % S. 12
  c'2.~ | c4 r c | as2.~ | as | bes~ | bes | \repeat unfold 3 { es,~ | } es~\espressivo | es\fermata
}