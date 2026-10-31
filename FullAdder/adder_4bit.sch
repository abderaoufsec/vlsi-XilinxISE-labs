<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="A0" />
        <signal name="C_in" />
        <signal name="B0" />
        <signal name="A1" />
        <signal name="B1" />
        <signal name="S0" />
        <signal name="S1" />
        <signal name="XLXN_8" />
        <signal name="A2" />
        <signal name="B2" />
        <signal name="A3" />
        <signal name="B3" />
        <signal name="S2" />
        <signal name="S3" />
        <signal name="C_out" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="C_in" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="B1" />
        <port polarity="Output" name="S0" />
        <port polarity="Output" name="S1" />
        <port polarity="Input" name="A2" />
        <port polarity="Input" name="B2" />
        <port polarity="Input" name="A3" />
        <port polarity="Input" name="B3" />
        <port polarity="Output" name="S2" />
        <port polarity="Output" name="S3" />
        <port polarity="Output" name="C_out" />
        <blockdef name="adder_2bit">
            <timestamp>2026-10-31T10:22:57</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="adder_2bit" name="XLXI_1">
            <blockpin signalname="A0" name="A0" />
            <blockpin signalname="C_in" name="C_in" />
            <blockpin signalname="B0" name="B0" />
            <blockpin signalname="A1" name="A1" />
            <blockpin signalname="B1" name="B1" />
            <blockpin signalname="S0" name="S0" />
            <blockpin signalname="S1" name="S1" />
            <blockpin signalname="XLXN_8" name="C_out" />
        </block>
        <block symbolname="adder_2bit" name="XLXI_2">
            <blockpin signalname="A2" name="A0" />
            <blockpin signalname="XLXN_8" name="C_in" />
            <blockpin signalname="B2" name="B0" />
            <blockpin signalname="A3" name="A1" />
            <blockpin signalname="B3" name="B1" />
            <blockpin signalname="S2" name="S0" />
            <blockpin signalname="S3" name="S1" />
            <blockpin signalname="C_out" name="C_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1184" y="592" name="XLXI_1" orien="R0">
        </instance>
        <branch name="A0">
            <wire x2="1184" y1="304" y2="304" x1="800" />
        </branch>
        <branch name="C_in">
            <wire x2="1184" y1="368" y2="368" x1="800" />
        </branch>
        <branch name="B0">
            <wire x2="1184" y1="432" y2="432" x1="800" />
        </branch>
        <branch name="A1">
            <wire x2="1184" y1="496" y2="496" x1="784" />
        </branch>
        <branch name="B1">
            <wire x2="1184" y1="560" y2="560" x1="800" />
        </branch>
        <branch name="S0">
            <wire x2="1888" y1="304" y2="304" x1="1568" />
        </branch>
        <branch name="S1">
            <wire x2="1888" y1="432" y2="432" x1="1568" />
        </branch>
        <instance x="1232" y="928" name="XLXI_2" orien="R90">
        </instance>
        <branch name="XLXN_8">
            <wire x2="1456" y1="736" y2="928" x1="1456" />
            <wire x2="1584" y1="736" y2="736" x1="1456" />
            <wire x2="1584" y1="560" y2="560" x1="1568" />
            <wire x2="1584" y1="560" y2="736" x1="1584" />
        </branch>
        <branch name="A2">
            <wire x2="1872" y1="896" y2="896" x1="1520" />
            <wire x2="1520" y1="896" y2="928" x1="1520" />
        </branch>
        <branch name="B2">
            <wire x2="1392" y1="688" y2="688" x1="960" />
            <wire x2="1392" y1="688" y2="928" x1="1392" />
        </branch>
        <branch name="A3">
            <wire x2="1328" y1="752" y2="752" x1="976" />
            <wire x2="1328" y1="752" y2="928" x1="1328" />
        </branch>
        <branch name="B3">
            <wire x2="1264" y1="864" y2="864" x1="960" />
            <wire x2="1264" y1="864" y2="928" x1="1264" />
        </branch>
        <branch name="S2">
            <wire x2="1520" y1="1312" y2="1584" x1="1520" />
        </branch>
        <branch name="S3">
            <wire x2="1392" y1="1312" y2="1584" x1="1392" />
        </branch>
        <branch name="C_out">
            <wire x2="1264" y1="1312" y2="1584" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="800" y="304" name="A0" orien="R180" />
        <iomarker fontsize="28" x="800" y="368" name="C_in" orien="R180" />
        <iomarker fontsize="28" x="800" y="432" name="B0" orien="R180" />
        <iomarker fontsize="28" x="784" y="496" name="A1" orien="R180" />
        <iomarker fontsize="28" x="800" y="560" name="B1" orien="R180" />
        <iomarker fontsize="28" x="1888" y="304" name="S0" orien="R0" />
        <iomarker fontsize="28" x="1888" y="432" name="S1" orien="R0" />
        <iomarker fontsize="28" x="960" y="688" name="B2" orien="R180" />
        <iomarker fontsize="28" x="976" y="752" name="A3" orien="R180" />
        <iomarker fontsize="28" x="960" y="864" name="B3" orien="R180" />
        <iomarker fontsize="28" x="1872" y="896" name="A2" orien="R0" />
        <iomarker fontsize="28" x="1520" y="1584" name="S2" orien="R90" />
        <iomarker fontsize="28" x="1392" y="1584" name="S3" orien="R90" />
        <iomarker fontsize="28" x="1264" y="1584" name="C_out" orien="R90" />
    </sheet>
</drawing>