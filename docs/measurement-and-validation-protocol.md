<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Measurement And Validation Protocol

Status: L3-candidate protocol. Authority remains `pending_measurement`.

This protocol defines what must be measured or tested before any glass-armonica
estimate can become fabrication authority. It does not provide measured
dimensions, tuning values, rotation speeds, drive ratios, tolerances, or CAD
release data.

## Promotion Rule

Every candidate dimension or setup value must have:

- a source artifact ID in `visual-output-register.csv`;
- a measurement method and tool record;
- a date, operator, and setup description;
- raw observations stored in a future validation log;
- review status showing whether the value is still `pending_measurement` or can
  be considered for fabrication authority.

## Bowl Measurements

Promote bowl geometry only after measuring each real bowl candidate:

- outer profile at rim, shoulder, and mounting region;
- inner profile where the bowl approaches neighboring bowls;
- wall profile and rim condition;
- mass and balance observations;
- visible defects, chips, strain marks, scratches, or sharp edges;
- free-bowl response before mounting;
- mounted response after the bowl is supported on the spindle interface.

The free and mounted response records must remain separate. A pitch observation
cannot become tuning authority unless the bowl ID, wetting condition, support
state, rotation state, and measurement tool are recorded together.

## Nesting And Clearance Measurements

Promote nesting clearance only after checking:

- static clearance between each neighboring bowl pair;
- clearance while the spindle is turned slowly by hand;
- clearance under treadle-driven rotation;
- clearance while a player touches the rim with wetted fingers;
- clearance after guards, water tray, and service access features are present.

No photo, rendering, or concept sketch may be used as clearance authority.

## Spindle, Bearing, And Mount Measurements

Promote spindle and support dimensions only after recording:

- spindle straightness and runout under the intended bowl stack;
- bearing alignment and quietness;
- water-protection behavior near the bearings;
- non-marring bowl mount contact behavior;
- axial registration without point loading the glass;
- service removal and reinstallation repeatability.

Any clamp, cone, sleeve, gasket, or spacer must be reviewed for glass stress and
slip before it can become fabrication authority.

## Drive And Rotation Tests

Promote drive geometry only after testing:

- treadle comfort and repeatability;
- flywheel smoothing behavior;
- belt or cord slip behavior;
- noise transmitted into the frame and bowl stack;
- guarding coverage for belts, pulleys, flywheel, and pinch points;
- behavior when wet hands, drips, or cleanup materials are nearby.

Rotation-related values remain `pending_measurement` until the exact drive
layout and bowl stack are documented.

## Wetting And Playing Tests

Promote playing-interface features only after logging:

- water source, tray, wipe area, and drip path behavior;
- onset reliability with wetted fingers;
- rim access without touching neighboring bowls;
- cleanup path after a session;
- bearing, belt, frame, and finish exposure to water;
- ergonomic reach and hand clearance.

Wetting response is not fabrication authority for bowl geometry unless the same
test also records the bowl ID, support state, and clearance evidence.

## Safety Validation

Before any value becomes fabrication authority, review:

- rotating glass exposure;
- bowl fracture containment;
- pinch points at spindle, flywheel, treadle, belt, and guards;
- water near moving parts;
- sharp rim or chip handling;
- emergency stop or disengagement behavior;
- service procedure for removing a damaged bowl.

Safety review is a blocking gate for every rotating, glass-supporting, or
player-contact dimension.
