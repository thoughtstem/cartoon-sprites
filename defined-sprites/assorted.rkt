#lang racket

(provide ;backgrounds
         SPACE-BG
         CLOUD-BG
         GRASSY-BG
         ;sprites
         beigealien-sprite
         bluealien-sprite
         greenalien-sprite
         pinkalien-sprite
         yellowalien-sprite
         random-alien-sprite
         beigeufo-sprite
         blueufo-sprite
         greenufo-sprite
         pinkufo-sprite
         yellowufo-sprite
         random-ufo-sprite
         spaceship01-sprite
         spaceship02-sprite
         spaceship03-sprite
         spaceship04-sprite
         spaceship05-sprite
         spaceship06-sprite
         spaceship07-sprite
         random-spaceship-sprite
         adventurer-sprite
         girl-sprite
         boy-sprite
         soldier-sprite
         random-squarehead-sprite
         cow-sprite
         yellowgem-sprite
         wrench-sprite
         firstaid-sprite
         yellowkey-sprite
         pilot-sprite
         dragon-sprite
         bronzecoin-sprite
         silvercoin-sprite
         goldcoin-sprite
         cloud1-sprite
         cloud2-sprite
         cloud3-sprite
         cloud4-sprite
         greenflag-sprite
         orange-sprite
         radish-sprite
         )

(require cartoon-assets
         (only-in game-engine sheet->sprite
                              new-sprite)
         (only-in 2htdp/image rotate
                              scale
                              image-width))

;copied from animal-friendly-asset-names
;pull out elsewhere?
(define (make-wiggle-animation img)
    (list img
          (rotate -10 img)
          img
          (rotate 10 img)))


;aliens
 
(define beigealien-sprite
  (sheet->sprite (scale 0.3 alienbeige-sheet)
                 #:columns 2
                 #:delay 4))
 
(define bluealien-sprite
  (sheet->sprite (scale 0.3 alienblue-sheet)
                 #:columns 2
                 #:delay 4))

(define greenalien-sprite
  (sheet->sprite (scale 0.3 aliengreen-sheet)
                 #:columns 2
                 #:delay 4))
 
(define pinkalien-sprite
  (sheet->sprite (scale 0.3 alienpink-sheet)
                 #:columns 2
                 #:delay 4))

(define yellowalien-sprite
  (sheet->sprite (scale 0.3 alienyellow-sheet)
                 #:columns 2
                 #:delay 4))

(define (random-alien-sprite)
  (first (shuffle (list beigealien-sprite bluealien-sprite
                        greenalien-sprite pinkalien-sprite
                        yellowalien-sprite))))

;ufos

(define beigeufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufobeige)) 5))

(define blueufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufoblue)) 5))

(define greenufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufogreen)) 5))

(define pinkufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufopink)) 5))

(define yellowufo-sprite
  (new-sprite (make-wiggle-animation (scale 0.5 ufoyellow)) 5))

(define (random-ufo-sprite)
  (first (shuffle (list beigeufo-sprite blueufo-sprite
                        greenufo-sprite pinkufo-sprite
                        yellowufo-sprite))))

;spaceships
;create "bounce" animator function?

(define spaceship01-sprite
  (new-sprite (scale 0.5 spaceship01)))

(define spaceship02-sprite
  (new-sprite (scale 0.5  spaceship02)))

(define spaceship03-sprite
  (new-sprite (scale 0.5 spaceship03)))

(define spaceship04-sprite
  (new-sprite (scale 0.5 spaceship04)))

(define spaceship05-sprite
  (new-sprite (scale 0.5 spaceship05)))

(define spaceship06-sprite
  (new-sprite (scale 0.5 spaceship06)))

(define spaceship07-sprite
  (new-sprite (scale 0.5 spaceship07)))

(define (random-spaceship-sprite)
  (first (shuffle (list spaceship01 spaceship02
                        spaceship03 spaceship04
                        spaceship05 spaceship06
                        spaceship07))))

;squareheaded people

(define adventurer-sprite
  (sheet->sprite (scale 0.5 adventurer-sheet)
                 #:columns 2))

(define girl-sprite
  (sheet->sprite (scale 0.5 blueshirtgirl-sheet)
                 #:columns 2))

(define boy-sprite
  (sheet->sprite (scale 0.5 greenshirtkid-sheet)
                 #:columns 2))

(define soldier-sprite
  (sheet->sprite (scale 0.5 soldier-sheet)
                 #:columns 2))

(define (random-squarehead-sprite)
  (first (shuffle (list adventurer-sprite
                        girl-sprite
                        boy-sprite
                        soldier-sprite))))

;cow
(define cow-sprite
  (sheet->sprite (scale 0.5 cow-sheet)
                 #:columns 7))

;random meteor
(define (random-meteor-sprite)
  (sheet->sprite (scale 0.5 (first (shuffle (list meteor01 meteor02
                                                  meteor03 meteor04))))
                 #:columns 1))

;pilot
(define pilot-sprite
  (sheet->sprite (scale 0.2 pilot-sheet)
                 #:columns 2
                 #:delay 3))

;dragon
(define dragon-sprite
  (sheet->sprite (scale 0.1 dragon-sheet)
                 #:columns 4))

;frog
(define frog-sprite
  (sheet->sprite (scale 0.5 frog-sheet)
                 #:columns 2))

;bee
(define bee-sprite
  (sheet->sprite (scale 0.5 bee-sheet)
                 #:columns 2))

;animated coins

(define bronzecoin-sprite
  (sheet->sprite (scale 0.3 spinningcoinbronze-sheet)
                 #:columns 6))

(define silvercoin-sprite
  (sheet->sprite (scale 0.3 spinningcoinsilver-sheet)
                 #:columns 6))

(define goldcoin-sprite
  (sheet->sprite (scale 0.3 spinningcoingold-sheet)
                 #:columns 6))

;misc special items

(define yellowgem-sprite
  (new-sprite (scale 0.5 gemyellow)))

(define wrench-sprite
  (new-sprite (scale 0.5 wrench)))

(define firstaid-sprite
  (new-sprite (scale 0.5 firstaid)))

(define yellowkey-sprite
  (new-sprite (scale 0.5 keyyellow)))

(define greenflag-sprite
  (sheet->sprite (scale 0.5 flaggreen-sheet)
                 #:columns 2
                 #:delay 4))

(define orange-sprite
  (new-sprite orange))

(define radish-sprite
  (new-sprite radish))


;world objects

(define cloud1-sprite
  (new-sprite cloud01))

(define cloud2-sprite
  (new-sprite cloud02))

(define cloud3-sprite
  (new-sprite cloud03))

(define cloud4-sprite
  (new-sprite cloud04))



 ;SPACE -- S (moons/planets)


 ;FOREST -- F (castles/towers)

   ;cursors
     ;knight - k
     ;(female character here)
   ;collects
     ;food - ?
     ;weapon - ?
   ;avoids
     ;zombies (random) - z
     ;ninja - n
   ;specials
     ;spinninggoldcoin - c
     ;treasure chest - t

 ;SKY -- C  (clouds)

   ;collects
     ;flaggreen - f
   ;avoids
     ;bomb - b
     ;hornet (bee) - h
   ;specials



 ;GEN SPECIALS
    ;slow -- t
      ;turtle
    ;freeze -- i
      ;snowflake
    ;light -- l
      ;sun?