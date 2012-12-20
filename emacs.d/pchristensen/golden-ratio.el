
;; https://github.com/roman/golden-ratio.el

(defadvice -golden-ratio-dimensions (around smaller-ratio)
  "User a smaller window ratio"
  (let ((-golden-ratio-value 1.3))
    ad-do-it))

(ad-activate '-golden-ratio-dimensions)

(golden-ratio-enable)
