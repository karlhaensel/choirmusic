\version "2.22.00"

dStrings = {
  \global
  % S.4-7
  s1\p | s1*22 | 
  % S.8
  s1*4 | s1\f | s1 |
  % S.9-13
  s1 | \tag #'vc {s4.\sf s8 s2} \tag #'vioI \tag #'vioII \tag #'vla { s1*2 } \tag #'cb { s1 } \tag #'vc \tag #'cb { s4 s2.\f } | s2\sf s | s1 | s2\sf s2 | s1 | s4\sf s2. | s1 | \tag #'vioI \tag #'vioII \tag #'vla {s1*3} \tag #'vc { s2. s4\f | s1 | s4.\sf s8 s2 |} \tag #'cb {s2. s4\f | s1\sf | s1\sf |} s4 s\sf s2 | \tag #'vioI \tag #'vioII \tag #'vla {s1*3} \tag #'vc { s4.\sf s8 s2 | s1*2} \tag #'cb {s4.\sf s8 s2 | s1 | s\sf} | s1*3 | \tag #'vioI \tag #'vioII \tag #'vla {s1*11} \tag #'vc \tag #'cb {s2.\sf s4 | s1*8 | s2\sf s | s1} | 
  % S.14-15
  s4\sf s s2\dim | s1*3 | s1\p | s1 | \tag #'vioI {s2 s\cresc | s1*2 | s4 s2.\f } \tag #'vioII \tag #'vla {s2 s\cresc | s1*3 } \tag #'vc \tag #'cb {s1 | s4 s2.\cresc | s4 s2.\f | s1} | s1 | s4 s2.\dim | 
  % S.16
  s1 | s2\p s\cresc | s1 | s1\f | s1 | s4 s2.\dim | s1 |
  % S.17
  s1\p | s1*4 | s1\p | s1 | s1\cresc |
  % S.18
  s1*2 | \tag #'vioI \tag #'vioII \tag #'vla { s4 s2\> s8 s\!} \tag #'vc \tag #'cb {s2.\> s8 s\!} | s1*5 |
  % S.19
  s1\f | s1*3 | s1\p | s1 | s1\cresc |
  % S.20
  s1 | s1\cresc | s1 | s4\f s2\> s8 s\! | s1*4 | s1\p |
  % S.21
  s1*8 \bar "|."
}

nVioI = \relative c' {
  \global
  % S.4
  \repeat unfold 4 {\tuplet 3/2 {es8\( g es} \tuplet 3/2 {g es g\)}} | \scaleDurations 2/3 {es\( as es as es as\) es\( g es f es f\) | \repeat unfold 4 {es8\( g es g es g\)} |
  % S.5
  \repeat unfold 2 {es\( as es as es as\)} | \repeat unfold 2 {es\( a es a es a\)} | \repeat unfold 2 {d,\( bes' d, bes' d, bes'\)} | d,\( bes' d, bes' d, bes'\) es,\( bes' es, bes' f bes\) | \repeat unfold 2 {g\( bes g bes g bes\)} | as\( c as c as c\) g\( bes g as f as\) |
  % S.6
  \repeat unfold 2 {g\( bes g bes g bes\)} | \repeat unfold 2 {g\( c g c g c\)} | \repeat unfold 4 {as\( c as c as c\)} | g\( b g b g b\) g\( c g d' g, d'\) | g,\( es' g, g' g, g'\) c,\( f c es c es\) |
  % S.7
  c\( d c d c d\) bes\( d bes d bes d\) | bes\( d bes e bes e\) bes\( f' bes, g' bes, g'\) | c,\( bes c bes c bes\) c\( a c a c a\) | d\( as d as d as\) c\( as c as bes as\) | es'\( bes es bes es bes\) es\( a, es' g, es' g,\) | es'\( a, es' a, d a\) c\( g c f, bes f\) |
  % S.8
  a\( f a f bes f\)  c'\( f, c' f, d' f,\) | es'\( a, es' bes g' bes,\) f'\( c f c f c\) | f\( bes, f' a, f' a,\) f'\( bes, f' bes, f' bes,\) | f'\( bes, f' bes, es d\) c\( bes c a c a\)} | bes4 bes d f | g4. g8 f4 es |
  % S.9
  f bes, \scaleDurations 2/3 {\repeat unfold 3 {bes'8\( bes, bes' bes, bes' bes,\)} | bes'\( bes, f bes f bes\) f\( bes f bes f bes\) | \repeat unfold 4 {e\( bes e bes e bes\)} | \repeat unfold 4 {f'\( bes, f' bes, f' bes,\)} |
  % S.10
  \repeat unfold 4 {ges'\( bes, ges' bes, ges' bes,\)} | bes\( ges bes ges bes ges\) as\( ges as es as es\) | \repeat unfold 2 {as\( f as f as f\)} | bes\( ges bes ges des ges\) f\( des f es des es\) |
  % S.11
  \repeat unfold 4 {f\( des f\)} | bes\( f bes f bes f\) bes\( g bes g bes g\) | \repeat unfold 2 {c\( as c as c as\)} | bes\( g bes g bes g\) as\( des, as' des, g des\) | as'\( f as\) \repeat unfold 3 {as\( f as\)} | des\( as des as des as\) des\( g, des' g, des' g,\) |
  % S.12
  \repeat unfold 2 {c\( as c as c as\)} | es'\( c es c es c\) es\( c es c es c\) | \repeat unfold 2 {es\( bes es bes es bes\)} | ges'\( a, ges' a, ges' a,\) f'\( a, f' a, f' a,\) | \repeat unfold 2 {es'\( a, es' a, es' a,\)} | es'\( bes es bes es bes\) es\( ces es ces es ces\) |
  % S.13
  ges'\( es ges es ges es\) d\( as d as d as\) | es'\( bes es bes es bes\) ces\( f, ces' f, ces' f,\) | bes\( f bes f bes f\) bes\( es, bes' es, bes' es,\) | as\( es as es as es\) as\( d, as' d, as' d,\) | ges\( es ges es ges es\) ges\( fes ges fes ges fes\) | \repeat unfold 2 {ges\( es ges es ges es\)} |
  % S.14
  \repeat unfold 6 {f\( es f es f es\)} | \repeat unfold 2 {f\( d f d f d\)}} | bes'4 es,\( g bes\) | c4. c8\( bes4 as\) |
  % S.15
  bes4 es, \scaleDurations 2/3 {\repeat unfold 3 {es'8\( es, es' es, es' es,\)} | es'\( bes es bes es bes\) es\( bes es bes es bes\)} | es4 es g bes | c4. c8 bes4 a | es'\( bes\) as\( g\) |
  % S.16
  g2\( f\) | \scaleDurations 2/3 {\repeat unfold 3 {es8\(c es c es c\)} es\( bes es a, es' a,\) | es'\( bes es g bes, g'\) f\( bes, f' es bes es\) | d\( as d c d c\) d\( bes d as d as\)} | es'4 bes2 as4 | g2 f |
  % S.17
  \scaleDurations 2/3 { es8\( \repeat unfold 8 { bes es} bes\)} es4 r | R1*3 | \tag #'part {\pageTurn} \scaleDurations 2/3 {bes'8\( \repeat unfold 8 {f bes} f\) bes\( f bes f bes f\) | c'\( as c as c as\) d\( bes d bes d bes\) | 
  % S.18
  es\( bes es bes es bes\) d\( bes d bes d bes\) | c\( bes c bes c bes\) c\( as c as c as\) | bes\( \repeat unfold 8 {f bes} f\)} g4 r | R1*4 |
  % S.19
  \scaleDurations 2/3 {bes8\( \repeat unfold 5 {f bes} f\) | g\( \repeat unfold 5 {es g} es\) | bes'\( \repeat unfold 5 {f bes} f\) | g\( \repeat unfold 5 {es g} es\)} | as2 g | \scaleDurations 2/3 {f8\( d f d f d\) g\( es g es g es\)} | as2 g |
  % S.20
  \scaleDurations 2/3 {f8\( bes, f' bes, f' bes,\) g'\( es g es g es\)} | as2 g | f1 | \scaleDurations 2/3 {es8\( \repeat unfold 5 {c es} c\)} | es4 r r2 | R1*3 | \scaleDurations 2/3 {\repeat unfold 2 {g8\( es g es g es\)} |
  % S.21
  as\( c as c as c\) g\( es g es as es\) | \repeat unfold 2 {g\( es g es g es\)} | as\( es as es as es\) g\( es g es as es\) | g\( es g es g es\) bes'\( g bes g bes g\) | es'\( bes es bes es bes\) g'\( es g es g es\) | bes'\( \repeat unfold 5 {g bes} g\)} | bes2 bes | bes1\fermata |  
}

nVioII = \relative c' {
  \global
  % S.4
  \repeat unfold 4 {\tuplet 3/2 {bes8\( es bes} \tuplet 3/2 {es bes es\)}} | \scaleDurations 2/3 {c\( es c es c es\) bes\( es bes es as, es'\) | \repeat unfold 2 {bes\( es bes es bes es\)} | \repeat unfold 2 {c\( es c es c es\)} | 
  % S.5
  \repeat unfold 4 {c\( es c es c es\)} | bes\( f' bes, f' bes, f'\) \repeat unfold 2 { bes,\( f' bes, f' bes, f'\)} bes,\( g' bes, as' bes, as'\) | \repeat unfold 2 {es\( g es g es g\)} | es\( as es as es as\) es\( g es f es f\) |
  % S.6
  \repeat unfold 4 {es\( g es g es g\)} | c,\( as' c, as' c, as'\) f\( as f as f as\) | \repeat unfold 2 {d,\( as' d, as' d, as'\)} | d,\( g d g d g\) es\( g es g f g\) | es\( g es g es g\) f\( c' f, c' f, c'\) |
  % S.7
  f,\( c' f, c' f, c'\) f,\( bes f bes f bes\) | g\( bes g c bes c\) bes\( d bes c bes c\) | bes\( f bes f bes f\) a\( f a f a f\) | \repeat unfold 2 {as\( f as f as f\)}} | bes4. bes8 a4 g | es'\( d\) c bes |
  % S.8
  a bes \scaleDurations 2/3 {a8\( f a f bes f\) | a\( es a d, bes' d,\) c'\( es, c' es, c' es,\) | d'\( es, d' es, a es\) bes'\( f bes f bes f\) | d'\( g, d' g, c bes\) bes\( f bes a f a\) | \repeat unfold 2 {bes\( f bes f bes f\)} | es'\( bes es bes es bes\) d\( bes d bes c bes\) |
  % S.9
  \repeat unfold 2 {d\( bes d bes d bes\)} | g'\( es g es g es\) as\( f as es g es\) | f\( bes, d, bes' d, bes'\) d,\( bes' d, bes' d, bes'\) | des\( e, des' e, des' e,\) \repeat unfold 3 { des'\( e, des' e, des' e,\)} | \repeat unfold 4 {des'\( f, des' f, des' f,\)} |
  % S.10
  des'\( bes des bes des bes\) \repeat unfold 3 {des\( bes des bes des bes\)} | ges\( es ges es ges es\) ges\( es ges es c es\) | \repeat unfold 2 {f\( des f des f des\)} | \repeat unfold 2 {des\( bes des bes des bes\)} |
  % S.11
  \repeat unfold 4 {des\( as des\)} | f\( des f des f des\) g\( e g e g e\) | \repeat unfold 2 {as\( f as f as f\)} | g\( e g e g e\) des\( c des bes des bes\) | f'\( c f\) \repeat unfold 3 {f\( c f\)} | as\( f as f as f\) g\( fes g fes g fes\) |
  % S.12
  \repeat unfold 2 {as\( es as es as es\)} | c'\( ges c ges c ges\) c\( ges c ges c ges\) | \repeat unfold 2 {bes\( ges bes ges bes ges\)} | \repeat unfold 2 {es'\( a, es' a, es' a,\)} | \repeat unfold 2 {a\( ges a ges a ges\)} | bes\( ges bes ges bes ges\) ces\( f, ces' f, ces' f,\) |
  % S.13
  bes\( ges bes ges bes ges\) as\( f as f as f\) | bes\( ges bes ges bes ges\) \repeat unfold 2 {f\( d f d f d\)} es\( bes es bes es bes\) | es\( ces es ces es ces\) d\( bes d bes d bes\) | es\( bes es bes es bes\) fes'\( des fes des fes des\) | es\( ces es ces es ces\) es\( bes es bes es bes\) |
  % S.14
  \repeat unfold 4 {es\( c es c es c\)} | \repeat unfold 2 {es\( ces es ces es ces\)} | \repeat unfold 2 {d\( bes d bes d bes\)} | \repeat unfold 2 {es\( bes es bes es bes\)} | es\( c es c es c\) es\( d es c es c\) |
  % S.15
  es\( bes es bes es bes\)} g'4 bes | c4. c8 bes4 as | \scaleDurations 2/3 {\repeat unfold 2 {bes8\( g bes g bes g\)} | es'\( a, es' a, es' a,\) es'\( bes es bes es bes\) | es\( f, es' f, es' f,\) es'\( f, es' f, es' f,\) | bes\( g bes g bes g\) as\( f as g es g\) |
  % S.16
  g\( es g es g es\) f\( d f d f d\) | c'\( g c g c g\) c\( g c g c g\) | c\( f, c' f, c' f,\) c'\( f, c' f, c' f,\) | bes\( g bes g bes g\) as\( bes as g bes g\) | as\( f as\) as\( bes, as'\) g\( bes, g' f bes, f'\)} | es4 es2 es4 | es2 d |
  % S.17
  \scaleDurations 2/3{bes8\( \repeat unfold 8 {g bes} g\)} bes4 r4 | R1*3 | \tag #'part {\pageTurn} \scaleDurations 2/3 {f'8\( \repeat unfold 8 {d f} d\) f\( d f d f d\) | as'\( es as es as es\) bes'\( f bes f bes f\) |
  % S.18
  bes\( es, bes' es, bes' es,\) bes'\( f bes f bes f\) | bes\( g bes g bes g\) as\( f as f as f\) | as\( \repeat unfold 8 {f as} f\)} es4 r | R1*4 |
  % S.19
  \scaleDurations 2/3 {as8\( \repeat unfold 5 {f as} f\) | es\( \repeat unfold 5 {bes es} g\) | es\( bes es bes es bes f bes f bes f bes\) | es\( \repeat unfold 5 {bes es} bes\)} | es2 es | \scaleDurations 2/3 {d8\( bes d bes d  bes\) es\( bes es bes es bes\)} | es2 es |
  % S.20
  \scaleDurations 2/3 {bes8\( as bes as bes as\) es'\( bes es bes es bes\)} |d2 es | f\( d\) | \scaleDurations 2/3 {c8\( \repeat unfold 5 {g c} g\)} | c4 r r2 | R1*3 | \scaleDurations 2/3 {\repeat unfold 2 {es8\( bes es bes es bes\)} |
  % S.21
  \repeat unfold 2 {es\( c es c es c\)} | \repeat unfold 2 {es\( bes es bes es bes\)} | \repeat unfold 2 {es\( c es c es c\)} | es\( bes es bes es bes\) g'\( es g es g es\) | bes'\( g bes g bes g\) es'\( bes es bes es bes\) | g'\( \repeat unfold 5 {es g} es\)} | g2 g | g1\fermata |
}

nVla = \relative c' {
  \global
  % S.4
  \repeat unfold 4 {\tuplet 3/2 {g8\( bes g} \tuplet 3/2 {bes g bes\)}} | \scaleDurations 2/3 { as\( c as c as c\) g\( bes g as f as\) | \repeat unfold 2 {g\( bes g bes g bes\)} | \repeat unfold 2 {g\( c g c g c\)} |
  % S.5
  \repeat unfold 2 {as\( c as c as c\)} | \repeat unfold 2 {a\( c a c a c\)}} | bes4 r4 r2 | r4 f'\( es d\) | \scaleDurations 2/3 {\repeat unfold 2 {bes8\( es bes es bes es\)} | c\( es c es c es\) bes\( es bes as es' as,\) |
  % S.6
  \repeat unfold 2 {bes\( es bes es bes es\)} | \repeat unfold 2 {c\( es c es c es\)} | c\( as c as c as\) c\( f c f c f\) | \repeat unfold 2 {c\( d c d c d\)} | b\( d b d b d\) c\( es c f d f\)} | es4 es c' f,~ |
  % S.7
  f bes, d f | g4. g8 f4 e | f f a c | \scaleDurations 2/3 { f,8\( d f d f d\) f\( d f d f d\) | bes'\( es, bes' es, bes' es,\) a\( es a es g es\) | a\( c, a' d, a' d,\) g\( es g d f d\) |
  % S.8
  c\( es c d bes d\) f\( c f bes, f' bes,\) | es\( c es bes d bes\) es\( c es c es c\) | f\( d f c f c\)} f4 d | bes c8 d es2 | \scaleDurations 2/3 {\repeat unfold 2 {f8\( d f d f d\)} | bes'\( g bes g bes g\) bes\( f bes es, bes' es,\) | 
  % S.9
  bes'\( f bes\)} bes,4 d f | es4. es8 d4 es | \scaleDurations 2/3 { d8\( f bes, f' bes, f'\) bes,\( f' bes, f' bes, f'\) | \repeat unfold 4 {bes\( g bes g bes g\)} | \repeat unfold 4 {bes\( f bes f bes f\)} |
  % S.10
  \repeat unfold 4 {bes\( ges bes ges bes ges\)} | des\( es des es des es\) c\( es c as c as\) | \repeat unfold 2 {des\( as des as des as\)}} | bes4. bes8 as4 ges |
  % S.11
  as \scaleDurations 2/3{ \repeat unfold 3 {as8\( f as\)} | \repeat unfold 2 {des\( bes des bes des bes\)} | f'\( c f c f c\) f\( c f c f c\)} | des4. des8 c4 bes | \scaleDurations 2/3{ \repeat unfold 4 {c8\( as c\)} | f\( des f des f des\) fes\( des fes des fes des\) |
  % S.12
  \repeat unfold 2 {es\( c es c es c\)}} | ges'4. ges8 f4 es | \scaleDurations 2/3 {\repeat unfold 2 {ges8\( es ges es ges es\)} | \repeat unfold 2 {a\( es a es a es\)} | \repeat unfold 3 {ges\( es ges es ges es\)} f\( es f es f es\) |
  % S.13
  es'\( bes es bes es bes\) f\( d f d f d\) | ges\( es ges es ges es\) as,\( ces as ces as ces\) | \repeat unfold 2 {ges\( bes ges bes ges bes\)} | ces\( f, ces' f, ces' f,\) bes\( f bes f bes f\) | bes\( ges bes ges bes ges\) des'\( ges, des' ges, des' ges,\) | ces\( ges ces ges ces ges\) ges\( es ges es ges es\) |
  % S.14
  \repeat unfold 4 {c'\( f, c' f, c' f,\)} | \repeat unfold 2 {ces'\( f, ces' f, ces' f,\)} | \repeat unfold 2 {bes\( f bes f bes f\)} | \repeat unfold 2 {bes\( g bes g bes g\)} | as\( es as es as es\) bes'\( es, bes' es, c' es,\) |
  % S.15
  g\( es g es g es\) bes'\( g bes g bes g\) | as\( es as es as es\) bes'\( es, bes' es, c' es,\) | g'\( es g es g es\) g\( es g es g es\) | a\( es a es a es\) bes'\( g bes g bes g\) | \repeat unfold 2 {f\( es f es f es\)} | g\( es g es g es\) f\( bes, f' es bes es\) |
  % S.16
  es\( bes es bes es bes\) d\( as d as d as\) | g\( es' g es g es\) g\( es g es g es\) | \repeat unfold 2 {f\( es f es f es\)} | g\( es g es g es\) d\( bes d es bes es\) | f\( bes, f' bes, f' bes,\)} g'4\( f\) | es4 d2 c4 | bes2 as |
  % S.17
  \scaleDurations 2/3 {g8\( \repeat unfold 8 {es g} es\)} g4 r | R1*3 | \scaleDurations 2/3 {d'8\( \repeat unfold 8 {bes d} bes\) d\( bes d bes d bes\) | es\( c es c es c\) f\( d f d f d\) |
  % S.18
  bes'\( es, bes' es, bes' es,\) f\( d f d f d\) | g\( c, g' c, g' c,\) f\( c f c f c\) | f\( \repeat unfold 8 {bes, f'} bes,\)} es4 r | R1*4 |
  % S.19
  \tag #'part {\pageTurn} \scaleDurations 2/3 {f8\( \repeat unfold 5 {bes, f'} bes,\) | bes\( \repeat unfold 5 {g bes} g\) | f'\( \repeat unfold 5 {bes, f'} bes,\) | bes\( \repeat unfold 5 {g bes} g\)} | as2 bes | \scaleDurations 2/3 {bes8\( f bes f bes f\) bes\( g bes g bes g\)} | as2 bes |
  % S.20
  \scaleDurations 2/3 {as8\( f as f as f\) es\( g es g es g\)} | as2 bes | c\( b\) | \scaleDurations 2/3 {g8\( \repeat unfold 5 {es g} es\)} | g4 r r2 | R1*3 | \scaleDurations 2/3 {\repeat unfold 2 {bes8\( g bes g bes g\)} |
  % S.21
  c\( as c as c as\) bes\( g bes as c as\) | \repeat unfold 2 {bes\( g bes g bes g\)} | c\( as c as c as\) bes\( g bes as c as\) | bes\( g bes g bes g\) es'\( bes es bes es bes\) | g'\( es g es g es\) bes'\( g bes g bes g\) | es'\( \repeat unfold 5 {bes es} bes\)} | es2 es | es1\fermata |
}

nVc = \relative c {
  \global
  % S.4
  \repeat unfold 5 {es1 |}
  % S.5
  f | f, | bes | bes | es, | es' |
  % S.6
  es | es | f | f | f,4 f' es d | c bes a2 |
  % S.7
  bes2 r | R1*2 | r4 bes d f | g4. g8 f4 es | f2 f~ |
  % S.8
  f4 f es d | c bes a2 | bes4 c d2 | es f | \repeat unfold 2 {\tuplet 3/2 {d'8\( bes d} \tuplet 3/2 {bes d bes\)}} | \tuplet 3/2 {g'\( es g} \tuplet 3/2 {es g es\)} \tuplet 3/2 {f\( d f} \tuplet 3/2 {c es c\)} |
  % S.9
  \tuplet 3/2 {f\( d f\)} bes,4 d f | g4. g8 f4 es | f4 bes, bes bes | g2 g~ | g4 g g g | f2 f~ |
  % S.10
  f4 r4 r2 | es2 es | es es | as,2. ges4 | f des' f as | bes4. bes8 as4 ges |
  % S.11
  des4 des des des | bes4. bes8 bes4 bes | f f' as c | des4. des8 c4 bes | f4 f f f | des4. des8 des4 des |
  % S.12
  as2 as4 as | a2. a4 | bes2. bes4 | c2 c | ces2. ces4 | bes2 as |
  % S.13
  \repeat unfold 4 {bes bes |} es2 bes | ces bes |
  % S.14
  a1~ | a | as~ | as4 bes\( d f\) | g,1 | as |
  % S.15
  es~ | es~ | es4 es' g bes | c4. c8 bes4 bes | a4. a8 bes4 c | bes,1~ |
  % S.16
  bes2 bes | c2 c'4 bes | a4. a8 bes4 c | bes,1 | bes'2 bes, | c4\( g\) as2 | bes1 |
  % S.17
  es,1~ | es2. r4 | R1*3 | bes'1~ | bes2 bes | as as |
  % S.18
  g f' | es f | d1~ | d2 r | R1*4 |
  % S.19
  d1 | es | bes | es, | c'2 bes | as g | c bes |
  % S.20
  d es | f g | as g | c,1~ | c4 r r2 | R1*3 | es,1~ |
  % S.21
  es | es'~ | es | es2 r | R1*3 | R1\fermata |
}

nCb = \relative c {
  \global
  % S.4
  \repeat unfold 5 {es1 |}
  % S.5
  f | f, | bes | bes | es, | es' |
  % S.6
  es | es | f | f | f,4 f' es d | c bes a2 |
  % S.7
  bes2 r | R1*2 | r4 bes d f | g4. g8 f4 es | f2 f~ |
  % S.8
  f4 f es d | c bes a2 | bes4 c d2 | es f | bes,1 | bes |
  % S.9
  bes | bes | bes4 bes' bes bes | g2 g~ | g4 g g g | f2 f~ |
  % S.10
  f4 r4 r2 | es2 es | es es | as,2. ges4 | f1 | ges |
  % S.11
  des'4 des des des | bes4. bes8 bes4 bes | f1 | bes | f'4 f f f | des4. des8 des4 des |
  % S.12
  as2 as4 as | a2. a4 | bes2. bes4 | c2 c | ces2. ces4 | bes2 as |
  % S.13
  \repeat unfold 4 {bes bes |} es2 bes | ces bes |
  % S.14
  a1~ | a | as~ | as | g | as |
  % S.15
  es~ | es~ | es4 es' g bes | c4. c8 bes4 bes | a4. a8 bes4 c | bes,1~ |
  % S.16
  bes2 bes | c2 c'4 bes | a4. a8 bes4 c | bes,1 | bes'2 bes, | c4\( g\) as2 | bes1 |
  % S.17
  es,1~ | es2. r4 | R1*3 | bes'1~ | bes2 bes | as as |
  % S.18
  g f' | es f | d1~ | d2 r | R1*4 |
  % S.19
  d1 | es | bes | es, | c'2 bes | as g | c bes |
  % S.20
  d es | f g | as g | c,1~ | c4 r r2 | R1*3 | es,1~ |
  % S.21
  es | es'~ | es | es2 r | R1*3 | R1\fermata |
}