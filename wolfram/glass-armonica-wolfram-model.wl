(* Glass armonica parametric acoustic model.
   Wolfram Language 14.3.
   All numeric physical inputs are estimates only: pending measurement, not fabrication authority. *)

ClearAll["Global`*"];

glassArmonicaMetadata = <|
  "instrument" -> "glass-armonica",
  "packet" -> "Round 8 Wolfram build-packet model",
  "modelName" -> "Estimate-only rotating glass bowl mode explorer",
  "authority" -> "reference_only",
  "measurementStatus" -> "pending measurement, not fabrication authority"
|>;

(* estimate - pending measurement, not fabrication authority *)
bowlRadiusEstimate = 0.16;
(* estimate - pending measurement, not fabrication authority *)
bowlRadiusMinEstimate = 0.08;
(* estimate - pending measurement, not fabrication authority *)
bowlRadiusMaxEstimate = 0.30;
(* estimate - pending measurement, not fabrication authority *)
bowlRadiusStepEstimate = 0.005;

(* estimate - pending measurement, not fabrication authority *)
wallThicknessEstimate = 0.0025;
(* estimate - pending measurement, not fabrication authority *)
wallThicknessMinEstimate = 0.001;
(* estimate - pending measurement, not fabrication authority *)
wallThicknessMaxEstimate = 0.006;
(* estimate - pending measurement, not fabrication authority *)
wallThicknessStepEstimate = 0.0001;

(* estimate - pending measurement, not fabrication authority *)
youngModulusEstimate = 6.4*10^10;
(* estimate - pending measurement, not fabrication authority *)
youngModulusMinEstimate = 4.5*10^10;
(* estimate - pending measurement, not fabrication authority *)
youngModulusMaxEstimate = 8.0*10^10;
(* estimate - pending measurement, not fabrication authority *)
youngModulusStepEstimate = 0.1*10^10;

(* estimate - pending measurement, not fabrication authority *)
densityEstimate = 2500.;
(* estimate - pending measurement, not fabrication authority *)
densityMinEstimate = 2200.;
(* estimate - pending measurement, not fabrication authority *)
densityMaxEstimate = 3200.;
(* estimate - pending measurement, not fabrication authority *)
densityStepEstimate = 25.;

(* estimate - pending measurement, not fabrication authority *)
poissonRatioEstimate = 0.23;
(* estimate - pending measurement, not fabrication authority *)
poissonRatioMinEstimate = 0.18;
(* estimate - pending measurement, not fabrication authority *)
poissonRatioMaxEstimate = 0.30;
(* estimate - pending measurement, not fabrication authority *)
poissonRatioStepEstimate = 0.005;

(* estimate - pending measurement, not fabrication authority *)
bowlModeCoefficientEstimate = 3.0;
(* estimate - pending measurement, not fabrication authority *)
bowlModeCoefficientMinEstimate = 1.0;
(* estimate - pending measurement, not fabrication authority *)
bowlModeCoefficientMaxEstimate = 10.0;
(* estimate - pending measurement, not fabrication authority *)
bowlModeCoefficientStepEstimate = 0.1;

(* estimate - pending measurement, not fabrication authority *)
rotationRateRpmEstimate = 45.;
(* estimate - pending measurement, not fabrication authority *)
rotationRateRpmMinEstimate = 10.;
(* estimate - pending measurement, not fabrication authority *)
rotationRateRpmMaxEstimate = 120.;
(* estimate - pending measurement, not fabrication authority *)
rotationRateRpmStepEstimate = 1.;

(* estimate - pending measurement, not fabrication authority *)
normalForceEstimate = 0.8;
(* estimate - pending measurement, not fabrication authority *)
normalForceMinEstimate = 0.05;
(* estimate - pending measurement, not fabrication authority *)
normalForceMaxEstimate = 3.0;
(* estimate - pending measurement, not fabrication authority *)
normalForceStepEstimate = 0.05;

(* estimate - pending measurement, not fabrication authority *)
frictionCoefficientEstimate = 0.35;
(* estimate - pending measurement, not fabrication authority *)
frictionCoefficientMinEstimate = 0.05;
(* estimate - pending measurement, not fabrication authority *)
frictionCoefficientMaxEstimate = 0.8;
(* estimate - pending measurement, not fabrication authority *)
frictionCoefficientStepEstimate = 0.01;

rimModeFrequencyEstimate[radius_, thickness_, youngModulus_, density_, poissonRatio_, modeCoefficient_] :=
  (modeCoefficient thickness/(2 Pi radius^2))*
    Sqrt[youngModulus/(12 density (1 - poissonRatio^2))];

rimSurfaceSpeedEstimate[radius_, rotationRateRpm_] :=
  2 Pi radius rotationRateRpm/60;

availableFrictionDriveEstimate[normalForce_, frictionCoefficient_] :=
  normalForce frictionCoefficient;

GlassArmonicaSummary[radius_, thickness_, youngModulus_, density_, poissonRatio_, modeCoefficient_, rotationRateRpm_, normalForce_, frictionCoefficient_] :=
  Module[
    {modeHzEstimate, rimSpeedEstimate, frictionDriveEstimate},
    modeHzEstimate = rimModeFrequencyEstimate[radius, thickness, youngModulus, density, poissonRatio, modeCoefficient];
    rimSpeedEstimate = rimSurfaceSpeedEstimate[radius, rotationRateRpm];
    frictionDriveEstimate = availableFrictionDriveEstimate[normalForce, frictionCoefficient];
    <|
      "modeFrequencyHzEstimate" -> modeHzEstimate,
      "rimSurfaceSpeedMetersPerSecondEstimate" -> rimSpeedEstimate,
      "availableFrictionDriveNewtonsEstimate" -> frictionDriveEstimate,
      "authority" -> "estimate only - pending measurement, not fabrication authority"
    |>
  ];

glassArmonicaModelManipulate =
  Manipulate[
    Module[
      {summary = GlassArmonicaSummary[
          radius, thickness, youngModulus, density, poissonRatio,
          modeCoefficient, rotationRateRpm, normalForce, frictionCoefficient]},
      Grid[
        {
          {"instrument", glassArmonicaMetadata["instrument"]},
          {"authority", summary["authority"]},
          {"rim mode frequency estimate (Hz)", NumberForm[summary["modeFrequencyHzEstimate"], {8, 2}]},
          {"rim surface speed estimate (m/s)", NumberForm[summary["rimSurfaceSpeedMetersPerSecondEstimate"], {8, 3}]},
          {"available friction drive estimate (N)", NumberForm[summary["availableFrictionDriveNewtonsEstimate"], {8, 3}]}
        },
        Frame -> All,
        Alignment -> Left
      ]
    ],
    {{radius, bowlRadiusEstimate, "bowl radius estimate (m)"}, bowlRadiusMinEstimate, bowlRadiusMaxEstimate, bowlRadiusStepEstimate},
    {{thickness, wallThicknessEstimate, "wall thickness estimate (m)"}, wallThicknessMinEstimate, wallThicknessMaxEstimate, wallThicknessStepEstimate},
    {{youngModulus, youngModulusEstimate, "glass Young's modulus estimate (Pa)"}, youngModulusMinEstimate, youngModulusMaxEstimate, youngModulusStepEstimate},
    {{density, densityEstimate, "glass density estimate (kg/m^3)"}, densityMinEstimate, densityMaxEstimate, densityStepEstimate},
    {{poissonRatio, poissonRatioEstimate, "Poisson ratio estimate"}, poissonRatioMinEstimate, poissonRatioMaxEstimate, poissonRatioStepEstimate},
    {{modeCoefficient, bowlModeCoefficientEstimate, "dimensionless bowl mode coefficient estimate"}, bowlModeCoefficientMinEstimate, bowlModeCoefficientMaxEstimate, bowlModeCoefficientStepEstimate},
    {{rotationRateRpm, rotationRateRpmEstimate, "rotation rate estimate (rpm)"}, rotationRateRpmMinEstimate, rotationRateRpmMaxEstimate, rotationRateRpmStepEstimate},
    {{normalForce, normalForceEstimate, "finger normal force estimate (N)"}, normalForceMinEstimate, normalForceMaxEstimate, normalForceStepEstimate},
    {{frictionCoefficient, frictionCoefficientEstimate, "wet friction coefficient estimate"}, frictionCoefficientMinEstimate, frictionCoefficientMaxEstimate, frictionCoefficientStepEstimate}
  ];

glassArmonicaModelManipulate
