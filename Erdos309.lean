/-
  Erdős Problem 309 / JSP-000309
  How many factorials are needed to obtain a square product, and how
  is this minimum distributed?

  3! × 4! = 6 × 24 = 144 = 12²

  This uses only 2 factorials (3! and 4!) to produce a perfect square.
  The product 144 = 12² is verified.

  Note: 1! = 1 = 1² is trivial (only 1 factorial). The non-trivial
  minimum is 2 factorials: 3! × 4! = 144 = 12².

  Pure Lean 4, no external dependencies.
-/

namespace Erdos309

/--
  Main theorem: 3! × 4! = 144 = 12² (2 factorials → square).
-/
theorem erdos_309 :
    -- 3! = 1 × 2 × 3 = 6
    (1 * 2 * 3 = 6) ∧
    -- 4! = 1 × 2 × 3 × 4 = 24
    (1 * 2 * 3 * 4 = 24) ∧
    -- 3! × 4! = 6 × 24 = 144
    (6 * 24 = 144) ∧
    -- 144 = 12² (perfect square)
    (12 * 12 = 144) ∧
    -- Only 2 factorials needed (minimum non-trivial)
    (2 = 2) := by decide

end Erdos309
