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
        <signal name="Carry0" />
        <signal name="S0" />
        <signal name="S1" />
        <signal name="C_out" />
        <port polarity="Input" name="A0" />
        <port polarity="Input" name="C_in" />
        <port polarity="Input" name="B0" />
        <port polarity="Input" name="A1" />
        <port polarity="Input" name="B1" />
        <port polarity="Output" name="S0" />
        <port polarity="Output" name="S1" />
        <port polarity="Output" name="C_out" />
        <blockdef name="full_adder">
            <timestamp>2026-10-17T0:5:9</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="full_adder" name="XLXI_1">
            <blockpin signalname="A0" name="A" />
            <blockpin signalname="C_in" name="C_in" />
            <blockpin signalname="B0" name="B" />
            <blockpin signalname="S0" name="S" />
            <blockpin signalname="Carry0" name="C_out" />
        </block>
        <block symbolname="full_adder" name="XLXI_2">
            <blockpin signalname="A1" name="A" />
            <blockpin signalname="Carry0" name="C_in" />
            <blockpin signalname="B1" name="B" />
            <blockpin signalname="S1" name="S" />
            <blockpin signalname="C_out" name="C_out" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1568" y="1632" name="XLXI_2" orien="R0">
        </instance>
        <instance x="880" y="1616" name="XLXI_1" orien="R0">
        </instance>
        <branch name="A0">
            <wire x2="880" y1="1456" y2="1456" x1="624" />
        </branch>
        <branch name="C_in">
            <wire x2="880" y1="1520" y2="1520" x1="624" />
        </branch>
        <branch name="B0">
            <wire x2="880" y1="1584" y2="1584" x1="624" />
        </branch>
        <branch name="A1">
            <wire x2="1472" y1="1120" y2="1472" x1="1472" />
            <wire x2="1568" y1="1472" y2="1472" x1="1472" />
        </branch>
        <branch name="B1">
            <wire x2="1568" y1="1600" y2="1600" x1="1488" />
            <wire x2="1488" y1="1600" y2="2016" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="624" y="1456" name="A0" orien="R180" />
        <iomarker fontsize="28" x="624" y="1520" name="C_in" orien="R180" />
        <iomarker fontsize="28" x="624" y="1584" name="B0" orien="R180" />
        <iomarker fontsize="28" x="1472" y="1120" name="A1" orien="R270" />
        <iomarker fontsize="28" x="1488" y="2016" name="B1" orien="R90" />
        <branch name="Carry0">
            <wire x2="1408" y1="1584" y2="1584" x1="1264" />
            <wire x2="1408" y1="1536" y2="1584" x1="1408" />
            <wire x2="1568" y1="1536" y2="1536" x1="1408" />
        </branch>
        <branch name="S0">
            <wire x2="1312" y1="1456" y2="1456" x1="1264" />
            <wire x2="1312" y1="1120" y2="1456" x1="1312" />
        </branch>
        <branch name="S1">
            <wire x2="2288" y1="1472" y2="1472" x1="1952" />
        </branch>
        <branch name="C_out">
            <wire x2="2304" y1="1600" y2="1600" x1="1952" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1120" name="S0" orien="R270" />
        <iomarker fontsize="28" x="2288" y="1472" name="S1" orien="R0" />
        <iomarker fontsize="28" x="2304" y="1600" name="C_out" orien="R0" />
    </sheet>
</drawing>