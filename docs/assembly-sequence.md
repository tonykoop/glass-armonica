<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Assembly Sequence

Status: L3-candidate sequence. Authority remains `concept_only` and
`pending_measurement`.

This sequence describes build order and hold points. It does not provide
dimensions, jig geometry, drive ratios, tuning values, or fabrication
instructions.

## Phase 1: Evidence Setup

- Assign bowl IDs before handling or measurement.
- Photograph and inspect each bowl for defects.
- Prepare a measurement log for geometry, mass, free response, mounted response,
  wetting behavior, and safety notes.
- Prepare non-marring supports for inspection only; do not treat them as final
  mounts.

Hold point: no bowl proceeds to mounting tests until defect and handling notes
are recorded.

## Phase 2: Free-Bowl Survey

- Measure candidate bowl geometry with a documented method.
- Record mass and balance observations.
- Record free response without spindle mounting.
- Mark every observation as `pending_measurement` until reviewed.

Hold point: no spacing, spindle, or mount design can use a bowl until the bowl
survey record exists.

## Phase 3: Spindle And Mount Mockup

- Build or select a non-destructive mounting test fixture only after bowl survey
  needs are known.
- Verify the interface does not chip, pinch, or point-load glass.
- Check axial registration and removal/reinstallation behavior.
- Record mounted response separately from free response.

Hold point: no mount becomes fabrication authority without glass-stress and slip
review.

## Phase 4: Drive And Frame Mockup

- Create a quiet-drive mockup for treadle, flywheel, belt or cord, bearing
  support, and frame isolation.
- Test by hand before treadle-driven operation.
- Observe noise, vibration, slip, bearing exposure, and service access.

Hold point: drive geometry remains pending until safety, water, and noise
reviews are complete.

## Phase 5: Wetting And Player Interface

- Add a temporary water tray, wipe area, and drip path.
- Test hand approach to each rim without neighboring-bowl contact.
- Record tone onset, cleanup, and water migration.
- Confirm guards and trays do not block play or service.

Hold point: wetting features cannot become fabrication authority without water
exposure and cleanup evidence.

## Phase 6: Guarding And Service Review

- Add guard mockups around rotating glass, drive elements, and pinch points.
- Verify bowl removal, bearing access, belt service, and cleanup paths.
- Review damaged-bowl removal and emergency stop or disengagement behavior.

Hold point: no public build guidance until the safety review passes and the
authority register cites the reviewed artifacts.
