MODULE pp311
    CONST jointtarget p1:=[[21.35,11.06,-12.87,-0.23,94.97,4.10],[0,0,0,0,0,0]];
    PERS robtarget p2:=[[508.79,-35.45,230.86],[0.0263356,0.149163,-0.988425,0.00859008],[-1,-1,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !??1????
    PERS robtarget p21:=[[160.21,-450.03,189.98],[0.0263387,0.149167,-0.988423,0.00864882],[-2,-1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !??1????
    !    PERS robtarget g2:=[[0,0,0],[1,0,0,0],[0,0,1,0],[0,0,0,0,0,0]];
    !    PERS robtarget g22:=[[0,0,0],[1,0,0,0],[0,0,1,0],[0,0,0,0,0,0]];
    !    PERS robtarget g3:=[[0,0,0],[1,0,0,0],[0,0,1,0],[0,0,0,0,0,0]];
    !    PERS robtarget g33:=[[0,0,0],[1,0,0,0],[0,0,1,0],[0,0,0,0,0,0]];
    var num cnt:=1;

    CONST num length:=40;
    !????40mm
    CONST num width:=40;
    !????  40mm
    CONST num height:=40;
    !????17mm




    PROC teacher()
        ! initialization
        Reset dovacoff;
        Reset dovacon;
        ! qishidian 
        MoveAbsJ p1,v300,fine,tool0;
        
        MoveJ Offs(p2,0,0,60),v300,z10,tool0;
        !for clye
        FOR i FROM 1 TO 20 DO
            Movel p2,v300,fine,tool0;
            !??????p2 ?????
            Reset dovacoff;
            set dovacon;
            !?
            MoveJ Offs(p2,0,0,60),v300,z10,tool0;
            MoveJ Offs(p21,0,0,60),v300,z10,tool0;
            !??????p21 ??60mm?
            Movel p21,v300,fine,tool0;
            Reset dovacon;
            Set dovacoff;
            MoveJ Offs(p21,0,0,60),v300,z10,tool0;
            cnt:=cnt+1;

            IF cnt<=5 THEN
                !??? 4?
                p2:=Offs(p2,0,40,0);
                !p2????,???p2??y????40mm
                p21:=Offs(p21,0,41,0);
                !p21????,???p21??y????41mm
                MoveJ Offs(p2,0,0,60),v300,z10,tool0;

            ELSEIF cnt>5 THEN
                !??? 4?
                p2:=Offs(p2,40,-160,0);
                !p2????,???p2??x????40mm
                p21:=Offs(p21,41,-160,0);
                !p21????,???p21??x????40mm
                MoveJ Offs(p2,0,0,60),v300,z10,tool0;
                cnt:=1;

            ELSE
            ENDIF
        ENDFOR
    ENDPROC
ENDMODULE