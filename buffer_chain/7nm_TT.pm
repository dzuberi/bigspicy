** Translated using xdm 2.7.0 on Sep_12_2025_22_07_08_PM
** from /tmp/_MEIII1Asm/hspice.xml
** to /tmp/_MEIII1Asm/xyce.xml

* BSD 3-Clause License
*
* Copyright 2020 Lawrence T. Clark, Vinay Vashishtha, or Arizona State
* University
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
*
* 1. Redistributions of source code must retain the above copyright notice,
* this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
* notice, this list of conditions and the following disclaimer in the
* documentation and/or other materials provided with the distribution.
*
* 3. Neither the name of the copyright holder nor the names of its
* contributors may be used to endorse or promote products derived from this
* software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
* ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
* LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
* CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
* SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
* INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
* CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
* ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
* POSSIBILITY OF SUCH DAMAGE.
** ASAP TT models v1.0 8/3/16

** Hspice modelcard

.MODEL nmos_lvt NMOS 
+ AGIDL=1e-012 AGISL=1e-012 AIGC=0.014 AIGD=0.0115 AIGS=0.0115 AT=0.001 
+ BG0SUB=1.17 BGIDL=10000000 BGISL=10000000 BIGC=0.005 BIGD=0.00332 BIGS=0.00332 
+ BULKMOD=1 CAPMOD=0 CDSC=0.01 CDSCD=0.01 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.6e-010 CGEOMOD=0 CGSL=0 CGSO=1.6e-010 CIGC=0.25 CIGD=0.35 CIGS=0.35 
+ CIT=0 CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.24 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=1e-009 DLCIGS=1e-009 DROUT=1 DSUB=0.35 
+ DVT0=0.05 DVT1=0.475 DVTSHIFT=0 EASUB=4.05 EGIDL=0.35 EGISL=0.35 EOT=1e-009 
+ EOTACC=1e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.068 
+ ETAMOB=2 ETAQM=0.54 EU=1.2 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=2 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=5e-005 LCDSCDR=5e-005 LINT=-2e-009 LPE0=0 LRDSW=0.2 LVSAT=0 MEXP=4 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.05 PCLMG=0 PDIBL1=0 PDIBL2=0.002 PHIG=4.307 PHIN=0.05 POXEDGE=1.1 
+ PQM=0.66 PRT=0 PTWG=30 PTWGT=0.004 PVAG=0 QM0=0.001 QMFACTOR=2.5 RDSMOD=0 
+ RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 RSHS=0 RSWMIN=0 
+ RTH0=0.225 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 TFIN=6.5e-009 
+ TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.80e-009 TOXP=2.1e-009 U0=0.0283 UA=0.55 
+ UA1=0.001032 UCS=1 UCSTE=-0.004775 UD=0 UD1=0 UP=0 UTE=-0.7 UTL=0 VSAT=70000 
+ WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL nmos_rvt NMOS 
+ AGIDL=1e-012 AGISL=1e-012 AIGC=0.014 AIGD=0.0115 AIGS=0.0115 AT=0.001 
+ BG0SUB=1.17 BGIDL=10000000 BGISL=10000000 BIGC=0.005 BIGD=0.00332 BIGS=0.00332 
+ BULKMOD=1 CAPMOD=0 CDSC=0.01 CDSCD=0.01 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.6e-010 CGEOMOD=0 CGSL=0 CGSO=1.6e-010 CIGC=0.25 CIGD=0.35 CIGS=0.35 
+ CIT=0 CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.28 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=1e-009 DLCIGS=1e-009 DROUT=1 DSUB=0.35 
+ DVT0=0.05 DVT1=0.48 DVTSHIFT=0 EASUB=4.05 EGIDL=0.35 EGISL=0.35 EOT=1e-009 
+ EOTACC=1e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.062 
+ ETAMOB=2 ETAQM=0.54 EU=1.2 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=2 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=5e-005 LCDSCDR=5e-005 LINT=-2e-009 LPE0=0 LRDSW=0.2 LVSAT=0 MEXP=4 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.05 PCLMG=0 PDIBL1=0 PDIBL2=0.002 PHIG=4.372 PHIN=0.05 POXEDGE=1.1 
+ PQM=0.66 PRT=0 PTWG=30 PTWGT=0.004 PVAG=0 QM0=0.001 QMFACTOR=2.5 RDSMOD=0 
+ RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 RSHS=0 RSWMIN=0 
+ RTH0=0.225 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 TFIN=6.5e-009 
+ TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.80e-009 TOXP=2.1e-009 U0=0.0252 UA=0.55 
+ UA1=0.001032 UCS=1 UCSTE=-0.004775 UD=0 UD1=0 UP=0 UTE=-0.7 UTL=0 VSAT=70000 
+ WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL nmos_slvt NMOS 
+ AGIDL=1e-012 AGISL=1e-012 AIGC=0.014 AIGD=0.0115 AIGS=0.0115 AT=0.001 
+ BG0SUB=1.17 BGIDL=10000000 BGISL=10000000 BIGC=0.005 BIGD=0.00332 BIGS=0.00332 
+ BULKMOD=1 CAPMOD=0 CDSC=0.01 CDSCD=0.01 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.6e-010 CGEOMOD=0 CGSL=0 CGSO=1.6e-010 CIGC=0.25 CIGD=0.35 CIGS=0.35 
+ CIT=0 CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.2 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=1e-009 DLCIGS=1e-009 DROUT=1 DSUB=0.35 
+ DVT0=0.05 DVT1=0.47 DVTSHIFT=0 EASUB=4.05 EGIDL=0.35 EGISL=0.35 EOT=1e-009 
+ EOTACC=1e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.07 
+ ETAMOB=2 ETAQM=0.54 EU=1.2 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=2 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=5e-005 LCDSCDR=5e-005 LINT=-2e-009 LPE0=0 LRDSW=0.2 LVSAT=0 MEXP=4 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.05 PCLMG=0 PDIBL1=0 PDIBL2=0.002 PHIG=4.2466 PHIN=0.05 
+ POXEDGE=1.1 PQM=0.66 PRT=0 PTWG=30 PTWGT=0.004 PVAG=0 QM0=0.001 QMFACTOR=2.5 
+ RDSMOD=0 RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 RSHS=0 
+ RSWMIN=0 RTH0=0.225 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 TFIN=6.5e-009 
+ TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.80e-009 TOXP=2.1e-009 U0=0.0303 UA=0.55 
+ UA1=0.001032 UCS=1 UCSTE=-0.004775 UD=0 UD1=0 UP=0 UTE=-0.7 UTL=0 VSAT=70000 
+ WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL nmos_sram NMOS 
+ AGIDL=6e-013 AGISL=1e-012 AIGC=0.014 AIGD=0.0115 AIGS=0.0115 AT=0.001 
+ BG0SUB=1.17 BGIDL=10000000 BGISL=10000000 BIGC=0.005 BIGD=0.00332 BIGS=0.00332 
+ BULKMOD=1 CAPMOD=0 CDSC=0.01 CDSCD=0.01 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.45e-010 CGEOMOD=0 CGSL=0 CGSO=1.45e-010 CIGC=0.25 CIGD=0.35 CIGS=0.35 
+ CIT=0 CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.28 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=1e-009 DLCIGS=1e-009 DROUT=1 DSUB=0.35 
+ DVT0=0.05 DVT1=0.48 DVTSHIFT=0 EASUB=4.05 EGIDL=0.35 EGISL=0.35 EOT=1e-009 
+ EOTACC=1e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.062 
+ ETAMOB=2 ETAQM=0.54 EU=1.2 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=2 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=5e-005 LCDSCDR=5e-005 LINT=-3e-009 LPE0=0 LRDSW=0.2 LVSAT=0 MEXP=4 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.05 PCLMG=0 PDIBL1=0 PDIBL2=0.002 PHIG=4.45 PHIN=0.05 POXEDGE=1.1 
+ PQM=0.66 PRT=0 PTWG=30 PTWGT=0.004 PVAG=0 QM0=0.001 QMFACTOR=2.5 RDSMOD=0 
+ RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 RSHS=0 RSWMIN=0 
+ RTH0=0.225 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 TFIN=6.5e-009 
+ TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.80e-009 TOXP=2.1e-009 U0=0.025 UA=0.55 
+ UA1=0.001032 UCS=1 UCSTE=-0.004775 UD=0 UD1=0 UP=0 UTE=-0.7 UTL=0 VSAT=70000 
+ WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL pmos_lvt PMOS 
+ AGIDL=2e-012 AGISL=2e-012 AIGC=0.007 AIGD=0.006 AIGS=0.006 AT=0.001 BG0SUB=1.17 
+ BGIDL=1.5e+008 BGISL=1.5e+008 BIGC=0.0015 BIGD=0.001944 BIGS=0.001944 BULKMOD=1 
+ CAPMOD=0 CDSC=0.003469 CDSCD=0.001486 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.6e-010 CGEOMOD=0 CGSL=0 CGSO=1.6e-010 CIGC=1 CIGD=1 CIGS=1 CIT=0 
+ CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.2 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=5e-009 DLCIGS=5e-009 DROUT=4.97 DSUB=0.24 
+ DVT0=0.05 DVT1=0.38 DVTSHIFT=0 EASUB=4.05 EGIDL=1.142 EGISL=1.142 EOT=1e-009 
+ EOTACC=3e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.093 
+ ETAMOB=4 ETAQM=0.54 EU=0.05 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=1.592 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=0 LCDSCDR=0 LINT=-2.5e-009 LPE0=0 LRDSW=1.3 LVSAT=1441 MEXP=2.491 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.01 PCLMG=1 PDIBL1=800 PDIBL2=0.005704 PHIG=4.8681 PHIN=0.05 
+ POXEDGE=1.152 PQM=0.66 PRT=0 PTWG=25 PTWGT=0.004 PVAG=200 QM0=2.183e-012 
+ QMFACTOR=0 RDSMOD=0 RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 
+ RSHS=0 RSWMIN=0 RTH0=0.15 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 
+ TFIN=6.5e-009 TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.85e-009 TOXP=2.1e-009 
+ U0=0.0227 UA=1.133 UA1=0.001032 UCS=0.2672 UCSTE=-0.004775 UD=0.0105 UD1=0 UP=0 
+ UTE=-1.2 UTL=0 VSAT=60000 WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL pmos_rvt PMOS 
+ AGIDL=2e-012 AGISL=2e-012 AIGC=0.007 AIGD=0.006 AIGS=0.006 AT=0.001 BG0SUB=1.17 
+ BGIDL=1.5e+008 BGISL=1.5e+008 BIGC=0.0015 BIGD=0.001944 BIGS=0.001944 BULKMOD=1 
+ CAPMOD=0 CDSC=0.003469 CDSCD=0.001486 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.6e-010 CGEOMOD=0 CGSL=0 CGSO=1.6e-010 CIGC=1 CIGD=1 CIGS=1 CIT=0 
+ CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.22 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=5e-009 DLCIGS=5e-009 DROUT=4.97 DSUB=0.24 
+ DVT0=0.05 DVT1=0.4 DVTSHIFT=0 EASUB=4.05 EGIDL=1.142 EGISL=1.142 EOT=1e-009 
+ EOTACC=3e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.09 
+ ETAMOB=4 ETAQM=0.54 EU=0.05 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=1.592 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=0 LCDSCDR=0 LINT=-2.5e-009 LPE0=0 LRDSW=1.3 LVSAT=1441 MEXP=2.491 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.01 PCLMG=1 PDIBL1=800 PDIBL2=0.005704 PHIG=4.8108 PHIN=0.05 
+ POXEDGE=1.152 PQM=0.66 PRT=0 PTWG=25 PTWGT=0.004 PVAG=200 QM0=2.183e-012 
+ QMFACTOR=0 RDSMOD=0 RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 
+ RSHS=0 RSWMIN=0 RTH0=0.15 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 
+ TFIN=6.5e-009 TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.9e-009 TOXP=2.1e-009 
+ U0=0.0209 UA=1.133 UA1=0.001032 UCS=0.2672 UCSTE=-0.004775 UD=0.0105 UD1=0 UP=0 
+ UTE=-1.2 UTL=0 VSAT=60000 WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL pmos_slvt PMOS 
+ AGIDL=2e-012 AGISL=2e-012 AIGC=0.007 AIGD=0.006 AIGS=0.006 AT=0.001 BG0SUB=1.17 
+ BGIDL=1.5e+008 BGISL=1.5e+008 BIGC=0.0015 BIGD=0.001944 BIGS=0.001944 BULKMOD=1 
+ CAPMOD=0 CDSC=0.003469 CDSCD=0.001486 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.6e-010 CGEOMOD=0 CGSL=0 CGSO=1.6e-010 CIGC=1 CIGD=1 CIGS=1 CIT=0 
+ CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.17 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=5e-009 DLCIGS=5e-009 DROUT=4.97 DSUB=0.24 
+ DVT0=0.05 DVT1=0.36 DVTSHIFT=0 EASUB=4.05 EGIDL=1.142 EGISL=1.142 EOT=1e-009 
+ EOTACC=3e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.094 
+ ETAMOB=4 ETAQM=0.54 EU=0.05 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=1.592 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=0 LCDSCDR=0 LINT=-2.5e-009 LPE0=0 LRDSW=1.3 LVSAT=1441 MEXP=2.491 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.01 PCLMG=1 PDIBL1=800 PDIBL2=0.005704 PHIG=4.9278 PHIN=0.05 
+ POXEDGE=1.152 PQM=0.66 PRT=0 PTWG=25 PTWGT=0.004 PVAG=200 QM0=2.183e-012 
+ QMFACTOR=0 RDSMOD=0 RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 
+ RSHS=0 RSWMIN=0 RTH0=0.15 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 
+ TFIN=6.5e-009 TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.8e-009 TOXP=2.1e-009 
+ U0=0.0237 UA=1.133 UA1=0.001032 UCS=0.2672 UCSTE=-0.004775 UD=0.0105 UD1=0 UP=0 
+ UTE=-1.2 UTL=0 VSAT=60000 WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
**
** Hspice modelcard

.MODEL pmos_sram PMOS 
+ AGIDL=6e-012 AGISL=2e-012 AIGC=0.007 AIGD=0.006 AIGS=0.006 AT=0.001 BG0SUB=1.17 
+ BGIDL=76500000 BGISL=1.5e+008 BIGC=0.0015 BIGD=0.001944 BIGS=0.001944 BULKMOD=1 
+ CAPMOD=0 CDSC=0.002 CDSCD=0.0008 CFD=0 CFS=0 CGBL=0 CGBO=0 CGDL=0 
+ CGDO=1.45e-010 CGEOMOD=0 CGSL=0 CGSO=1.45e-010 CIGC=1 CIGD=1 CIGS=1 CIT=0 
+ CKAPPAD=0.6 CKAPPAS=0.6 COREMOD=0 CTH0=1.243e-006 DELTAVSAT=0.22 DELTAW=0 
+ DELTAWCV=0 DLBIN=0 DLC=0 DLCIGD=5e-009 DLCIGS=5e-009 DROUT=4.97 DSUB=0.24 
+ DVT0=0.05 DVT1=0.4 DVTSHIFT=0 EASUB=4.05 EGIDL=1.142 EGISL=1.142 EOT=1e-009 
+ EOTACC=3e-010 EOTBOX=1.4e-007 EPSROX=3.9 EPSRSP=3.9 EPSRSUB=11.9 ETA0=0.09 
+ ETAMOB=4 ETAQM=0.54 EU=0.05 FPITCH=2.7e-008 GEOMOD=1 GIDLMOD=1 HFIN=3.2e-008 
+ IGBMOD=0 IGCMOD=1 IGT=2.5 IIMOD=0 K1RSCE=0 KSATIV=1.592 KT1=0 KT1L=0 L=2.1e-008 
+ LCDSCD=0 LCDSCDR=0 LINT=-4.5e-009 LPE0=0 LRDSW=1.3 LVSAT=1441 MEXP=2.491 
+ NBODY=1e+022 NC0SUB=2.86e+025 NGATE=0 NI0SUB=1.1e+016 NQSMOD=0 NSD=2e+026 
+ NSEG=5 PCLM=0.01 PCLMG=1 PDIBL1=800 PDIBL2=0.005704 PHIG=4.78 PHIN=0.05 
+ POXEDGE=1.152 PQM=0.66 PRT=0 PTWG=25 PTWGT=0.004 PVAG=200 QM0=2.183e-012 
+ QMFACTOR=0 RDSMOD=0 RDSW=200 RDSWMIN=0 RDWMIN=0 RGATEMOD=0 RGEOMOD=0 RSHD=0 
+ RSHS=0 RSWMIN=0 RTH0=0.15 SDTERM=0 SHMOD=0 TBGASUB=0.000473 TBGBSUB=636 
+ TFIN=6.5e-009 TGIDL=-0.007 TMEXP=0 TNOM=25 TOXG=1.95e-009 TOXP=2.1e-009 
+ U0=0.0209 UA=1.133 UA1=0.001032 UCS=0.2672 UCSTE=-0.004775 UD=0.0105 UD1=0 UP=0 
+ UTE=-1.2 UTL=0 VSAT=60000 WR=1 WTH0=2.6e-007 XL=1e-009 
+ LEVEL=108
************************************************************
*                         general                          *
************************************************************
************************************************************
*                            dc                            *
************************************************************
************************************************************




*                         leakage                          *
************************************************************
************************************************************





*                            rf                            *
************************************************************
************************************************************
*                         junction                         *
************************************************************
************************************************************
*                       capacitance                        *
************************************************************
************************************************************



*                       temperature                        *
************************************************************
************************************************************




*                          noise                           *
************************************************************
