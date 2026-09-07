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
  align: left,
  columns: (1fr, 1.1fr),
  [ For polynomials of degree one, the variable $m$ is used to refer to the slope of the lines drawn by their graphs.
  Parallel lines have equivalent slopes, while perpendicular lines have slopes that are reciprocals of one another ($m perp 1 / m$).], grid(
    align: center + horizon,
    columns: (auto, auto),
    column-gutter: 40pt,
    [=== Slope-Intercept
    $y = m x + b$

    === Slope
    $ m = (Delta y) / (Delta x) = (y_2-y_1) / (x_2-x_1) $ ], [=== Point-Slope
    $y - y_1 = m (x - x_1)$

    === Point-Point
    $ y - y_1 = (y_2-y_1) / (x_2-x_1) (x - x_1) $ ]
  )
)

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
    $ sin x & = "opposite" / "hypotenuse" \
      cos x & = "adjacent" / "hypotenuse" \
      tan x & = "opposite" / "adjacent" $,
    $ csc x & = "hypotenuse" / "opposite" \
      sec x & = "hypotenuse" / "adjacent" \
      cot x & = "adjacent" / "opposite" $
  ), grid(
    columns: (auto, auto),
    $ sin x & = y / 1 = y \
      cos x & = x / 1 = x \
      tan x & = y / x $, $ csc x & = 1 / y \
      sec x & = 1 / x \
      cot x & = x / y $
  ),
)

#figure(caption: [Functions], table(
  inset: 8pt,
  columns: (auto, auto, auto, auto),
  table.header([Function], [Domain], [Range], [Period]),
  $sin$, $RR$,                               $[-1, 1]$,                 $2 pi$,
  $cos$, $RR$,                               $[-1, 1]$,                 $2 pi$,
  $tan$, ${x | x in RR, x mod pi != 0}$,     $RR$,                      $pi$,
  $csc$, ${x | x in RR, x mod pi != 1 / 2}$, $(-oo, -1] union [1, oo)$, $2 pi$,
  $sec$, ${x | x in RR, x mod pi != 0}$,     $(-oo, -1] union [1, oo)$, $2 pi$,
  $cot$, ${x | x in RR, x mod pi != 1 / 2}$, $RR$,                      $pi$,
))
#figure(caption: [Inverse Functions], table(
  inset: 8pt,
  columns: (auto, auto, auto),
  table.header([Function], [Domain], [Range]),
  $sin^(-1) "/" arcsin$,   $[-1, 1]$,                 $[-90°, 90°]$,
  $cos^(-1) "/" arccos$,   $[-1, 1]$,                 $[0°, 180°]$,
  $tan^(-1) "/" arctan$,   $bb(R)$,                   $[-90°, 90°]$,
  $csc^(-1) "/" "arccsc"$, $(-oo, -1] union [1, oo)$, $[-90°, 90°]$,
  $sec^(-1) "/" "arcsec"$, $(-oo, -1] union [1, oo)$, $[0°, 180°]$,
  $cot^(-1) "/" "arccot"$, $bb(R)$,                   $[0°, 180°]$,
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
      $ csc x = (sin x)^(-1) \
      sec x = (cos x)^(-1) \
      cot x = (tan x)^(-1) $, $ sin x = (csc x)^(-1) \
      cos x = (sec x)^(-1) \
      tan x = (cot x)^(-1) $,
    ) ], [

    === Pythagorean
    $ sin^2x + cos^2x = 1 \
    tan^2x + 1 = sec^2x \
    1 + cot^2x = csc^2x $
  ]
)

#grid(
  [#align(center)[=== Even/Odd]
  #align(center)[#grid(
    columns: (auto, auto),
    $ sin (-x) & = - & sin x \
      cos (-x) & =   & cos x \
      tan (-x) & = - & tan x $, $
      csc (-x) & = - & csc x \
      sec (-x) & =   & sec x \
      cot (-x) & = - & cot x $,
  )] ],
  [
    #align(center)[=== Sum-to-Difference]
    $ sin(x pm y) & = sin x cos y pm cos x sin y            \
      cos(x pm y) & = cos x cos y pm sin x sin y            \
      tan(x pm y) & = (tan x pm tan y) / (1 mp tan x tan y) $
  ]
)

#grid(
  align: center,
  [

    === Half-Angle
    $ sin (x / 2) & = pm sqrt((1 - cos x) / 2)           & "*" \
      sin (x / 2) & = pm sqrt((1 + cos x) / 2)           & "*" \
      tan (x / 2) & = pm sqrt((1 - cos x) / (1 + cos x)) & "*" $
  ],
  [

    === Double-Angle
    $ sin 2x                   & = 2 sin x cos x               \
      cos 2x = cos^2 x-sin^2 x & = 2cos^2 x - 1 = 1 - 2sin^2 x \
      tan 2x                   & = (2 tan x) / (1 - tan^2 x) $
    #align(left)[\* where you consider the angle's location to determine the sign]
  ]
)

#align(center)[=== Sum-to-Product]

#grid(
  columns: (1.5fr, 1fr),
  align: horizon + center,
  $ sin x + sin y & =   & 2 & sin & ((x + y) / 2) & cos & ((x - y) / 2) \
    sin x - sin y & =   & 2 & cos & ((x + y) / 2) & sin & ((x - y) / 2) \
    cos x + cos y & =   & 2 & cos & ((x + y) / 2) & cos & ((x - y) / 2) \
    cos x - cos y & = - & 2 & sin & ((x + y) / 2) & sin & ((x - y) / 2) $, $ tan x pm tan y & = (sin(x pm y)) / (cos x cos y) \
    "where"        & x / (90°) mod 2 != 1            \
                                                     \
    cot x pm cot y & = (sin(y pm x)) / (sin x sin y) \
    "where"        & x / (90°) mod 2 != 2 $
)

#grid(
  align: horizon + center,
  [=== Product-to-Sum
  $ sin x sin y & = (cos (x-y) - cos (x+y)) / 2 \
    cos x cos y & = (cos (x+y) + cos (x-y)) / 2 \
    sin x cos y & = (sin (x+y) + sin (x-y)) / 2 $],
  [=== Co-Function
  #grid(
    columns: (1fr, 1fr),
    column-gutter: 0pt,
    $ sin & (90-x) & = cos x \
      sec & (90-x) & = csc x \
      tan & (90-x) & = cot x $, $ cos & (90-x) & = sin x \
      csc & (90-x) & = sec x \
      cot & (90-x) & = tan x $,
  )]
)

== Laws

#grid(
  columns: (1fr, 1fr, 1fr),
  [=== Law of Sines
  $ (sin A) / a = (sin B) / b = (sin C) / c $
  $ "Area" = 1 / 2 a b sin A $ ], [=== Law of Cosines
  $ a^2 = b^2 + c^2 - 2 b c cos A $
  $ cos A = (b^2 + c^2 - a^2) / (2 b c) $ ], [=== Law of Tangents
  $ (a - b) / (a + b) = (tan (1 / 2 (A - B))) / (tan (1 / 2 (A + B))) $ ],
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

== Relationships

#align(center)[ === Exponential

#grid(
  columns: (auto, auto),
  gutter: 32pt,
  $ a^0           & = 1           \
    a^m dot a^n   & = a^(m + n)   \
    (a^m) / (a^n) & = a^(m - n)   \
    (a b)^n       & = a^n dot b^n $, $
    (a / b)^n     & = (a^n) / (b^n) \
    (a^m)^n       & = a^(m \cdot n) \
    a^((1) / (n)) & = root(n, a)    \
    a^m = a^n     & ==> m = n $
)

=== Logarithmic

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
