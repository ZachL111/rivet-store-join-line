# rivet-store-join-line

`rivet-store-join-line` keeps a focused Swift implementation around databases. The project goal is to develop a Swift command-oriented project for join scenarios with append-only fixtures, checkpoint recovery checks, and single-node deterministic mode.

## Project Rationale

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how index fit and constraint risk should influence a review result.

## Rivet Store Join Line Review Notes

`stale` and `recovery` are the cases worth reading first. They show the optimistic and cautious ends of the fixture.

## Feature Set

- `fixtures/domain_review.csv` adds cases for index fit and join width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/rivet-store-join-walkthrough.md` walks through the case spread.
- The Swift code includes a review path for `index fit` and `plan drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Architecture

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Swift code keeps the review rule close to the tests.

## Usage

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Test Command

The same command runs the local verification path. The highest-scoring domain case is `stale` at 245, which lands in `ship`. The most cautious case is `recovery` at 149, which lands in `ship`.

## Next Improvements

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
