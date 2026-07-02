// Glass Armonica — spindle + graded bowl array bounding ENVELOPE ONLY
// SPDX-License-Identifier: CC-BY-4.0
//
// Source of truth: no design table (xlsx) or measured bowl set exists for
// this instrument yet (see ../design.md, ../decision-record.md). Every
// dimension below is an `assumption` bounding-envelope placeholder for
// bench-planning layout, NOT a released bowl, spindle, or drive spec.
//
// Authority: pending_measurement. NOT fabrication authority until reviewed
// against a measured reference or design table (see
// ../visual-output-register.csv, ../cad/mcp-session-log.md).
//
// EXPLICITLY OUT OF SCOPE (per design.md subsystem gates — hand-refined,
// tuning-sensitive regions this envelope does not model):
//   - bowl wall profile, rim geometry, wall thickness gradient, and pitch
//   - non-marring bowl-mount interface (gasket/cone/collar) geometry
//   - drive ratio, treadle linkage geometry, and bearing placement
// This file models only the spindle bounding cylinder and a graded array of
// bowl bounding envelopes (nested large/low to small/high, per design.md
// Mechanism) so a builder can block out spindle length and bowl-stack
// envelope before any of the above is measured.

// ---- Parameters (all `assumption`, bounding-envelope only) ----
bowl_count            = 10;    // assumption: bench-planning array count, design.md GA-CUT-BOWL-SET (pending_measurement)
bowl_max_dia_in       = 9;     // assumption: largest bowl bounding diameter, design.md bowl stack subsystem (pending_measurement)
bowl_min_dia_in       = 3;     // assumption: smallest bowl bounding diameter, design.md bowl stack subsystem (pending_measurement)
bowl_envelope_h_in    = 2.5;   // assumption: bowl bounding height (each), pending_measurement
bowl_spacing_in       = 1.25;  // assumption: axial spacing between bowl envelopes, design.md nesting_clearance_status (pending_measurement)
spindle_dia_in        = 0.75;  // assumption: spindle bounding diameter, design.md GA-CUT-SPINDLE (pending_measurement)
spindle_margin_in     = 4;     // assumption: spindle overhang beyond bowl array for bearing supports (pending_measurement)

in = 25.4; // mm per inch
spindle_len_in = bowl_count * bowl_spacing_in + spindle_margin_in * 2;

// ---- Modules ----

// Spindle bounding cylinder (horizontal shaft placeholder — NOT a spindle spec)
module spindle_envelope() {
    rotate([0, 90, 0])
        cylinder(h = spindle_len_in * in, d = spindle_dia_in * in, center = false, $fn = 24);
}

// One graded bowl bounding envelope (frustum placeholder — NOT a bowl/rim spec)
// dia: bounding diameter for this bowl index, interpolated large->small along the array
module bowl_envelope(dia_in) {
    rotate([0, 90, 0])
        translate([0, 0, -bowl_envelope_h_in * in / 2])
            cylinder(h = bowl_envelope_h_in * in, d1 = dia_in * in, d2 = dia_in * 0.6 * in, center = false, $fn = 48);
}

// Graded bowl array along the spindle (large/low to small/high, per design.md Mechanism)
module bowl_array() {
    for (i = [0 : bowl_count - 1]) {
        t = i / (bowl_count - 1);
        dia = bowl_max_dia_in - t * (bowl_max_dia_in - bowl_min_dia_in);
        x = (spindle_margin_in + i * bowl_spacing_in) * in;
        translate([x, 0, 0])
            bowl_envelope(dia);
    }
}

// ---- Top-level assembly ----
module glass_armonica_envelope() {
    color("Silver") spindle_envelope();
    color("LightCyan") bowl_array();
}

glass_armonica_envelope();
