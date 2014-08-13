Integerise[x_] := If[Round[x] == x, ToString[Round@x], ToString@x];
networks = Table[Import[StringJoin["randomModel-networks/", "network-", IntegerString[i], "-", Integerise[j], ".graphml"]], {i, 0, 100, 10}, {j, 0.1, 1, 0.1}];
clusteringData = Map[GlobalClusteringCoefficient, Flatten[networks, 1]];
aplData = Map[MeanGraphDistance, Flatten[networks, 1]];
axes = Table[{i, j}, {i, 0, 100, 10}, {j, 0.1, 1, 0.1}];
clusteringPlotNetwork = Table[Join[Flatten[axes, 1][[c]], {clusteringData[[c]]}], {c, 1, Length[clusteringData], 1}];
g3d=ListPlot3D[clusteringPlotNetwork, ColorFunction -> "SouthwestColors"];
Export["g3d.png",g3d];
