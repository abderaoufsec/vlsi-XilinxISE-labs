<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="A" />
        <signal name="C_in" />
        <signal name="B" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_11" />
        <signal name="S" />
        <signal name="C_out" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="C_in" />
        <port polarity="Input" name="B" />
        <port polarity="Output" name="S" />
        <port polarity="Output" name="C_out" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="xor3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="208" y1="-128" y2="-128" x1="256" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <arc ex="64" ey="-176" sx="64" sy="-80" r="56" cx="32" cy="-128" />
            <arc ex="128" ey="-176" sx="208" sy="-128" r="88" cx="132" cy="-88" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="64" y1="-80" y2="-80" x1="128" />
            <line x2="64" y1="-176" y2="-176" x1="128" />
            <arc ex="208" ey="-128" sx="128" sy="-80" r="88" cx="132" cy="-168" />
        </blockdef>
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_2">
            <blockpin signalname="C_in" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="C_in" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="xor3" name="XLXI_4">
            <blockpin signalname="C_in" name="I0" />
            <blockpin signalname="B" name="I1" />
            <blockpin signalname="A" name="I2" />
            <blockpin signalname="S" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_5">
            <blockpin signalname="XLXN_11" name="I0" />
            <blockpin signalname="XLXN_9" name="I1" />
            <blockpin signalname="XLXN_8" name="I2" />
            <blockpin signalname="C_out" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="784" y="992" name="XLXI_1" orien="R0" />
        <instance x="784" y="1312" name="XLXI_2" orien="R0" />
        <instance x="816" y="368" name="XLXI_4" orien="R0" />
        <instance x="2048" y="1360" name="XLXI_5" orien="R0" />
        <instance x="768" y="1632" name="XLXI_3" orien="R0" />
        <branch name="A">
            <wire x2="512" y1="176" y2="176" x1="256" />
            <wire x2="816" y1="176" y2="176" x1="512" />
            <wire x2="512" y1="176" y2="864" x1="512" />
            <wire x2="512" y1="864" y2="1184" x1="512" />
            <wire x2="784" y1="1184" y2="1184" x1="512" />
            <wire x2="784" y1="864" y2="864" x1="512" />
        </branch>
        <branch name="C_in">
            <wire x2="304" y1="304" y2="304" x1="256" />
            <wire x2="432" y1="304" y2="304" x1="304" />
            <wire x2="816" y1="304" y2="304" x1="432" />
            <wire x2="432" y1="304" y2="1248" x1="432" />
            <wire x2="784" y1="1248" y2="1248" x1="432" />
            <wire x2="304" y1="304" y2="1568" x1="304" />
            <wire x2="768" y1="1568" y2="1568" x1="304" />
        </branch>
        <branch name="B">
            <wire x2="352" y1="240" y2="240" x1="256" />
            <wire x2="816" y1="240" y2="240" x1="352" />
            <wire x2="352" y1="240" y2="928" x1="352" />
            <wire x2="352" y1="928" y2="1504" x1="352" />
            <wire x2="768" y1="1504" y2="1504" x1="352" />
            <wire x2="784" y1="928" y2="928" x1="352" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="2048" y1="896" y2="896" x1="1040" />
            <wire x2="2048" y1="896" y2="1168" x1="2048" />
        </branch>
        <branch name="XLXN_9">
            <wire x2="1536" y1="1216" y2="1216" x1="1040" />
            <wire x2="1536" y1="1216" y2="1232" x1="1536" />
            <wire x2="2048" y1="1232" y2="1232" x1="1536" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="1312" y1="1536" y2="1536" x1="1024" />
            <wire x2="1312" y1="1408" y2="1536" x1="1312" />
            <wire x2="2048" y1="1408" y2="1408" x1="1312" />
            <wire x2="2048" y1="1296" y2="1408" x1="2048" />
        </branch>
        <iomarker fontsize="28" x="256" y="176" name="A" orien="R180" />
        <iomarker fontsize="28" x="256" y="240" name="B" orien="R180" />
        <iomarker fontsize="28" x="256" y="304" name="C_in" orien="R180" />
        <branch name="S">
            <wire x2="2720" y1="240" y2="240" x1="1072" />
        </branch>
        <branch name="C_out">
            <wire x2="2736" y1="1232" y2="1232" x1="2304" />
        </branch>
        <iomarker fontsize="28" x="2720" y="240" name="S" orien="R0" />
        <iomarker fontsize="28" x="2736" y="1232" name="C_out" orien="R0" />
    </sheet>
</drawing>