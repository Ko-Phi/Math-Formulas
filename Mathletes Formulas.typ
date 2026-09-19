#import "@preview/ctz-euclide:0.3.0": *

#set enum(numbering: "1.a.", spacing: 1.5em, indent: 1em)
#set grid(align: center + horizon, columns: (1fr, 1fr), gutter: 16pt)
#set table(align: center + horizon, inset: 8pt);
#set page(numbering: "1", margin: 1in, header: context {
  if counter(page).get().first() > 1 {
    grid(
      columns: (1fr, 1fr),
      align: (left, right),
      [Mathletes Formulas], [2026-2027],
      grid.cell(colspan: 2, line(length: 100%, stroke: 0.5pt)),
    )
  }
})
#set heading(numbering: "1.")
#set text(font: "New Computer Modern")

#show heading: set block(below: 1em)
#show heading.where(level: 2): set block(below: 1.5em, above: 2em)
#show heading.where(level: 3): set block(below: 1em, above: 1.5em)
#show heading.where(level: 3): set heading(numbering: none, outlined: false)
#show heading.where(level: 4): set heading(numbering: none, outlined: false)

#show table: set text(weight: "bold")

#show outline.entry.where(level: 1): set block(above: 1.2em)
#show outline.entry.where(level: 1): set text(weight: "bold")

#let pm = $plus.minus$
#let mp = $minus.plus$

#align(center)[
  #text(size: 2em, weight: "bold")[Mathletes Formulas] \
  #v(8pt)
  #text(size: 1.5em, weight: "medium")[Sheldon Mathletes] \
  #v(4pt)
  #text(size: 1em)[2026-2027] \
]

#outline(title: "Table of Contents", indent: 1.5em)

#pagebreak()

= Polynomials

== Linear Equations
#grid(
  columns: (auto, 1fr, auto, 1fr),
  column-gutter: 20pt,
  [=== Slope-Intercept],
  $ y = m x + b $,
  [=== Slope],
  $ m = (Delta y) / (Delta x) = (y_2 - y_1) / (x_2 - x_1) $,

  [=== Point-Slope],
  $ y - y_1 = m (x - x_1) $,
  [=== Point-Point],
  $ y - y_1 = (y_2 - y_1) / (x_2 - x_1) (x - x_1) $,
)
Parallel lines have equivalent slopes, while perpendicular lines have slopes that are negative reciprocals of one another ($m perp - 1 / m$)

== Quadratics

=== Quadratic Equations

#grid(
  grid(
    columns: 1,
    [==== Standard Form $a x^2 + b x + c$],
    [==== Vertex Form $a(x - h)^2 + k$],
    $ x = (-b pm sqrt(b^2 - 4 a c)) / (2a) $,
  ),
  align(left)[Let $D = b^2 - 4 a c,$
    + $D > 0 ==>$ 2 real solutions
    + $D = 0 ==>$ 1 real solution
    + $D < 0 ==>$ no real solutions
  ],
)

=== Minimum and Maximum Values

Consider the function $f(x) = a x^2 + b x + c$ with vertex $(-b / 2a, f(-b / 2a))$

+ $a > 0 ==> f$ has a _minimum_ at $x = -b / 2a$. The minimum value is $f(-b / 2a)$.
+ $a > 0 ==> f$ has a _maximum_ at $x = -b / 2a$. The maximum value is $f(-b / 2a)$.

== General Polynomials

Let $n$ be a non-negative integer and let $a_n, a_(n-1), ... , a_2, a_1, a_0$ be real numbers such that $a_n != 0$. The function:
$ f(x) = a_n x^n + a_(n-1)x^(n-1) + ... + a_2x^2 + a_1x + a_0 $
is a polynomial function of $x$ with degree $n$.

=== Linear Factorization Theorem

If $f(x)$ is a polynomial of degree $n$, where $n > 0$, then $f(x)$ has precisely $n$ linear factors
$ f(x) = a_n (x - c_1) (x - c_2) ... (x - c_n) $
where $c_1, c_2, ..., c_n$ are complex numbers.

=== Rational Zero Test

If the polynomial has _integer_ coefficients, then every rational zero of $f$ has the form $p / q$,
where $p$ and $q$ have no commons factors other than 1, and

#grid(
  $ p = "a factor of the constant term" a_0 $,
  $ q = "a factor of the leading coefficient" a_n $,
)

=== Conjugate Pairs

Let $f$ be a polynomial function with _real coefficients_. If $a + b i$, where $b != 0$, is zero of $f$, the complex conjugate $a - b i$ is also a zero of $f$.

For polynomials with _integer coefficients_, $a + sqrt(b)$ being a zero implies $a - sqrt(b)$ is also a zero.

=== Roots

Let $f$ be the polynomial
$ f(x) = a_n x^n + a_(n - 1) x^(n - 1) + ... + a_2x^2 + a_1x + a_0 $
#grid(
  $ "The sum of all roots" = -a_n / a_(n - 1) $,
  $ "The product of all roots" = (-1)^n a_0 / a_n $,
)

== Rational Functions

Let $f$ be the rational function
$
  f(x) = N(x) / D(x) =
  (a_n x^n + a_(n - 1) x^(n - 1) + ... + a_1 x + a_0) /
  (b_n x^n + b_(m - 1) x^(m - 1) + ... + b_1 x + b_0)
$
where $N(x)$ and $D(x)$ have no common factors.

+ The graph of $f$ has _vertical_ asymptotes at the zeros of $D(x)$.
+ The graph of $f$ has at most one _horizontal asymptote_ determined by comparing the degrees of $N(x)$ and $D(x)$.
  + $n < 0 ==>$ the line $y = 0$ is the horizontal asymptote.
  + $n = 0 ==>$ the line $y = a_n / b_m$ is the horizontal asymptote.
  + $n > 0 ==>$ there is no horizontal asymptote.

Suppose $N(x)$ and $D(x)$ had some common factor $(x - c)$. The graph of $f$ would then have a hole at $(c, f(c))$

= Trigonometry

== Functions


#grid(
  columns: (1fr, 1fr),
  [
    #ctz-canvas(length: 1cm, {
      import cetz.draw: *

      ctz-init()
      ctz-style(point: (shape: "dot", size: 0.08, fill: black))

      ctz-def-points("A", (0, 4), "B", (6, 0), "C", (0, 0))

      ctz-draw(segment: ("A", "B"))
      ctz-draw-measure-segment(
        "A",
        "B",
        label: text(size: 1.25em)[hypotenuse],
        stroke: 0pt,
      )

      ctz-draw(segment: ("B", "C"))
      ctz-draw-measure-segment(
        "B",
        "C",
        label: text(size: 1.25em)[opposite],
        stroke: 0pt,
      )

      ctz-draw(segment: ("C", "A"))
      ctz-draw-measure-segment(
        "C",
        "A",
        label: text(size: 1.25em)[adjacent],
        stroke: 0pt,
      )

      ctz-draw-angle(
        "B",
        "A",
        "C",
        label: $theta$,
        radius: 1,
        stroke: green + 0.8pt,
        fill: green.lighten(70%),
      )
      ctz-draw-mark-right-angle("A", "C", "B", size: 0.4)

      ctz-draw(points: ("A", "B", "C"), labels: (
        A: (pos: "above left", offset: (0.1, 0)),
        B: "right",
        C: "below left",
      ))
    })
    #grid(
      $
        sin θ & = "opposite" / "hypotenuse" \
        cos θ & = "adjacent" / "hypotenuse" \
        tan θ & = "opposite" / "adjacent"
      $,
      $
        csc θ & = "hypotenuse" / "opposite" \
        sec θ & = "hypotenuse" / "adjacent" \
        cot θ & = "adjacent" / "opposite"
      $,
    )],
  [#ctz-canvas(length: 1cm, {
      import cetz.draw: *

      ctz-init()
      ctz-style(point: (shape: "dot", size: 0.08, fill: black))

      let radius = 2.75
      let alpha = 3 * calc.pi / 4

      ctz-def-points(
        "X1",
        (-3.5, 0),
        "X2",
        (3.5, 0),
        "Y1",
        (0, 3.5),
        "Y2",
        (0, -3.5),
      )
      ctz-draw-circle-diameter(
        (-radius, 0),
        (radius, 0),
        stroke: (thickness: 0.75pt, dash: "dashed"),
      )
      ctz-draw-path("X1<->X2", points: false, labels: false)
      ctz-draw-path("Y1<->Y2", points: false, labels: false)

      ctz-def-points(
        "P",
        (radius * calc.cos(alpha), radius * calc.sin(alpha)),
        "O",
        (0, 0),
        "B",
        (radius * calc.cos(alpha), 0),
      )

      ctz-draw(segment: ("O", "B"), dim: $ x $)
      ctz-draw(segment: ("B", "P"), dim: $ y $, stroke: (
        paint: purple,
        thickness: 0.75pt,
        dash: "dashed",
      ))
      ctz-draw(segment: ("O", "P"), stroke: 0.75pt)

      ctz-draw-angle(
        "O",
        "X2",
        "P",
        label: $theta$,
        radius: 0.75,
        stroke: green + 0.8pt,
        fill: green.lighten(70%),
      )

      ctz-draw(points: "P", labels: (
        P: (pos: "above left", offset: (0.1, 0)),
      ))
    })
    #grid(
      columns: (auto, auto),
      $
        sin θ & = y / 1 = y \
        cos θ & = x / 1 = x \
        tan θ & = y / x
      $,
      $
        csc θ & = 1 / y \
        sec θ & = 1 / x \
        cot θ & = x / y
      $,
    )],
)

#v(3em)

#align(center)[#grid(
  columns: 1fr,
  row-gutter: 32pt,
  figure(
    caption: [Functions],
    table(
      columns: (auto, auto, auto, auto),
      table.header([Function], [Domain], [Range], [Period]),
      $ sin $, $ RR $, $ [-1, 1] $, $ 2 pi $,
      $ cos $, $ RR $, $ [-1, 1] $, $ 2 pi $,
      $ tan $, ${x | x in RR, (x + pi / 2) mod pi != 0}$, $ RR $, $ pi $,

      $ csc $,
      ${x | x in RR, x mod pi != 0}$,
      $ (-oo, -1] union [1, oo) $,
      $ 2 pi $,

      $ sec $,
      ${x | x in RR, (x + pi / 2) mod pi != 0}$,
      $ (-oo, -1] union [1, oo) $,
      $ 2 pi $,

      $ cot $, $ {x | x in RR, x mod pi != 0} $, $RR$, $pi$,
    ),
  ),
  figure(
    caption: [Inverse Functions],
    table(
      columns: (auto, auto, auto),
      table.header([Function], [Domain], [Range]),
      $ sin^(-1) "/" arcsin $, $ [-1, 1] $, $ [-pi / 2, pi / 2] $,
      $ cos^(-1) "/" arccos $, $ [-1, 1] $, $ [0, pi] $,
      $ tan^(-1) "/" arctan $, $ RR $, $ (-pi / 2, pi / 2) $,

      $ csc^(-1) "/" "arccsc" $,
      $ (-oo, -1] union [1, oo) $,
      $ [-pi / 2, 0) union (0, pi / 2] $,

      $ sec^(-1) "/" "arcsec" $,
      $ (-oo, -1] union [1, oo) $,
      $ [0, pi / 2) union (pi / 2, pi] $,

      $ cot^(-1) "/" "arccot" $, $ RR $, $ (0, pi) $,
    ),
  ),
  figure(caption: [Common Values], table(
    columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
    table.header([], [0°], [30°], [45°], [60°], [90°], [180°], [270°], [360°]),
    "sin", $0$, $ 1/2 $, $ sqrt(2) / 2 $, $ sqrt(3) / 2 $, $1$, $0$, $-1$, $0$,

    "cos",
    $1$,
    $ sqrt(3) / 2 $,
    $ sqrt(2) / 2 $,
    $ 1 / 2 $,
    $0$,
    $-1$,
    $0$,
    $1$,

    "cos", $0$, $ sqrt(3) / 3 $, $1$, $sqrt(3)$, [undef], $0$, [undef], $0$,
  ))
)]

== Identities
#grid(
  columns: 1fr,
  row-gutter: 32pt,
  grid(
    columns: (1fr, 1.4fr, 1fr),
    [

      === Radians and Degrees
      $
             n° & = pi / 180n "rad" \
        m "rad" & = (180 / pi m)°
      $
    ],
    [

      === Reciprocals
      #grid(
        columns: (auto, auto),
        column-gutter: 16pt,
        $
          csc θ = (sin θ)^(-1) \
          sec θ = (cos θ)^(-1) \
          cot θ = (tan θ)^(-1)
        $,
        $
          sin θ = (csc θ)^(-1) \
          cos θ = (sec θ)^(-1) \
          tan θ = (cot θ)^(-1)
        $,
      ) ],
    [

      === Pythagorean
      $
        sin^2θ + cos^2θ = 1 \
        tan^2θ + 1 = sec^2θ \
        1 + cot^2θ = csc^2θ
      $
    ],
  ),
  grid(
    [#align(center)[=== Even/Odd]
      #align(center)[#grid(
        columns: (auto, auto),
        $
          sin (-θ) & = - & sin θ \
          cos (-θ) & =   & cos θ \
          tan (-θ) & = - & tan θ
        $,
        $
          csc (-θ) & = - & csc θ \
          sec (-θ) & =   & sec θ \
          cot (-θ) & = - & cot θ
        $,
      )] ],
    [
      #align(center)[=== Sum-to-Difference]
      $
        sin(α pm β) & = sin α cos β pm cos α sin β \
        cos(α pm β) & = cos α cos β pm sin α sin β \
        tan(α pm β) & = (tan α pm tan β) / (1 mp tan α tan β)
      $
    ],
  ),
  grid(
    align: center,
    [

      === Half-Angle
      $
        sin (θ / 2) & = pm sqrt((1 - cos θ) / 2) \
        sin (θ / 2) & = pm sqrt((1 + cos θ) / 2) \ \
        tan (θ / 2) = pm sqrt((1 - cos θ) / (1 + cos θ)) & = (sin θ) / (1 + cos θ) = (1 - cos θ) / (sin θ)
      $
    ],
    [

      === Double-Angle
      $
                            sin 2θ & = 2 sin θ cos θ \
        cos 2θ = cos^2 θ - sin^2 x & = 2cos^2 θ - 1 = 1 - 2sin^2 θ \
                            tan 2θ & = (2 tan θ) / (1 - tan^2 θ)
      $
    ],
  ),
  [#align(center)[=== Sum-to-Product]

    #grid(
      columns: (auto, auto),
      column-gutter: 32pt,
      $
        sin α + sin β & =   & 2 & sin & ((α + β) / 2) & cos & ((α - β) / 2) \
        sin α - sin β & =   & 2 & cos & ((α + β) / 2) & sin & ((α - β) / 2) \
        cos α + cos β & =   & 2 & cos & ((α + β) / 2) & cos & ((α - β) / 2) \
        cos α - cos β & = - & 2 & sin & ((α + β) / 2) & sin & ((α - β) / 2)
      $,
      $
        tan α pm tan β & = (sin(α pm β)) / (cos α cos β), \
           cos α cos β & != 0 \
                       \
        cot α pm cot β & = (sin(β pm α)) / (sin α sin β), \
           sin α sin β & != 0 \
      $,
    )],
  grid(
    [=== Product-to-Sum
      $
        sin α sin β & = (cos (α - β) - cos (α + β)) / 2 \
        cos α cos β & = (cos (α + β) + cos (α - β)) / 2 \
        sin α cos β & = (sin (α + β) + sin (α - β)) / 2
      $],
    [=== Co-Function
      #grid(
        columns: (1fr, 1fr),
        column-gutter: 0pt,
        $
          sin & (90° - θ) & = cos θ \
          sec & (90° - θ) & = csc θ \
          tan & (90° - θ) & = cot θ
        $,
        $
          cos & (90° - θ) & = sin θ \
          csc & (90° - θ) & = sec θ \
          cot & (90° - θ) & = tan θ
        $,
      )],
  )
)

== Laws

#grid(
  columns: (1fr, 1fr, 1fr),
  [=== Law of Sines
    $
      a / (sin α) = b / (sin β) = c / (sin γ) \
      \
      (sin α) / a = (sin β) / b = (sin γ) / c \
    $],
  [=== Law of Cosines
    $
      a^2 = b^2 + c^2 - 2 b c cos α \
      \
      cos α = (b^2 + c^2 - a^2) / (2 b c)
    $],
  [=== Law of Tangents
    $
      (a - b) / (a + b) = display(tan (1 / 2 (α - β))) / display(tan (1 / 2 (α + β)))
    $],
)

= Graphs and Geometry

== Lines and Points

#grid(
  row-gutter: 24pt,
  [=== Distance
    $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $],
  [=== Midpoint
    $ M = ((x_1 + x_2) / 2, (y_1 + y_2) / 2) $],
  [=== Pythagorean Theorem
    $ a^2 + b^2 = c^2 ==> c = sqrt(a^2 + b^2) $],
  [=== Perpendicular Bisector
    $ 2(x_2 - x_1)x + 2(y_2 - y_1)y = x_2^2 + y_2^2 - x_1^2 - y_1^2 $],
)

== Shapes

=== Circles
#grid(
  columns: (1fr, 1fr, 1fr),
  $ (x - m)^2 + (y - n)^2=r^2 $,
  $ "Area" = pi r^2 $,
  $ "Circumference" = 2 pi r $,
)

=== Regular Polygons
#grid(
  $ "Sum of Interior Angles" = 180 (n - 2) degree $,
  $ "Area" = 1 / 2 dot "Apothem" dot "Perimeter" $,
)

=== Volumes
#grid(
  columns: (1fr, 1fr, 1fr, 1fr),
  $ V_"Cylinder" = pi r^2 h $,
  $ V_"Cone" = 1 / 3 pi r^2 h $,
  $ V_"Sphere" = 4 / 3 pi r^3 $,
  $ V_"Pyramid" = 1 / 3 B h $,
)

=== Triangle Similarity
Two triangles $triangle A B C "and" triangle D E F$ are similar if
#grid(
  columns: (1fr, 1fr, 1fr),
  [==== SSS $ (A B) / (D E) = (B C) / (E F) = (A C) / (D F) $],
  [==== SAS $ (A B) / (D E) = (A C) / (D F) "and" m angle A = m angle D $],
  [==== AA
    $
      m angle A & = m angle D \
      m angle B & = m angle E
    $],
)

== Graph Manipulation

#align(center)[#block(breakable: false)[#table(
  columns: 3,
  table.header([Transformation], [Conditions], [Description]),
  $g(x) & = f(x pm c)$,
  [$ (+) \ (-) $],
  [$ "shift left" c "units" \ "shift right" c "units" $],

  $g(x) & = f(x) pm c$,
  [$ (+) \ (-) $],
  [$ "shift left" c "units" \ "shift right" c "units" $],

  $g(x) & = c f(x)$,
  [$ c < 1 \ c > 1 $],
  [$
    "vertical compress by a factor of" c \
    "vertical stretch by a factor of" c
  $],

  $g(x) & = f(c x)$,
  [$ c < 1 \ c > 1 $],
  [$
    "horizontal stretch by a factor of" c \ "horizontal compress by a factor of" c
  $],

  $g(x) & = -f(x)$, [N/A], [$ "reflect about the x-axis" $],
  $g(x) & = f(-x)$, [N/A], [$ "reflect about the y-axis" $],
)]]

= Miscellaneous

== Inverse Functions

Let $f$ and $g$ be two function such that
#grid(
  $ f(g(x)) = x "for all" x "in the domain of" g $,
  $ g(f(x)) = x "for all" x "in the domain of" f $,
)

Under these conditions, the function $g$ is the _inverse function_ of the function $f$ (and vice-versa). The function $g$ can then be denoted as $f^(-1)$. So,

#grid(
  $ f(f^(-1)(x)) = x $,
  $ f^(-1)(f(x)) = x $,
)

The domain of $f$ must be equal to the range of $f^(-1)$, and the range of $f$ must be equal to the domain of $f^(-1)$.

== Complex Numbers

Let $a$ and $b$ be real numbers. The number $a + b i$ is a _complex number_ written in _standard form_. The number $a$ is the _real part_ and the number $b i$ is the _imaginary part_ of the complex number.

When $b = 0$, the number $a + b i$ is a real number. When $b != 0$, the number $a + b i$ is an _imaginary number_. A number of the form $b i$, where $b != 0$, is a _pure imaginary number_.

$ i^1 = i, i^2 = -1, i^3 = -i, i^4 = 1, i^n = i^(n mod 4) $

== Exponential and Logarithmic Properties

#align(center)[

  === Exponential

  #grid(
    columns: (auto, auto),
    gutter: 32pt,
    $
                a^0 & = 1 \
        a^m dot a^n & = a^(m + n) \
      (a^m) / (a^n) & = a^(m - n) \
            (a b)^n & = a^n dot b^n
    $,
    $
          (a / b)^n & = (a^n) / (b^n) \
            (a^m)^n & = a^(m dot n) \
      a^((1) / (n)) & = root(n, a) \
          a^m = a^n & ==> m = n
    $,
  )
  === Logarithmic

  #grid(
    columns: (auto, auto),
    gutter: 32pt,
    $
          log_n 1 & = 0 \
          log_n n & = 1 \
            log x & = log_(10)x \
             ln x & = log_e x \
      log_n a = b & ==> a =n^b \
      n^(log_n x) & = x \
        log_n n^x & = x
    $,
    $
        log_n a^b & = b log_n a \
      log_(n^b) a & = 1 / b log_n a \
        log_n a b & = log_n a + log_n b \
      log_n a / b & = log_n a - log_n b \
          log_n a & = log_n b ==> a = b
    $,
  )
]
