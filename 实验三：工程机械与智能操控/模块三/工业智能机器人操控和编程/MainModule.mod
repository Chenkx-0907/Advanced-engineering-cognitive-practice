MODULE MainModule
    PERS num nstacktype:=1;  !??    ??????
    PERS robtarget pPick:=[[215.43,168.51,-65.31],[0.0185165,0.712849,0.700937,-0.0138113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];   !???,??????,??????1? ???1???,??pick??
    PERS num Compensation1{64,3}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    PERS num Compensation2{64,3}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    PERS num Compensation3{64,3}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    PERS num Compensation4{64,3}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
           !compensation1-4{64,3}  ????64*3
    PERS num Compensation5{64,3}:=[[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
    CONST robtarget pPlacesafe:=[[-49.07,-535.20,191.05],[0.0279043,-0.701729,-0.711676,-0.01777],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];   !???,????
    CONST robtarget pPlace1base:=[[-47.58,-522.09,-100.63],[0.0279068,-0.701743,-0.711663,-0.0177336],[0,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];    !????1???????
    CONST robtarget pPlace2base:=[[31.18,175.96,-142.16],[0.00776123,0.723256,0.690534,0.00159224],[-2,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];    !????1???????
    CONST robtarget pPlace3base:=[[31.18,175.96,-142.16],[0.00776123,0.723256,0.690534,0.00159224],[-2,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];
    CONST robtarget pPlace4base:=[[31.18,175.96,-142.16],[0.00776123,0.723256,0.690534,0.00159224],[-2,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];
    CONST robtarget pPlace5base:=[[31.18,175.96,-142.16],[0.00776123,0.723256,0.690534,0.00159224],[-2,-1,2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];
    PERS robtarget pplace1:=[[-47.58,-604.09,-66.63],[0.0279068,-0.701743,-0.711663,-0.0177336],[0,-1,-1,0],[0,0,0,0,0,0]];      !???,?????????funcDate????
    PERS robtarget pplace2:=[[228.61,232.61,14.02],[0.735574,0.00914634,-0.00164212,0.677381],[0,0,1,0],[0,0,0,0,0,0]];
    PERS robtarget pplace3:=[[186.61,190.61,14.02],[0.735574,0.00914634,-0.00164212,0.677381],[0,0,1,0],[0,0,0,0,0,0]];
    PERS robtarget pplace4:=[[207.61,211.61,14.02],[0.735574,0.00914634,-0.00164212,0.677381],[0,0,1,0],[0,0,0,0,0,0]];
    PERS robtarget pplace5:=[[270.61,232.61,14.02],[0.735574,0.00914634,-0.00164212,0.677381],[0,0,1,0],[0,0,0,0,0,0]];

    VAR num nCount1:=0;   !?????,1???????
    VAR num nCount2:=0;
    VAR num nCount3:=0;
    VAR num nCount4:=0;
    VAR num nCount5:=0;

    PERS bool bBOXFull1:=TRUE;    !1?????false,??true
    PERS bool bBOXFull2:=FALSE;
    PERS bool bBOXFull3:=FALSE;
    PERS bool bBOXFull4:=FALSE;
    PERS bool bBOXFull5:=FALSE;     !5?????false,??true
    
     VAR clock Timer1;  !???? ???0.001s
    PERS num nCycleTime:=256.156;   !????,???

    PERS num nBoxL:=41;   !?????40mm
    PERS num nBoxW:=41;   !???? 40mm
    PERS num nBoxH:=17;    !???17mm
    PERS num nplaceH:=15;   !????????15mm
    PERS bool bGetPosition:=FALSE; !??
    CONST robtarget pReady:=[[190.56,14.61,381.96],[0.010043,0.0113287,0.999838,-0.00970707],[0,-1,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];    !???---home?
    CONST robtarget pPickup:=[[215.43,168.51,-65.31],[0.0185165,0.712849,0.700937,-0.0138113],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];    !??????????,?????????????????????
    CONST robtarget pwait:=[[187.28,-83.14,290.96],[0.0100513,0.0113047,0.999839,-0.00969142],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,0]];  !?????---???
    PERS tooldata tool1:=[TRUE,[[120,0,55],[1,0,0,0]],[0.5,[120,0,55],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata wobjplate:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[7.71478,-310.485,264.494],[0.00127407,-0.00258674,-0.0224727,0.999743]]];  !???????

    PROC main()
        MoveJ pReady,v150,fine,tool1;  
        Initialsystem;     
        TPWrite "Please select a stack type.";     
        WHILE TRUE DO
            TEST GI_Platetype
            CASE 1:
                rpick1;
            CASE 2:
                rpick2;
            CASE 3:
                rpick3;
            CASE 4:
                rpick4;
            CASE 5:
                rpick5;
            ENDTEST


        ENDWHILE

    ENDPROC

    !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
    PROC Initialsystem()
        VelSet 100,500;    !????,?????100%,????500mm/s,
        !??????????50%,??????????
        AccSet 100,90;    !?????, ??????100%,???????????90
        ConfL\Off;    !??????????,?????????---??????
        ConfJ\Off;    !??????????,?????????---??????
        IF NOT bCurrentPos(pReady,50,tool1) THEN     !?????????tcp1????pready???50mm?
            TPWrite "Please move to home manual";
            WaitUntil OpMode()<>OP_AUTO;
            MoveJ pReady,v1000,fine,tool1;
            ExitCycle;
        ENDIF
        SetGO GO_platenum,0;     !?????,???PLC  ????
        bBOXFull1:=false;
        nCount1:=1;
        bBOXFull2:=false;
        nCount2:=1;
        bBOXFull3:=false;
        nCount3:=1;
        bBOXFull4:=false;
        nCount4:=1;
        bBOXFull5:=false;
        nCount1:=1;
        ClkReset Timer1;  !??????
        ClkStart Timer1;  !??????





        Reset doVacON;    !???????on
        PulseDO\PLength:=0.5,doVacOFF;     !?????????

        !Initial conveyor
        Reset doReady;   
        Reset doTrigCnv;
        PulseDO\PLength:=0.2,c1RemAllPObj;  
        PulseDO\PLength:=0.2, c1DropWObj;

        Reset doTrigCam;
    ENDPROC

















    PROC rpick1()
        IF bBOXFull1=FALSE THEN       !??1???????false
            MoveL pwait,v300,fine,tool1\WObj:=wobj0;        !??????pwait?
            ConfJ\Off;
            ConfL\Off;

            pPick:=pPickup;    !??????????,?????????????????????
            WaitTime 0.2;
            ActUnit CNV1;  !?????????
            WaitWObj wobjCNV1;    !??????????
            MoveL Offs(pPick,0,0,80),v300,z10,tool1\WObj:=wobjCNV1;    !???????????80mm?
            Vacon;    !???????
            MoveL pPick,v500,fine,tool1\WObj:=wobjCNV1;    !???????????,???????
            MoveL Offs(pPick,0,0,150),v1000,z50,tool1\WObj:=wobjCNV1;    !???????????150mm?,???
            MoveL pPlacesafe,v300,fine,tool1\WObj:=wobjplate;        !???????????pplacesafe,???
            pPlace1:=pPattern1(nCount1);   !ppattern1???pplace1,????????????????FuncDate1
            MoveL Offs(pPlace1,0,0,3*nPlaceH),v200,z50,tool1\WObj:=wobjplate;   !???????????(15,15,15)?,???
            !MoveL Offs(pPlace1,15,15,0), v100, z50, tool1\WObj:=wobjplate;       !???????????(15,15,0),??????????,???
            MoveL pPlace1,v50,fine,tool1\WObj:=wobjplate;         !??????pplace1?  ?????
            Vacoff;        !?????????????
            Waittime 0.3;
            MoveL Offs(pPlace1,0,0,nPlaceH),v300,z50,tool1\WObj:=wobjplate;    !?????????????15mm?---???
            IF ncount1=27 THEN
                SetGO GO_platenum,nCount1;    !?????,???PLC,????  ncount1?????
                TPWrite "ma duo wan cheng.";   !??"????"
                bBOXFull1:=TRUE;
                ClkStop Timer1;  !????,??????
                nCycleTime:=ClkRead(Timer1);
                TPWrite "Cycle Time:"\Num:=nCycleTime;  !????????
            ELSE
                 SetGO GO_platenum,nCount1;
                nCount1:=nCount1+1;
            ENDIF
            MoveL pPlacesafe,v300,z50,tool1\WObj:=wobjplate;
            MoveL pwait,v300,fine,tool1;
            DropWObj wobjCNV1;      !???????
        ENDIF
    ENDPROC       !????????????


    PROC rpick2()
        IF bBOXFull2=FALSE THEN
            MoveL pwait,v500,fine,tool1\WObj:=wobj0;    !??????pwait?
            ConfJ\Off;    !????????
            ConfL\Off;

            pPick:=pPickup;
            WaitTime 0.2;
            ActUnit CNV1;
            WaitWObj wobjCNV1;
            MoveL Offs(pPick,0,0,80),v500,z10,tool1\WObj:=wobjCNV1;
            Vacon;
            MoveL pPick,v500,fine,tool1\WObj:=wobjCNV1;
            MoveL Offs(pPick,0,0,150),v100,z50,tool1\WObj:=wobjCNV1;
            MoveL pPlacesafe,v1000,z50,tool1\WObj:=wobjplate;
            pPlace2:=pPattern1(nCount2);
             MoveL Offs(pPlace2,15,15,nPlaceH),v100,z50,tool1\WObj:=wobjplate;
            MoveL Offs(pPlace2,15,15,0), v50,z50, tool1\WObj:=wobjplate;
            MoveL pPlace2,v100,fine,tool1\WObj:=wobjplate;
            Vacoff;
            Waittime 0.3;
            MoveL Offs(pPlace2,0,0,nPlaceH),v100,z50,tool1\WObj:=wobjplate;
            IF ncount2=36 THEN
               SetGO GO_platenum,nCount2;
                TPWrite "ma duo wan cheng.";
                bBOXFull2:=TRUE;
                ClkStop Timer1;
                nCycleTime:=ClkRead(Timer1);
                TPWrite "Cycle Time:"\Num:=nCycleTime;
            ELSE
                SetGO GO_platenum,nCount2;
                nCount2:=nCount2+1;
            ENDIF
            MoveL pPlacesafe,v100,z50,tool1\WObj:=wobjplate;
            MoveL pwait,v100,fine,tool1;
            DropWObj wobjCNV1;
        ENDIF
    ENDPROC



    PROC rpick3()
        IF bBOXFull3 = FALSE THEN
            MoveL pwait,v100,fine,tool1\WObj:=wobj0;
            ConfJ\Off;
            ConfL\Off;

            pPick:=pPickup;
            WaitTime 0.2;
            ActUnit CNV1;
            WaitWObj wobjCNV1;
            MoveL Offs(pPick,0,0,80),v500,z10,tool1\WObj:=wobjCNV1;
            Vacon;
            MoveL pPick,v500,fine,tool1\WObj:=wobjCNV1;
            MoveL Offs(pPick,0,0,150),v100,z50,tool1\WObj:=wobjCNV1;
            MoveL pPlacesafe,v1000,fine,tool1\WObj:=wobjplate;
            pPlace3:=pPattern1(nCount3);
            MoveL Offs(pPlace3,15,15,nPlaceH),v100,z50,tool1\WObj:=wobjplate;
            MoveL Offs(pPlace3,15,15,0), v500,z50, tool1\WObj:=wobjplate;
            MoveL pPlace3, v50, fine, tool1\WObj:=wobjplate;
            Vacoff;
            Waittime 0.3;
            MoveL Offs(pPlace3,0,0,nPlaceH),v1000,z50,tool1\WObj:=wobjplate;
            IF ncount3=16 THEN
               SetGO GO_platenum,nCount3;
                TPWrite "ma duo wan cheng.";
                bBOXFull3:=TRUE;
                ClkStop Timer1;
                nCycleTime:=ClkRead(Timer1);
                TPWrite "Cycle Time:"\Num:=nCycleTime;
            ELSE
               SetGO GO_platenum,nCount3;
                nCount3:=nCount3+1;
            ENDIF
            MoveL pPlacesafe,v1000,z50,tool1\WObj:=wobjplate;
            MoveL pwait,v1000,fine,tool1;
            DropWObj wobjCNV1;
        ENDIF
    ENDPROC

    PROC rpick4()
        IF bBOXFull4=FALSE THEN
            MoveL pwait,v1000,fine,tool1\WObj:=wobj0;
            ConfJ\Off;
            ConfL\Off;

            pPick:=pPickup;
            WaitTime 0.2;
            ActUnit CNV1;
            WaitWObj wobjCNV1;
            MoveL Offs(pPick,0,0,80),v1000,z10,tool1\WObj:=wobjCNV1;
            Vacon;
            MoveL pPick,v500,fine,tool1\WObj:=wobjCNV1;
            MoveL Offs(pPick,0,0,150),v1000,z50,tool1\WObj:=wobjCNV1;
            MoveL pPlacesafe,v1000,fine,tool1\WObj:=wobjplate;
            pPlace4:=pPattern1(nCount4);
            MoveL Offs(pPlace4,15,15,nPlaceH),v1000,z50,tool1\WObj:=wobjplate;
            MoveL Offs(pPlace4,15,15,0), v500, z0, tool1\WObj:=wobjplate;
            MoveL pPlace4,v1000,fine,tool1\WObj:=wobjplate;
            Vacoff;
            Waittime 0.3;
            MoveL Offs(pPlace4,0,0,nPlaceH),v1000,z50,tool1\WObj:=wobjplate;
            IF ncount4=30 THEN
              SetGO GO_platenum,nCount4;
                TPWrite "ma duo wan cheng.";
                bBOXFull4:=TRUE;
                ClkStop Timer1;
                nCycleTime:=ClkRead(Timer1);
                TPWrite "Cycle Time:"\Num:=nCycleTime;
            ELSE
                SetGO GO_platenum,nCount4;
                nCount4:=nCount4+1;
            ENDIF
            MoveL pPlacesafe,v1000,z50,tool1\WObj:=wobjplate;
            MoveL pwait,v1000,fine,tool1;
            DropWObj wobjCNV1;
        ENDIF
    ENDPROC

    PROC rpick5()
        IF bBOXFull5=FALSE THEN
            MoveL pwait,v1000,fine,tool1\WObj:=wobj0;
            ConfJ\Off;
            ConfL\Off;

            pPick:=pPickup;
            WaitTime 0.2;
            ActUnit CNV1;
            WaitWObj wobjCNV1;
            MoveL Offs(pPick,0,0,80),v1000,z10,tool1\WObj:=wobjCNV1;
            Vacon;
            MoveL pPick,v500,fine,tool1\WObj:=wobjCNV1;
            MoveL Offs(pPick,0,0,150),v1000,z50,tool1\WObj:=wobjCNV1;
            MoveL pPlacesafe,v1000,fine,tool1\WObj:=wobjplate;
            pPlace5:=pPattern1(nCount5);
             MoveL Offs(pPlace5,15,15,nPlaceH),v1000,z50,tool1\WObj:=wobjplate;
            MoveL Offs(pPlace5,15,15,0), v500, z50, tool1\WObj:=wobjplate;
            MoveL pPlace5,v500,fine,tool1\WObj:=wobjplate;
            Vacoff;
            Waittime 0.3;
            MoveL Offs(pPlace1,0,0,nPlaceH),v1000,z50,tool1\WObj:=wobjplate;
            IF nCount5 = 48 THEN
                SetGO GO_platenum,nCount5;
                TPWrite "ma duo wan cheng.";
                bBOXFull5:=TRUE;
                ClkStop Timer1;
                nCycleTime:=ClkRead(Timer1);
                TPWrite "Cycle Time:"\Num:=nCycleTime;
            ELSE
                SetGO GO_platenum,nCount5;
                nCount5:=nCount5+1;
            ENDIF
            MoveL pPlacesafe,v1000,z50,tool1\WObj:=wobjplate;
            MoveL pwait,v1000,fine,tool1;
            DropWObj wobjCNV1;
        ENDIF
    ENDPROC


    PROC GoHome()
        MoveAbsJ [[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tool0;
    ENDPROC


    PROC RTechpos()   !????????
        ActUnit CNV1;     !?????????
        WaitWObj wobjCNV1;     !????????
        MoveL pPickup,v500,fine,tool1\WObj:=wobjCNV1;    !???????
        DropWObj wobjCNV1;    !???????????,????
        MoveL pReady,v1000,fine,tool1;   !?????????
        MoveL pwait,v1000,fine,tool1;    !???????????
        MoveL pPlace1base,v1000,fine,tool1\WObj:=wobjplate;     !   ????????1????---????????
        MoveL pPlace2base,v1000,fine,tool1\WObj:=wobjplate;    !
        MoveL pPlace3base, v1000, fine, tool1\WObj:=wobjplate;   !
        MoveL pPlace4base,v1000,fine,tool1\WObj:=wobjplate;   !
        MoveL pPlace5base,v1000,fine,tool1\WObj:=wobjplate;    !
        MoveL pPlacesafe, v1000, fine, tool1\WObj:=wobjplate;    ! ?????????---???????

    ENDPROC

    PROC Vacon()   !???????
        Reset doVacOff;
        set doVacON;
    ENDPROC

    PROC Vacoff()    !???????
        Reset doVacOn;
        set doVacOff;
    ENDPROC




ENDMODULE