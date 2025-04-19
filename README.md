# RBDmodel-io
Repository containing the Rigid Body Dynamic MATLAB model of the spine, referenced in Dukkipati & Driscoll 2025

S. T. Dukkipati and M. Driscoll, "Evaluation of a Fast-Solving Rigid Body Spine Model Inclusive of Intra-Abdominal Pressure," in IEEE Transactions on Biomedical Engineering, doi: 10.1109/TBME.2025.3561692. 


![Schematic of the RBD Input-Output model](schematic.png)


## Model inputs:

1. To change model inputs, go to Modeling tab -> Design -> Model Workspace
2. In the model workspace, all the tunable parameters are listed
3. The parameters ending with "_FIXED" can not be changed as they are directly referenced in the simulink blocks inside the main_model
4. All the other paramenters can be changed


| Parameter          | Description                                              |
|--------------------|----------------------------------------------------------|
| IAP_Pa             | Intra-abdominal pressure in Pascals, used in IAP Model 1 |
| Left_RA/Right_RA   | Left and right rectus abdominus muscle force in Newtons  |
| Left_MF/Right_MF   | Left and right rectus multifidus force in Newtons        |
| Left_IO/Right_IO   | Left and right internal oblique muscle force in Newtons  |
| Left_EO/Right_EO   | Left and right external oblique force in Newtons         |
| Moment_FE          | Flexion-Extension Moment at L1 in Nm                     |
| Moment_LB          | Lateral bending Moment at L1 in Nm                       |
| Moment_AR          | Axial rotation Moment at L1 in Nm                        |


## Model outputs

1. All possible model outputs are made available in the Model_Outputs subsystem
2. To view any output, simupy open the corresponding scope. You can also export   	the data outside MATLAB using "To Workspace" blocks

## More info

Contact the authors for an editable copy of the model.
