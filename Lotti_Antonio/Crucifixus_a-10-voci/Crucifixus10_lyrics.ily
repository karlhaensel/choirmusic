\version "2.22.1"

tCrucifixus = \lyricmode { Cru -- ci -- fi -- xus, }
tcrucifixus = \lyricmode { cru -- ci -- fi -- xus, }
tEtiamProNobis = \lyricmode { cru -- ci -- fi -- xus e -- ti -- am pro no -- bis }
tSubPontio = \lyricmode { sub Pon -- ti -- o Pi -- la -- to }
tSubPontioK = \lyricmode { sub Pon -- ti -- o Pi -- la -- to, }
tPassusK = \lyricmode { pas -- sus, }
tPassus = \lyricmode { pas -- sus }
tEtSepul = \lyricmode { pas -- sus et se -- pul -- tus, }
tEtSepulE = \lyricmode { pas -- sus et se -- pul -- tus est. }


tSopranI = \lyricmode {
  \tCrucifixus
  %
  
  \tEtiamProNobis
  \tSubPontio
  
  \tPassusK
  \tPassusK
  
  \tSubPontioK \tSubPontio
  \tPassusK
  
  \tSubPontio \tPassusK \tEtSepul
  \tEtSepulE
}

tSopranII = \lyricmode {
  \tCrucifixus
  %
  
  \tEtiamProNobis
  \tSubPontio
  
  \tPassusK
  \tPassusK \tSubPontio
  
  \tPassusK \tSubPontioK
  \tSubPontio \tPassusK
  
  \tEtSepul
  \tEtSepulE
}

tSopranIII = \lyricmode {
  \tCrucifixus
  %
  
  \tEtiamProNobis
  \tSubPontioK
  
  \tSubPontio
  \tPassusK \tSubPontio
  
  \tPassusK \tSubPontio
  \tPassusK 
  
  \tSubPontio \tPassusK
  et se -- pul -- tus est.
}

tAltI = \lyricmode {
  \tCrucifixus \tcrucifixus
  \tEtiamProNobis
  
  %
  \tSubPontioK \tSubPontioK
  
  \tSubPontio \tPassusK
  \tPassusK
  
  \tSubPontio \tPassusK \tSubPontio
  \tPassusK
  
  \tSubPontioK \tSubPontio
  \tEtSepulE
}

tAltII = \lyricmode {
  \tCrucifixus \tcrucifixus
  \tEtiamProNobis
  
  %
  \tSubPontio
  
  \tPassusK \tPassusK 
  \tSubPontioK \tSubPontioK
  
  \tSubPontioK
  \tSubPontio
  
  \tPassusK 
  \tEtSepulE
}

tTenorI = \lyricmode {
  \tCrucifixus \tcrucifixus
  \tEtiamProNobis
  
  %
  \tSubPontio
  
  \tPassusK \tPassusK
  \tSubPontioK \tSubPontioK
  
  \tSubPontioK
  \tSubPontioK
  
  \tSubPontio
  \tPassusK \tEtSepulE
}

tTenorII = \lyricmode {
  \tCrucifixus \tcrucifixus
  \tcrucifixus \tEtiamProNobis
  
  %
  \tSubPontioK
  
  \tSubPontioK \tSubPontioK \tPassusK
  \tSubPontioK
  
  \tSubPontioK
  \tSubPontio \tPassusK
  
  \tSubPontio \tEtSepul
  se -- pul -- tus est.
}

tTenorIII = \lyricmode {
  \tCrucifixus \tcrucifixus
  %
  
  \tSubPontio
  %
  
  \tPassusK \tSubPontioK
  \tSubPontioK
  
  \tSubPontioK
  \tSubPontioK \tSubPontioK
  
  \tSubPontio
  \tEtSepulE
}

tBassI = \lyricmode {
  \tCrucifixus __ \tcrucifixus
  \tEtiamProNobis
  
  %
  \tSubPontioK \tSubPontioK
  
  \tSubPontio \tPassusK \tSubPontio
  \tPassusK
  
  \tSubPontioK
  \tSubPontioK \tSubPontioK
  
  \tSubPontio
  \tEtSepulE
}

tBassII = \lyricmode {
  \tCrucifixus \tcrucifixus \tcrucifixus
  \tEtiamProNobis
  
  %
  \tSubPontioK \tSubPontioK \tSubPontioK
  
  \tSubPontioK \tSubPontio
  \tPassusK \tPassusK
  
  \tPassusK \tSubPontioK
  \tSubPontioK \tSubPontio
  
  \tPassusK \tEtSepulE
  %
}