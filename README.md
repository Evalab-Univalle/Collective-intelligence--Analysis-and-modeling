Collective intelligence: Analysis and modeling
==============================================

This model presents a way to study the evolution of collective intelligence through the analisys of structural properties in a network formed by the relation between people in a wiki. Two people relate each other if they edit the same document in the wiki.

## Usage

1. The first thing you need to do is configure an experiment, you can do it by two ways:
    - Open the model with netlogo and configure it by the GUI.
    - By a XML file.

    Instructions <a href="http://ccl.northwestern.edu/netlogo/docs/behaviorspace.html" target="_blank">here</a>, sections *Managing experiment setups* and *Setting up experiments in XML* respectively.

2. Then run the experiments. For large numbers we recomend run the model from the command line.

    ```./netlogo-headless.sh --model <path> --experiment <name>```
    
    or
    
    ```./netlogo-headless.sh --model <path> --setup-file <path> --experiment <name>```

3. Finally run the Mathematica file to get the measures and resulting graphs.

## Files

```
.
├── modelo.nlogo                  The model
├── otherModels                   Models used for comparations
│   ├── randomNetwork.nb
│   └── randomNetwork.nlogo
├── README.md                     This file
└── training                      Files with differents test
    ├── testConection.nb          -Testing the connection with netlogo
    └── testGraphsAndData.nb      -Testing some graphs
```
