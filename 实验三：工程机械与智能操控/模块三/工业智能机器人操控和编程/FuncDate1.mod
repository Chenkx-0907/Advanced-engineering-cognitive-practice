MODULE FuncDate1
    FUNC robtarget pPattern1(num nCount1)    !??func,????????????,??robtarget?????????ppattern1
        VAR robtarget pTarget1;
   !first floor
        TEST nCount1
               CASE 1:
            pTarget1.trans.x:=pPlace1base.trans.x;   !??pplace1base?x????ptarget1?x
            pTarget1.trans.y:=pPlace1base.trans.y;    !??pplace1base?y????ptarget1?y
            pTarget1.trans.z:=pPlace1base.trans.z;    !??pplace1base?z????ptarget1?z
            pTarget1.rot:=pPlace1base.rot;           !??pplace1base???(???)????ptarget1???.rot
            pTarget1.robconf:=pPlace1base.robconf;    !??pplace1base?????????ptarget1??????
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});    !??????????

        CASE 2:
            pTarget1.trans.x:=pPlace1base.trans.x+nBoxL;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});

        CASE 3:
            pTarget1.trans.x:=pPlace1base.trans.x+2*nBoxL;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 4:
            pTarget1.trans.x:=pPlace1base.trans.x-nBoxW;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 5:
            pTarget1.trans.x:=pPlace1base.trans.x-2*nBoxW;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 6:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y+nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 7:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y+2*nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 8:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y-nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 9:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y-2*nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        
        CASE 10:
            pTarget1.trans.x:=pPlace1base.trans.x;   !??pplace1base?x????ptarget1?x
            pTarget1.trans.y:=pPlace1base.trans.y;    !??pplace1base?y????ptarget1?y
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;    !??pplace1base?z????ptarget1?z
            pTarget1.rot:=pPlace1base.rot;           !??pplace1base???(???)????ptarget1???.rot
            pTarget1.robconf:=pPlace1base.robconf;    !??pplace1base?????????ptarget1??????
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});    !??????????


        CASE 11:
            pTarget1.trans.x:=pPlace1base.trans.x+nBoxL;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});

        CASE 12:
            pTarget1.trans.x:=pPlace1base.trans.x+2*nBoxL;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 13:
            pTarget1.trans.x:=pPlace1base.trans.x-nBoxW;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 14:
            pTarget1.trans.x:=pPlace1base.trans.x-2*nBoxW;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 15:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y+nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 16:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y+2*nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 17:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y-nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 18:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y-2*nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
            
            
        CASE 19:
            pTarget1.trans.x:=pPlace1base.trans.x;   !??pplace1base?x????ptarget1?x
            pTarget1.trans.y:=pPlace1base.trans.y;    !??pplace1base?y????ptarget1?y
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;    !??pplace1base?z????ptarget1?z
            pTarget1.rot:=pPlace1base.rot;           !??pplace1base???(???)????ptarget1???.rot
            pTarget1.robconf:=pPlace1base.robconf;    !??pplace1base?????????ptarget1??????
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});    !??????????


        CASE 20:
            pTarget1.trans.x:=pPlace1base.trans.x+nBoxL;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});

        CASE 21:
            pTarget1.trans.x:=pPlace1base.trans.x+2*nBoxL;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 22:
            pTarget1.trans.x:=pPlace1base.trans.x-nBoxW;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 23:
            pTarget1.trans.x:=pPlace1base.trans.x-2*nBoxW;
            pTarget1.trans.y:=pPlace1base.trans.y;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 24:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y+nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 25:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y+2*nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 26:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y-nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});
        CASE 27:
            pTarget1.trans.x:=pPlace1base.trans.x;
            pTarget1.trans.y:=pPlace1base.trans.y-2*nBoxW;
            pTarget1.trans.z:=pPlace1base.trans.z+2*nBoxH;
            pTarget1.rot:=pPlace1base.rot;
            pTarget1.robconf:=pPlace1base.robconf;
            pTarget1:=Offs(pTarget1,Compensation1{nCount1,1},Compensation1{nCount1,2},Compensation1{nCount1,3});

        DEFAULT:
            TPErase;
            TPWrite "The data 'nCount' is error,please check it !";
            stop;
        ENDTEST
        Return pTarget1;
    ENDFUNC
ENDMODULE