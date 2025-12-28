\version "2.18.2"

chormidi = \with {midiInstrument = "choir aahs"}

global = {
  \key g \dorian
  \time 3/4
  \dynamicUp
}

mel = \relative c'' {
  \global
  \partial 4 g4^\markup{"c.f."} | g2 g4 | 
  \tag #'norm {a2 a4 |}
  \tag #'punk {a4. a8 a4 |}
  bes2 g4 | f2. | 
  \tag #'melI {bes2( c4 | bes2) a4 |}
  \tag #'melII {bes2( c4) | bes2 a4 |}
  bes2.~ | bes2 bes4 |
  bes2 bes4 | a2 g4 | g2 fis4 | g2 g4 | fis2( g4 | a2) a4 | bes2( a4 | 
  \tag #'stand {g4) fis2 |}
  \tag #'lomb {g2) fis4 |}
  g2
  \tag #'weiter {\bar "||"}
  \tag #'schluss {\bar "|."}
}
