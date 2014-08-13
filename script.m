(* ::Package:: *)

ivals={1,2,3,5,10,20};
networksM3=Table[Import[StringJoin["graphs/model-v3/p10000/","network-10000-",IntegerString[ivals[[i]]],"-1000.graphml"]],{i,1,2,1}];
Export["test.txt",Table[HistogramList[VertexDegree[networksM3[[i]]],Automatic,"PDF"],{i,1,2,1}]];
