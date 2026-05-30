<!-- SPDX-License-Identifier: CC-BY-4.0 -->
# Subsystem Interface Spec

Status: symbolic interface spec. Authority remains `pending_measurement`.

This document names subsystem handoffs. It does not assign dimensions,
tolerances, rotation speeds, tuning values, materials, or fabrication geometry.

## Bowl Set To Spindle Interface

Inputs needed:

- measured bowl profile and mass record;
- rim and mounting-region condition;
- free-response and mounted-response records;
- glass stress and non-marring contact review.

Outputs required before fabrication authority:

- reviewed mount concept;
- axial registration method;
- slip inspection method;
- removal and replacement procedure.

## Spindle To Bearing Interface

Inputs needed:

- bowl stack load case after real bowls are selected;
- runout inspection method;
- water protection requirement;
- service access requirement.

Outputs required before fabrication authority:

- reviewed bearing support concept;
- alignment inspection method;
- quietness test record;
- bearing protection strategy.

## Drive To Spindle Interface

Inputs needed:

- treadle and flywheel concept;
- belt or cord path concept;
- spindle side-load limits from reviewed support design;
- guard envelope requirements.

Outputs required before fabrication authority:

- smooth-drive test record;
- slip and noise observations;
- disengagement or service method;
- guard review.

## Wetting System To Frame Interface

Inputs needed:

- rim access requirements;
- water tray and wipe-area concept;
- bearing and belt protection needs;
- cleanup and storage plan.

Outputs required before fabrication authority:

- tested drip path;
- water exposure review;
- player access observations;
- finish and cleanup compatibility notes.

## Guarding To Player Interface

Inputs needed:

- bowl spacing and rim access observations;
- drive pinch-point map;
- damaged-bowl handling plan;
- service-removal needs.

Outputs required before fabrication authority:

- guard coverage review;
- hand clearance observations;
- emergency stop or disengagement concept;
- service sequence that does not require unsafe glass handling.

## Register Requirement

Every interface output must cite an artifact row in `visual-output-register.csv`
before it can be used by CAD, DXF, drawings, or shop instructions.
