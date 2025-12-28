\version "2.24.00"

tVerleih = \lyricmode {
  Ver -- leih \tag #'mel { uns } \tag #'bzweit { uns __ } Frie -- den \tag #'mel { gnä -- dig -- lich, } 
  \tag #'mel { Herr Gott, zu un -- sern __ Zei -- ten! } \tag #'bzweit { Herr Gott, __ Herr Gott! }
  Es ist doch __ ja kein An -- drer __ nicht, \tag #'bzweit { kein An -- drer nicht, }
  der für uns könn -- te strei -- ten,
  denn du, un -- ser \tag #'mel { Gott __ } \tag #'bzweit { Gott } al -- lei -- ne.
}

tVerleihFinale = \lyricmode {
  Ver -- leih  uns Frie -- den  gnä -- dig -- lich,
  Herr Gott, zu un -- \tag #'s { sern __ } \tag #'a \tag #'t \tag #'b { sern } Zei -- ten!
  Es ist \tag #'s \tag #'t \tag #'b { doch __ } \tag #'a { doch } ja \tag #'s \tag #'a \tag #'b { kein } \tag #'t { kein __ } An -- \tag #'s { drer __ } \tag #'a \tag #'t \tag #'b { drer } nicht,
  \tag #'s \tag #'a \tag #'t { der } \tag #'b { der __ } für uns könn -- \tag #'s { te __ } \tag #'a \tag #'b { te } \tag #'t { te, der __ für uns könn -- te } strei -- ten,
  \tag #'s \tag #'t { denn __ du, __ du, } \tag #'a \tag #'b { denn du, un -- ser Gott, } \tag #'b { denn du, denn du, } un -- ser \tag #'t { Gott, un -- ser __ } Gott, __ denn \tag #'s { du __ } \tag #'a { du, du } \tag #'t \tag #'b { du, __ denn du } al -- lei -- ne!
}

tSopran = \lyricmode {
  % S. 10
  \keepWithTag #'s \tVerleihFinale
}

tAlt = \lyricmode {
  % S. 7-9
  \keepWithTag #'mel \tVerleih
  % S. 10
  \keepWithTag #'a \tVerleihFinale
}

tTenor = \lyricmode {
  % S. 10
  \keepWithTag #'t \tVerleihFinale
}

tBass = \lyricmode {
  % S. 4-6
  \keepWithTag #'mel \tVerleih
  % S. 7-9
  \keepWithTag #'bzweit \tVerleih
  % S. 10
  \keepWithTag #'b \tVerleihFinale
}