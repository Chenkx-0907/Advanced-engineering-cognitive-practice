MODULE SocketNew
    VAR socketdev socket1;
    VAR string received_string;
    VAR string SocketStr;
    VAR num nArray{5};
    var num nStrlength;
    VAR num nAngle;
    VAR num nfind;
    PERS string sCCD;
    VAR bool OK;
    PERS num JiShu:=0;
    VAR bool Color:=FALSE;
    CONST num nOffset:=83;
    
    
    PROC InitialVision()
        var num found:=0;
        var num length:=0;
        VAR num X;
        VAR num Y;
        VAR socketstatus status;
        SocketClose socket1;
        SocketCreate socket1;
        SocketConnect socket1,"192.168.1.21",10001;
        SocketReceive socket1\Str:=received_string;
        Length:=strlen(received_string);
        found:=strmatch(received_string,1,"User:");
        IF found=length+1 THEN
            TPErase;
            TPWrite "Vision Login Error (User Prompt)";
            Stop;
        ENDIF

        ! Send the Username
        SocketSend socket1\Str:="admin\0d\0a";
        SocketReceive socket1\Str:=received_string;
        IF received_string<>"Password: " THEN
            TPErase;
            TPWrite "Vision Login Error (Password Prompt)";
            Stop;
        ENDIF

        ! Send Password
        SocketSend socket1\Str:="\0d\0a";
        SocketReceive socket1\Str:=received_string;
        IF received_string<>"User Logged In\0d\0a" THEN
            TPErase;
            TPWrite "Vision Login Error (Final Login)";
            Stop;
        ENDIF

        X:=0;
        Y:=0;
        nAngle:=0;
        status:=SocketGetStatus(socket1);
        IF status<>SOCKET_CONNECTED THEN
            TPErase;
            TPWrite "Vision Sensor Not Connected";
            Return ;
        ELSE
            TPWrite "Vision sensor connected.";
        ENDIF
    ENDPROC

    FUNC bool GetVisionResult()
        VAR num X;
        VAR num Y;
        WaitTime 0.5;
        ! Get the value in cell C7
        SocketSend socket1\Str:="gvf006\0d\0a";
        WaitTime 0.2;

        ! Read the data
        SocketReceive socket1\Str:=received_string;

        SocketStr:=received_string;
        !TPWrite received_string;
        !CheckStatus10;
        ! Parse the data string 
        !Convert String Data To Numerical Data
        nStrlength:=StrLen(SocketStr);
        IF  nStrlength<12 THEN
            TPWrite "No found";
            RETURN FALSE;
        ENDIF
        nfind:=0;
        FOR i FROM 1 TO 3 DO
            nfind:=StrFind(SocketStr,nFind+1,",");
            nArray{i}:=nFind;
        ENDFOR

        sCCD:=StrPart(SocketStr,1,nArray{1}-1);
        IF sCCD="1\0D\0A0" OR nStrlength<12 THEN
            TPWrite "No found";
            RETURN FALSE;
        ENDIF
        ok:=StrToVal(StrPart(SocketStr,nArray{1}+1,nArray{2}-nArray{1}-1),X);
        ok:=StrToVal(StrPart(SocketStr,nArray{2}+1,nArray{3}-nArray{2}-1),Y);
        ok:=StrToVal(StrPart(SocketStr,nArray{3}+1,nStrlength-nArray{3}),nAngle);

        TPWrite "X="+NumToStr(X,0)+",Y="+NumToStr(Y,0)+",Color="+NumToStr(nAngle,0);

        IF X>500 OR X<-500 THEN
            TPWrite "Found error";
            RETURN FALSE;
        ELSE
            IF nAngle=1 THEN
                Reset doRedOrYellow;
                Color:= FALSE;
            ELSE
                Set doRedOrYellow;
                Color:= TRUE;
            ENDIF
            pPick.trans.y:=pPick.trans.y-(X-nOffset);
            RETURN TRUE;
        ENDIF
    ENDFUNC

    FUNC bool CheckStatus()
        IF SocketGetStatus(socket1)=SOCKET_CONNECTED THEN
            RETURN TRUE;
        ELSE
            RETURN FALSE;
        ENDIF
    ENDFUNC


    PROC CheckStatus10()
        SocketReceive socket1\Str:=received_string;
        !Stop;
        IF received_string<>"1\0D\0A\0D\0A" THEN
            TPErase;
            TPWrite "Vision Error!";
            Stop;
        ENDIF
    ENDPROC






    FUNC bool bCurrentPos(
    robtarget ComparePos,
	num radius,
    INOUT tooldata TCP)

        ! Function to compare current manipulator position with a given position
        VAR num Counter:=0;
        VAR robtarget ActualPos;

        ActualPos:=CRobT(\Tool:=TCP\WObj:=wobj0);
        IF ActualPos.trans.x>ComparePos.trans.x-radius AND ActualPos.trans.x<ComparePos.trans.x+radius Counter:=Counter+1;
        IF ActualPos.trans.y>ComparePos.trans.y-radius AND ActualPos.trans.y<ComparePos.trans.y+radius Counter:=Counter+1;
        IF ActualPos.trans.z>ComparePos.trans.z-radius AND ActualPos.trans.z<ComparePos.trans.z+radius Counter:=Counter+1;
        IF ActualPos.rot.q1>ComparePos.rot.q1-0.1 AND ActualPos.rot.q1<ComparePos.rot.q1+0.1 Counter:=Counter+1;
        IF ActualPos.rot.q2>ComparePos.rot.q2-0.1 AND ActualPos.rot.q2<ComparePos.rot.q2+0.1 Counter:=Counter+1;
        IF ActualPos.rot.q3>ComparePos.rot.q3-0.1 AND ActualPos.rot.q3<ComparePos.rot.q3+0.1 Counter:=Counter+1;
        IF ActualPos.rot.q4>ComparePos.rot.q4-0.1 AND ActualPos.rot.q4<ComparePos.rot.q4+0.1 Counter:=Counter+1;
        RETURN Counter=7;
    ENDFUNC

ENDMODULE