#show heading.where(level: 3): set heading(numbering: none, outlined: false)
#set enum(numbering: "1.a.")

#set page(numbering: "1")
#set heading(
  numbering: "1.",
)
#set text(font: "New Computer Modern")

#let sideBySide(body1, body2) = {
  grid(
    columns: (1fr, 1fr),
    align(right)[
      #body1
    ], align(left)[
      #body2 ]
  )
}

#align(center)[
  #text(size: 24pt, weight: "bold")[Mathletes Formulas] \
  #v(8pt)
  #text(size: 16pt, weight: "medium")[Sheldon Mathletes] \
  #v(4pt)
  #text(size: 12pt)[2026-2027] \
]

#outline(title: "Table of Contents")

= Polynomials

== Linear Equations
For polynomials of degree one, the variable $m$ is used to refer to the slope of the lines drawn by their graphs. Parallel lines have equivalent slopes, while perpendicular lines have slopes that are reciprocals of one another ($m perp 1 / m$).
$ m = (Delta y) / (Delta x) = (y_2-y_1) / (x_2-x_1) $

=== Slope-Intercept Form $y = m x + b$

=== Point-Slope Form $y - y_1 = m(x - x_1)$

=== Point-Point Form
$ y - y_1 = (y_2 - y_1) / (x_2 - x_1) (x - x_1) $

== Quadratics

=== Quadratic Equation

$ x = (-b plus.minus sqrt(b^2 - 4 a c)) / (2a) $

If you let $D = b^2 - 4 a c$

+ $D > 0 arrow.r$ 2 real solutions
+ $D = 0 arrow.r$ 1 real solution
+ $D < 0 arrow.r$ no real solutions

=== Minimum and Maximum Values

Consider the function $f(x) = a x^2 + b x + c$ with vertex $(-b / 2a, f(-b / 2a))$

+ $a > 0 arrow.r f$ has a _minimum_ at $x = -b / 2a$ The minimum value is $f(-b / 2a)$
+ $a > 0 arrow.r f$ has a _maximum_ at $x = -b / 2a$ The maximum value is $f(-b / 2a)$

== General Polynomials

Let $n$ be a non-negative integer and let $a_n, a_(n-1), dots , a_2, a_1, a_0$ be real numbers such that $a_n eq.not 0$. The function:
$ f(x) = a_n x^n + a_(n-1)x^(n-1) + dots + a_2x^2 + a_1x + a_0 $
is a polynomial function of x with degree n.

=== Linear Factorization Theorem

If $f(x)$ is a polynomial of degree $n$, where $n > 0$, then $f(x)$ has precisely $n$ linear factors
$ f(x) = a_n (x-c_1) (x-c_2) dots (x-c_n) $
where $c_1, c_2, dots, c_n$ are complex numbers.

=== Rational Zero Test

If the polynomial has _integer_ coefficients, then every rational zero of $f$ has the form $p / q$,
where $p$ and $q$ have no commons factors other than 1, and

+ $p =$ a factor of the constant term $a_0$.
+ $q =$ a factor of the leading coefficient $a_n$.

=== Conjugate Pairs

Let $f$ be a polynomial function with _real coefficients_. If $a + b i$, where $b eq.not 0$, is zero of $f$, the complex conjugate $a - b i$ is also a zero of $f$.

For polynomials with _integer coefficients_, $a + sqrt(b)$ being a zero implies $a - sqrt(b)$ is also a zero.

=== Roots

Let $f$ be the polynomial
$ f(x) = a_n x^n + a_(n-1) x^(n-1) + dots + a_2x^2 + a_1x + a_0 $
#sideBySide($ text("The sum of all roots") = -a_n / a_(n-1) $, $ text("The product of all roots") = (-1)^n a_0 / a_n $)

== Rational Functions

Let $f$ be the rational function
$ f(x) = N(x) / D(x) =
    (a_n x^n + a_(n-1) x^(n-1) + dots + a_1 x + a_0) /
    (b_n x^n + b_(m-1) x^(m-1) + dots + b_1 x + b_0) $
where $N(x)$ and $D(x)$ have no common factors.

+ The graph of $f$ has _vertical_ asymptotes at the zeros of $D(x)$.
+ The graph of $f$ has at most one _horizontal asymptote_ determined by comparing the degrees of $N(x)$ and $D(x)$.
  + $n < 0 arrow.r$ the line $y = 0$ is the horizontal asymptote.
  + $n = 0 arrow.r$ the line $y = a_n / b_m$ is the horizontal asymptote.
  + $n > 0 arrow.r$ there is no horizontal asymptote.

Suppose $N(x)$ and $D(x)$ had some common factor $(x - c)$. The graph of $f$ would have a hole at $(c, f(c))$

= Trigonometry

== Functions

#sideBySide($ sin x & = text("opposite") / text("hypotenuse")                   \
  cos x & = text("adjacent") / text("hypotenuse")                   \
  tan x & = text("opposite") / text("adjacent") = (sin x) / (cos x) $
,
$ csc x & = 1 / (sin x) \
  sec x & = 1 / (cos x) \
  cot x & = 1 / (tan x) $)

#figure(table(
  inset: 10pt,
  columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  table.header([], [0°], [30°], [45°], [60°], [90°], [180°], [270°], [360°]),
  $sin$, $0$, $1$,           $sqrt(2) / 2$, $sqrt(3) / 2$, $1$,     $0$, $-1$,    $0$,
  $cos$, $1$, $sqrt(3) / 2$, $sqrt(2) / 2$, $1 / 2$,       $1$,     $0$, $-1$,    $0$,
  $cos$, $0$, $sqrt(3) / 3$, $1$,           $sqrt(3)$,     [undef], $0$, [undef], $0$,
), caption: [Common Values])

#figure(table(
  inset: 10pt,
  columns: (1fr, 1fr, 1fr),
  table.header([Function], [Domain], [Range]),
  $sin^(-1)$, $[-1, 1]$, $[-90°, 90°]$,
  $cos^(-1)$, $[-1, 1]$, $[0°, 180°]$,
  $tan^(-1)$, $bb(R)$,   $[-90°, 90°]$,
  $cot^(-1)$, $bb(R)$,   $[0°, 180°]$,
), caption: [Inverse Functions])

== Identities

=== Radians and Degrees
$ n°            & = pi / 180n text("rad") \
  m text("rad") & = (180 / pi m)° $

=== Co-function

$ cos x & = sin(90-x) \
  sin x & = cos(90-x) \
  tan x & = cot(90-x) $

=== Pythagorean

$ sin^2x + cos^2x = 1 \
1 + tan^2x = sec^2x \
1 + cot^2x = csc^2x $

=== Negative

#sideBySide($ sin (-x) & = -sin x \
  cos (-x) & = -cos x \
  tan (-x) & = -tan x $
,
$ csc (-x) & = -csc x \
  sec (-x) & = -sec x \
  cot (-x) & = -cot x $)

=== Sum to Difference

$ sin(x plus.minus y) & = sin x cos y plus.minus cos x sin y            \
  cos(x plus.minus y) & = cos x cos y plus.minus sin x sin y            \
  tan(x plus.minus y) & = (sin(x plus.minus y)) / (cos(x plus.minus y)) $

=== Half-Angle

$ sin (x / 2) & = plus.minus sqrt((1 - cos x) / 2)         \
  sin (x / 2) & = plus.minus sqrt((1 + cos x) / 2)         \
  tan (x / 2) & = plus.minus (sin (x / 2)) / (cos (x / 2)) $
where you consider the angle's location to determine the sign

=== Double-Angle

$ sin 2x                   & = 2 sin x cos x               \
  cos 2x = cos^2 x-sin^2 x & = 2cos^2 x - 1 = 1 - 2sin^2 x \
  tan 2x                   & = (sin 2x) / (cos 2x) $

=== Sum to Product
#sideBySide($ sin x plus.minus sin y & = 2 sin ((x plus.minus y) / 2) cos ((x \mp y) / 2) \
  cos x + cos y          & = 2 cos ((x + y) / 2) cos ((x - y) / 2)            \
  cos x - cos y          & = -2 sin ((x + y) / 2) sin ((x - y) / 2) $
,
$ tan x plus.minus tan y & = (sin(x plus.minus y)) / (cos x cos y) text("(1)") \
  cot x plus.minus cot y & = (sin(y plus.minus x)) / (sin x sin y) text("(2)") $)

#align(left)[ $ text("(1) where") x & eq.not 90°  & text("and") x eq.not 270° \
  text("(2) where") x & eq.not 180° & text("and") x eq.not 360° $]

=== Product to Sum

$ sin x sin y & = (cos (x-y) - cos (x+y)) / 2 \
  cos x cos y & = (cos (x+y) + cos (x-y)) / 2 \
  sin x cos y & = (sin (x+y) + sin (x-y)) / 2 $

== Laws

=== Law of Sines

$ 2r = a / (sin A) = b / (sin B) = c / (sin C) $
$ text("area") = 1 / 2 a b sin A $

=== Law of Cosines

$ a^2 = b^2 + c^2 - 2 b c cos A $
$ cos A = (b^2 + c^2 - a^2) / (2 b c) $

= Graphs and Geometry

== Relationships

=== Distance
$ d = sqrt((x_2 - x_1)^2 + (y_2 - y_1)^2) $

=== Midpoint
$ M = ((x_1 + x_2) / 2, (y_1 + y_2) / 2) $

=== Perpendicular Bisector
$ 2(x_2 - x_1)x + 2(y_2 - y_1)y = x_2^2 + y_2^2 - x_1^2 - y_1^2 $

=== Pythagorean Theorem
$ a^2 + b^2 = c^2 $

=== Circles
$ (x-m)^2+(y-n)^2=r^2 $
$ A = pi r^2 $

=== Triangle Similarity
Two triangles $triangle A B C text("and") triangle D E F$ are similar if
/ SSS: $ (A B) / (D E) = (B C) / (E F) = (A C) / (D F) $
/ SAS: $ (A B) / (D E) = (A C) / (D F) text("and") angle A = angle D $
/ AA: $ angle A = angle D text("and") angle B = angle E $

== Graph Manipulation

#align(center)[#table(
  inset: 10pt,
  columns: 3,
  align: horizon,
  table.header([Transformation], [Conditions], [Description]),
  $g(x) & = f(x plus.minus c)$, [$ (+) $ $ (-) $],     [$ "shift left" c "units" $ $ "shift right" c "units" $],
  $g(x) & = f(x) plus.minus c$, [$ (+) $ $ (-) $],     [$ "shift left" c "units" $ $ "shift right" c "units" $],
  $g(x) & = c f(x)$,            [$ c < 0 $ $ c > 0 $], [$ "vertical compress by a factor of" c $ $ "vertical stretch by a factor of" c $],
  $g(x) & = f(c x)$,            [$ c < 0 $ $ c > 0 $], [$ "horizontal stretch by a factor of" c $ $ "horizontal compress by a factor of" $],
  $g(x) & = -f(x)$,             [],                    [$ "reflect about the x-axis" $],
  $g(x) & = f(-x)$,             [],                    [$ "reflect about the y-axis" $]
)]

== Inverse Functions

Let $f$ and $g$ be two function such that
+ $f(g(x)) = x$ for all $x$ in the domain of $g$
+ $g(f(x)) = x$ for all $x$ in the domain of $f$
Under these conditions, the function $g$ is the _inverse function_ of the function $f$ (and vice-versa). The function $g$ can then be denoted as $f^(-1)$. So,

#sideBySide($ f(f^(-1)(x)) = x $, $ f^(-1)(f(x)) = x $)

The domain of $f$ must be equal to the range of $f^(-1)$, and the range of $f$ must be equal to the domain of $f^(-1)$.

= Miscellaneous

== Complex Numbers

Let $a$ and $b$ be real numbers. The number $a + b i$ is a _complex number_ written in _standard form_. The number $a$ is the _real part_ and the number $b i$ is the _imaginary part_ of the complex number.

When $b = 0$, the number $a + b i$ is a real number. When $b eq.not 0$, the number $a + b i$ is an _imaginary number_. A number ofr the form $b i$, where $b eq.not 0$, is a _pure imaginary number_.

$ i^1 = i, i^2 = -1, i^3 = -i, i^4 = 1, i^n = i^(n mod 4) $

== Relationships

=== Exponential

#sideBySide($ a^0           & = 1           \
  a^m dot a^n   & = a^(m + n)   \
  (a^m) / (a^n) & = a^(m - n)   \
  (a b)^n       & = a^n dot b^n $
,
$
  (a / b)^n     & = (a^n) / (b^n) \
  (a^m)^n       & = a^(m \cdot n) \
  a^((1) / (n)) & = root(n, a)    \
  a^m = a^n     & arrow.r m = n $)

=== Logarithmic

#sideBySide($ log_a 1     & = 0             \
  log_a a     & = 1             \
  log x       & = log_(10)x     \
  ln x        & = log_e x       \
  y = log_b x & arrow.r b^y = x \
  a^(log_a b) & = b $
,
$ log a b^n   & = n log a b             \
  log a^n b   & = 1 / n log a b         \
  log_n a b   & = log_n a + log_n b     \
  log_n a / b & = log_n a - log_n b     \
  log_n a     & = log_n b arrow.r a = b $)
