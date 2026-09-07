#set enum(numbering: "1.a.", spacing: 1.5em, indent: 1em)

#show heading: set block(below: 1em)
#show heading.where(level: 3): set block(below: 1.5em, above: 1.5em)
#show heading.where(level: 3): set heading(numbering: none, outlined: false)
#show heading.where(level: 4): set heading(numbering: none, outlined: false)

#set grid(align: center, columns: (1fr, 1fr), gutter: 16pt)

#set page(numbering: "1", margin: 1in)
#set heading(
  numbering: "1.",
)
#set text(font: "New Computer Modern")

#let pm = $plus.minus$
#let mp = $minus.plus$

#align(center)[
  #text(size: 24pt, weight: "bold")[Mathletes Formulas] \
  #v(8pt)
  #text(size: 16pt, weight: "medium")[Sheldon Mathletes] \
  #v(4pt)
  #text(size: 12pt)[2026-2027] \
]
#outline(title: "Table of Contents", indent: 0.25in)

#pagebreak()

= Polynomials

== Linear Equations
#grid(
  align: left + horizon,
  columns: (auto, 1fr, auto, 1fr),
  column-gutter: 20pt,
  [=== Slope-Intercept], $y = m x + b$,           [=== Slope],       $ m = (Delta y) / (Delta x) = (y_2-y_1) / (x_2-x_1) $,
  [=== Point-Slope],     $y - y_1 = m (x - x_1)$, [=== Point-Point], $ y - y_1 = (y_2-y_1) / (x_2-x_1) (x - x_1) $
)
Parallel lines have equivalent slopes, while perpendicular lines have slopes that are negative reciprocals ($m perp - 1 / m$)

== Quadratics

=== Quadratic Equations

#grid(
  grid(
    columns: 1,
    [==== Standard Form $a x^2 + b x + c$],
    [==== Vertex Form $a(x - h)^2 + k$],
    $ x = (-b pm sqrt(b^2 - 4 a c)) / (2a) $
  ),
  align(left)[Let $D = b^2 - 4 a c,$
  + $D > 0 ==>$ 2 real solutions
  + $D = 0 ==>$ 1 real solution
  + $D < 0 ==>$ no real solutions]
)

=== Minimum and Maximum Values

Consider the function $f(x) = a x^2 + b x + c$ with vertex $(-b / 2a, f(-b / 2a))$

+ $a > 0 ==> f$ has a _minimum_ at $x = -b / 2a$. The minimum value is $f(-b / 2a)$.
+ $a > 0 ==> f$ has a _maximum_ at $x = -b / 2a$. The maximum value is $f(-b / 2a)$.

== General Polynomials

Let $n$ be a non-negative integer and let $a_n, a_(n-1), ... , a_2, a_1, a_0$ be real numbers such that $a_n != 0$. The function:
$ f(x) = a_n x^n + a_(n-1)x^(n-1) + ... + a_2x^2 + a_1x + a_0 $
is a polynomial function of x with degree n.

=== Linear Factorization Theorem

If $f(x)$ is a polynomial of degree $n$, where $n > 0$, then $f(x)$ has precisely $n$ linear factors
$ f(x) = a_n (x-c_1) (x-c_2) ... (x-c_n) $
where $c_1, c_2, ..., c_n$ are complex numbers.

=== Rational Zero Test

If the polynomial has _integer_ coefficients, then every rational zero of $f$ has the form $p / q$,
where $p$ and $q$ have no commons factors other than 1, and

#grid(
  $ p= "a factor of the constant term" a_0 $,
  $ q = a "factor of the leading coefficient" a_n $
)

=== Conjugate Pairs

Let $f$ be a polynomial function with _real coefficients_. If $a + b i$, where $b != 0$, is zero of $f$, the complex conjugate $a - b i$ is also a zero of $f$.

For polynomials with _integer coefficients_, $a + sqrt(b)$ being a zero implies $a - sqrt(b)$ is also a zero.

=== Roots

Let $f$ be the polynomial
$ f(x) = a_n x^n + a_(n-1) x^(n-1) + ... + a_2x^2 + a_1x + a_0 $
#grid(
  $ "The sum of all roots" = -a_n / a_(n-1) $,
  $ "The product of all roots" = (-1)^n a_0 / a_n $
)

== Rational Functions

Let $f$ be the rational function
$ f(x) = N(x) / D(x) =
    (a_n x^n + a_(n-1) x^(n-1) + ... + a_1 x + a_0) /
    (b_n x^n + b_(m-1) x^(m-1) + ... + b_1 x + b_0) $
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
  align: center + horizon,
  grid(
    $ sin θ & = "opposite" / "hypotenuse" \
      cos θ & = "adjacent" / "hypotenuse" \
      tan θ & = "opposite" / "adjacent" $,
    $ csc θ & = "hypotenuse" / "opposite" \
      sec θ & = "hypotenuse" / "adjacent" \
      cot θ & = "adjacent" / "opposite" $
  ), grid(
    columns: (auto, auto),
    $ sin θ & = y / 1 = y \
      cos θ & = x / 1 = x \
      tan θ & = y / x $, $ csc θ & = 1 / y \
      sec θ & = 1 / x \
      cot θ & = x / y $
  ),
)

#figure(caption: [Functions], table(
  inset: 8pt,
  columns: (auto, auto, auto, auto),
  table.header([Function], [Domain], [Range], [Period]),
  $sin$, $RR$,                               $[-1, 1]$,                 $2 pi$,
  $cos$, $RR$,                               $[-1, 1]$,                 $2 pi$,
  $tan$, ${x | x in RR, x mod pi != 1 / 2}$, $RR$,                      $pi$,
  $csc$, ${x | x in RR, x mod pi != 0}$,     $(-oo, -1] union [1, oo)$, $2 pi$,
  $sec$, ${x | x in RR, x mod pi != 1 / 2}$, $(-oo, -1] union [1, oo)$, $2 pi$,
  $cot$, ${x | x in RR, x mod pi != 0}$,     $RR$,                      $pi$,
))
#figure(caption: [Inverse Functions], table(
  inset: 8pt,
  columns: (auto, auto, auto),
  align: center + horizon,
  table.header([Function], [Domain], [Range]),
  $sin^(-1) "/" arcsin$,   $[-1, 1]$,                 $ [(-pi / 2), pi / 2] $,
  $cos^(-1) "/" arccos$,   $[-1, 1]$,                 $ [0, pi / 2] $,
  $tan^(-1) "/" arctan$,   $bb(R)$,                   $ (-pi / 2, pi / 2) $,
  $csc^(-1) "/" "arccsc"$, $(-oo, -1] union [1, oo)$, $ [-pi / 2, 0) union (0, pi / 2] $,
  $sec^(-1) "/" "arcsec"$, $(-oo, -1] union [1, oo)$, $ [0, pi / 2) union (pi / 2, pi] $,
  $cot^(-1) "/" "arccot"$, $bb(R)$,                   $ (0, pi) $,
))

#figure(caption: [Common Values], table(
  inset: 8pt,
  columns: (auto, auto, auto, auto, auto, auto, auto, auto, auto),
  align: center + horizon,
  table.header([], [0°], [30°], [45°], [60°], [90°], [180°], [270°], [360°]),
  $sin$, $0$, $1$,             $ sqrt(2) / 2 $, $ sqrt(3) / 2 $, $1$,     $0$,  $-1$,    $0$,
  $cos$, $1$, $ sqrt(3) / 2 $, $ sqrt(2) / 2 $, $ 1 / 2 $,       $0$,     $-1$, $0$,     $1$,
  $cos$, $0$, $ sqrt(3) / 3 $, $1$,             $sqrt(3)$,       [undef], $0$,  [undef], $0$
))

== Identities
#grid(
  columns: (1fr),
  row-gutter: 32pt,
  grid(
    columns: (1fr, 1.4fr, 1fr),
    align: center + horizon,
    [

      === Radians and Degrees
      $ n°      & = pi / 180n "rad" \
        m "rad" & = (180 / pi m)° $
    ], [

      === Reciprocals
      #grid(
        columns: (auto, auto),
        column-gutter: 8pt,
        $ csc θ = (sin θ)^(-1) \
        sec θ = (cos θ)^(-1) \
        cot θ = (tan θ)^(-1) $, $ sin θ = (csc θ)^(-1) \
        cos θ = (sec θ)^(-1) \
        tan θ = (cot θ)^(-1) $,
      ) ], [

      === Pythagorean
      $ sin^2θ + cos^2θ = 1 \
      tan^2θ + 1 = sec^2θ \
      1 + cot^2θ = csc^2θ $
    ]
  ),
  grid(
    [#align(center)[=== Even/Odd]
    #align(center)[#grid(
      columns: (auto, auto),
      $ sin (-θ) & = - & sin θ \
        cos (-θ) & =   & cos θ \
        tan (-θ) & = - & tan θ $, $
        csc (-θ) & = - & csc θ \
        sec (-θ) & =   & sec θ \
        cot (-θ) & = - & cot θ $,
    )] ],
    [
      #align(center)[=== Sum-to-Difference]
      $ sin(α pm β) & = sin α cos β pm cos α sin β            \
        cos(α pm β) & = cos α cos β pm sin α sin β            \
        tan(α pm β) & = (tan α pm tan β) / (1 mp tan α tan β) $
    ]
  ),
  grid(
    align: center,
    [

      === Half-Angle
      $ sin (θ / 2) & = pm sqrt((1 - cos θ) / 2)           & "*" \
        sin (θ / 2) & = pm sqrt((1 + cos θ) / 2)           & "*" \
        tan (θ / 2) & = pm sqrt((1 - cos θ) / (1 + cos θ)) & "*" $
    ],
    [

      === Double-Angle
      $ sin 2θ                     & = 2 sin θ cos θ               \
        cos 2θ = cos^2 θ - sin^2 x & = 2cos^2 θ - 1 = 1 - 2sin^2 θ \
        tan 2θ                     & = (2 tan θ) / (1 - tan^2 θ) $
      #align(left)[\* where you consider the angle's location to determine the sign]
    ]
  ),
  [#align(center)[=== Sum-to-Product]

  #grid(
    columns: (1.5fr, 1fr),
    align: horizon + center,
    $ sin α + sin β & =   & 2 & sin & ((α + β) / 2) & cos & ((α - β) / 2) \
      sin α - sin β & =   & 2 & cos & ((α + β) / 2) & sin & ((α - β) / 2) \
      cos α + cos β & =   & 2 & cos & ((α + β) / 2) & cos & ((α - β) / 2) \
      cos α - cos β & = - & 2 & sin & ((α + β) / 2) & sin & ((α - β) / 2) $, $ tan α pm tan β & = (sin(α pm β)) / (cos α cos β) \
      "where"        & α / (90°) mod 2 != 1            \
                                                       \
      cot α pm cot β & = (sin(β pm α)) / (sin α sin β) \
      "where"        & α / (90°) mod 2 != 2 $
  )],
  grid(
    align: horizon + center,
    [=== Product-to-Sum
    $ sin α sin β & = (cos (α - β) - cos (α + β)) / 2 \
      cos α cos β & = (cos (α + β) + cos (α - β)) / 2 \
      sin α cos β & = (sin (α + β) + sin (α - β)) / 2 $],
    [=== Co-Function
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 0pt,
      $ sin & (90-θ) & = cos θ \
        sec & (90-θ) & = csc θ \
        tan & (90-θ) & = cot θ $, $ cos & (90 - θ) & = sin θ \
        csc & (90-θ)   & = sec θ \
        cot & (90-θ)   & = tan θ $,
    )]
  )
)

== Laws

#grid(
  columns: (1fr, 1fr, 1fr),
  align: center + horizon,
  [=== Law of Sines
  $ (sin α) / a = (sin β) / b = (sin γ) / c $
  $ "Area" = 1 / 2 a b sin α $ ], [=== Law of Cosines
  $ a^2 = b^2 + c^2 - 2 b c cos α $
  $ cos α = (b^2 + c^2 - a^2) / (2 b c) $ ], [=== Law of Tangents
  $ (a - b) / (a + b) = (tan (display(1 / 2) (α - β))) / (tan (display(1 / 2) (α + β))) $ ],
)

= Graphs and Geometry

== Lines and Points

#grid(
  [=== Distance
  $ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $ ],
  [=== Midpoint
  $ M = ((x_1 + x_2) / 2, (y_1 + y_2) / 2) $ ]
)

#grid(
  [=== Perpendicular Bisector
  $ 2(x_2 - x_1)x + 2(y_2 - y_1)y = x_2^2 + y_2^2 - x_1^2 - y_1^2 $],
  [=== Pythagorean Theorem
  $ a^2 + b^2 = c^2 ==> c = sqrt(a^2 + b^2) $]
)

== Shapes

=== Circles
#grid(
  columns: (1fr, 1fr, 1fr),
  $ (x-m)^2+(y-n)^2=r^2 $, $ A = pi r^2 $, $ C = 2 pi r $
)

=== Regular Polygons
#grid(
  align: center + horizon,
  $ "Sum of Interior Angles" = 180 (n - 2) degree $,
  $ "Area" = 1 / 2 dot "Apothem" dot "Perimeter" $
)

=== Volumes
#grid(
  columns: (1fr, 1fr, 1fr),
  $ V_"Cylinder" = pi r^2 h $, $ V_"Cone" = 1 / 3 pi r^2 h $, $ V_"Sphere" = 4 / 3 pi r^3 $
)

=== Triangle Similarity
Two triangles $triangle A B C "and" triangle D E F$ are similar if
#grid(
  columns: (1fr, 1fr, 1fr),
  align(center + horizon)[ ==== SSS $ (A B) / (D E) = (B C) / (E F) = (A C) / (D F) $], align(center + horizon)[ ==== SAS $ (A B) / (D E) = (A C) / (D F) "and" angle A = angle D $], align(center + horizon)[==== AA $ angle A = angle D "and" angle B = angle E $]
)

== Graph Manipulation

#align(center)[#table(
  inset: 8pt,
  columns: 3,
  align: horizon,
  table.header([Transformation], [Conditions], [Description]),
  $g(x) & = f(x pm c)$, [$ (+) $ $ (-) $],     [$ "shift left" c "units" $ $ "shift right" c "units" $],
  $g(x) & = f(x) pm c$, [$ (+) $ $ (-) $],     [$ "shift left" c "units" $ $ "shift right" c "units" $],
  $g(x) & = c f(x)$,    [$ c < 0 $ $ c > 0 $], [$ "vertical compress by a factor of" c $ $ "vertical stretch by a factor of" c $],
  $g(x) & = f(c x)$,    [$ c < 0 $ $ c > 0 $], [$ "horizontal stretch by a factor of" c $ $"horizontal compress by a factor of" c$],
  $g(x) & = -f(x)$,     [],                    [$ "reflect about the x-axis" $],
  $g(x) & = f(-x)$,     [],                    [$ "reflect about the y-axis" $]
)]

= Miscellaneous

== Inverse Functions

Let $f$ and $g$ be two function such that
#grid(
  $ f(g(x)) = x "for all" x "in the domain of" g $,
  $ g(f(x)) = x "for all" x "in the domain of" f $
)

Under these conditions, the function $g$ is the _inverse function_ of the function $f$ (and vice-versa). The function $g$ can then be denoted as $f^(-1)$. So,

#grid(
  $ f(f^(-1)(x)) = x $,
  $ f^(-1)(f(x)) = x $
)

The domain of $f$ must be equal to the range of $f^(-1)$, and the range of $f$ must be equal to the domain of $f^(-1)$.

== Complex Numbers

Let $a$ and $b$ be real numbers. The number $a + b i$ is a _complex number_ written in _standard form_. The number $a$ is the _real part_ and the number $b i$ is the _imaginary part_ of the complex number.

When $b = 0$, the number $a + b i$ is a real number. When $b != 0$, the number $a + b i$ is an _imaginary number_. A number ofr the form $b i$, where $b != 0$, is a _pure imaginary number_.

$ i^1 = i, i^2 = -1, i^3 = -i, i^4 = 1, i^n = i^(n mod 4) $

== Exponential and Logarithmic Relationships

#grid(
  align: center + horizon,
  [ === Exponential

  #grid(
    columns: (auto, auto),
    gutter: 32pt,
    $ a^0           & = 1           \
      a^m dot a^n   & = a^(m + n)   \
      (a^m) / (a^n) & = a^(m - n)   \
      (a b)^n       & = a^n dot b^n $, $
      (a / b)^n     & = (a^n) / (b^n) \
      (a^m)^n       & = a^(m dot n)   \
      a^((1) / (n)) & = root(n, a)    \
      a^m = a^n     & ==> m = n $
  )],
  [=== Logarithmic

  #grid(
    columns: (auto, auto),
    gutter: 32pt,
    $ log_a 1     & = 0         \
      log_a a     & = 1         \
      log x       & = log_(10)x \
      ln x        & = log_e x   \
      y = log_b x & ==> b^y = x \
      a^(log_a b) & = b $, $ log a b^n   & = n log a b         \
      log a^n b   & = 1 / n log a b     \
      log_n a b   & = log_n a + log_n b \
      log_n a / b & = log_n a - log_n b \
      log_n a     & = log_n b ==> a = b $
  )]
)
