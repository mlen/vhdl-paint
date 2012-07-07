<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_7" />
        <signal name="clk" />
        <signal name="rst" />
        <signal name="ps2_data" />
        <signal name="ps2_clock" />
        <signal name="XLXN_32" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_38" />
        <signal name="XLXN_8" />
        <signal name="XLXN_49" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="x(7:0)" />
        <signal name="y(7:0)" />
        <signal name="XLXN_56(7:0)" />
        <signal name="XLXN_57(7:0)" />
        <signal name="btn_r" />
        <signal name="btn_m" />
        <signal name="btn_l" />
        <signal name="data_ready" />
        <port polarity="Input" name="clk" />
        <port polarity="Input" name="rst" />
        <port polarity="BiDirectional" name="ps2_data" />
        <port polarity="BiDirectional" name="ps2_clock" />
        <port polarity="Output" name="x(7:0)" />
        <port polarity="Output" name="y(7:0)" />
        <port polarity="Output" name="btn_r" />
        <port polarity="Output" name="btn_m" />
        <port polarity="Output" name="btn_l" />
        <port polarity="Output" name="data_ready" />
        <blockdef name="ps2_rx">
            <timestamp>2012-3-24T21:13:53</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="iobuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="-128" y2="-128" x1="224" />
            <line x2="128" y1="-64" y2="-64" x1="160" />
            <line x2="160" y1="-128" y2="-64" x1="160" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="96" y1="-140" y2="-192" x1="96" />
            <line x2="96" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-96" y2="-160" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="128" />
            <line x2="128" y1="-160" y2="-128" x1="64" />
            <line x2="128" y1="-96" y2="-32" x1="128" />
            <line x2="128" y1="-64" y2="-96" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
        </blockdef>
        <blockdef name="ps2_tx">
            <timestamp>2012-4-12T8:8:27</timestamp>
            <line x2="0" y1="96" y2="96" x1="64" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <line x2="0" y1="-192" y2="-192" x1="64" />
            <line x2="0" y1="-112" y2="-112" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="256" x="64" y="-384" height="512" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="driver">
            <timestamp>2012-4-19T9:27:24</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <block symbolname="ps2_rx" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="XLXN_7" name="ps2d" />
            <blockpin signalname="XLXN_8" name="ps2c" />
            <blockpin signalname="XLXN_34" name="rx_en" />
            <blockpin signalname="XLXN_52" name="rx_done" />
            <blockpin signalname="XLXN_56(7:0)" name="dout(7:0)" />
        </block>
        <block symbolname="iobuf" name="XLXI_2">
            <blockpin signalname="XLXN_36" name="I" />
            <blockpin signalname="ps2_data" name="IO" />
            <blockpin signalname="XLXN_7" name="O" />
            <blockpin signalname="XLXN_38" name="T" />
        </block>
        <block symbolname="iobuf" name="XLXI_7">
            <blockpin signalname="XLXN_35" name="I" />
            <blockpin signalname="ps2_clock" name="IO" />
            <blockpin signalname="XLXN_8" name="O" />
            <blockpin signalname="XLXN_32" name="T" />
        </block>
        <block symbolname="ps2_tx" name="XLXI_12">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="XLXN_49" name="wr_ps2" />
            <blockpin signalname="XLXN_8" name="ps2c_in" />
            <blockpin signalname="XLXN_57(7:0)" name="din(7:0)" />
            <blockpin signalname="XLXN_32" name="ps2c_out" />
            <blockpin signalname="XLXN_34" name="tx_idle" />
            <blockpin signalname="XLXN_53" name="tx_done" />
            <blockpin signalname="XLXN_7" name="ps2d_in" />
            <blockpin signalname="XLXN_38" name="ps2d_out" />
        </block>
        <block symbolname="gnd" name="XLXI_15">
            <blockpin signalname="XLXN_35" name="G" />
        </block>
        <block symbolname="gnd" name="XLXI_16">
            <blockpin signalname="XLXN_36" name="G" />
        </block>
        <block symbolname="driver" name="XLXI_24">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="reset" />
            <blockpin signalname="XLXN_53" name="tx_done" />
            <blockpin signalname="XLXN_52" name="rx_done" />
            <blockpin signalname="XLXN_56(7:0)" name="rx_data(7:0)" />
            <blockpin signalname="XLXN_49" name="wr" />
            <blockpin signalname="data_ready" name="ready" />
            <blockpin signalname="btn_l" name="btn_l" />
            <blockpin signalname="btn_m" name="btn_m" />
            <blockpin signalname="btn_r" name="btn_r" />
            <blockpin signalname="x(7:0)" name="x(7:0)" />
            <blockpin signalname="y(7:0)" name="y(7:0)" />
            <blockpin signalname="XLXN_57(7:0)" name="tx_data(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1728" y="1216" name="XLXI_2" orien="R0" />
        <instance x="736" y="1136" name="XLXI_1" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="736" y1="976" y2="976" x1="704" />
            <wire x2="704" y1="976" y2="1152" x1="704" />
            <wire x2="1728" y1="1152" y2="1152" x1="704" />
            <wire x2="704" y1="1152" y2="1696" x1="704" />
            <wire x2="736" y1="1696" y2="1696" x1="704" />
        </branch>
        <branch name="ps2_data">
            <wire x2="2080" y1="1088" y2="1088" x1="1952" />
        </branch>
        <branch name="ps2_clock">
            <wire x2="2064" y1="1648" y2="1648" x1="1968" />
            <wire x2="2080" y1="1408" y2="1408" x1="2064" />
            <wire x2="2064" y1="1408" y2="1648" x1="2064" />
        </branch>
        <iomarker fontsize="28" x="2080" y="1088" name="ps2_data" orien="R0" />
        <iomarker fontsize="28" x="2080" y="1408" name="ps2_clock" orien="R0" />
        <iomarker fontsize="28" x="528" y="912" name="rst" orien="R180" />
        <iomarker fontsize="28" x="528" y="848" name="clk" orien="R180" />
        <instance x="1744" y="1776" name="XLXI_7" orien="R0" />
        <branch name="rst">
            <wire x2="640" y1="912" y2="912" x1="528" />
            <wire x2="640" y1="912" y2="1328" x1="640" />
            <wire x2="736" y1="1328" y2="1328" x1="640" />
            <wire x2="736" y1="912" y2="912" x1="640" />
            <wire x2="736" y1="336" y2="336" x1="640" />
            <wire x2="640" y1="336" y2="912" x1="640" />
        </branch>
        <instance x="736" y="1600" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_32">
            <wire x2="1744" y1="1312" y2="1312" x1="1120" />
            <wire x2="1744" y1="1312" y2="1584" x1="1744" />
        </branch>
        <branch name="XLXN_34">
            <wire x2="736" y1="1104" y2="1168" x1="736" />
            <wire x2="1184" y1="1168" y2="1168" x1="736" />
            <wire x2="1184" y1="1168" y2="1376" x1="1184" />
            <wire x2="1184" y1="1376" y2="1376" x1="1120" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1744" y1="1648" y2="1648" x1="1712" />
        </branch>
        <instance x="1584" y="1584" name="XLXI_15" orien="R90" />
        <branch name="XLXN_36">
            <wire x2="1728" y1="1088" y2="1088" x1="1696" />
        </branch>
        <instance x="1568" y="1024" name="XLXI_16" orien="R90" />
        <branch name="XLXN_38">
            <wire x2="1424" y1="1696" y2="1696" x1="1120" />
            <wire x2="1424" y1="1024" y2="1696" x1="1424" />
            <wire x2="1728" y1="1024" y2="1024" x1="1424" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="736" y1="1040" y2="1040" x1="720" />
            <wire x2="720" y1="1040" y2="1488" x1="720" />
            <wire x2="720" y1="1488" y2="1712" x1="720" />
            <wire x2="1744" y1="1712" y2="1712" x1="720" />
            <wire x2="736" y1="1488" y2="1488" x1="720" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="624" y1="1184" y2="1408" x1="624" />
            <wire x2="736" y1="1408" y2="1408" x1="624" />
            <wire x2="1200" y1="1184" y2="1184" x1="624" />
            <wire x2="1200" y1="256" y2="256" x1="1120" />
            <wire x2="1200" y1="256" y2="1184" x1="1200" />
        </branch>
        <branch name="clk">
            <wire x2="672" y1="848" y2="848" x1="528" />
            <wire x2="672" y1="848" y2="1248" x1="672" />
            <wire x2="736" y1="1248" y2="1248" x1="672" />
            <wire x2="736" y1="848" y2="848" x1="672" />
            <wire x2="736" y1="256" y2="256" x1="672" />
            <wire x2="672" y1="256" y2="848" x1="672" />
        </branch>
        <instance x="736" y="736" name="XLXI_24" orien="R0">
        </instance>
        <branch name="XLXN_52">
            <wire x2="688" y1="160" y2="496" x1="688" />
            <wire x2="736" y1="496" y2="496" x1="688" />
            <wire x2="1184" y1="160" y2="160" x1="688" />
            <wire x2="1184" y1="160" y2="848" x1="1184" />
            <wire x2="1184" y1="848" y2="848" x1="1120" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="736" y1="416" y2="416" x1="720" />
            <wire x2="720" y1="416" y2="800" x1="720" />
            <wire x2="1168" y1="800" y2="800" x1="720" />
            <wire x2="1168" y1="800" y2="1632" x1="1168" />
            <wire x2="1168" y1="1632" y2="1632" x1="1120" />
        </branch>
        <branch name="x(7:0)">
            <wire x2="1376" y1="576" y2="576" x1="1120" />
        </branch>
        <branch name="y(7:0)">
            <wire x2="1376" y1="640" y2="640" x1="1120" />
        </branch>
        <branch name="XLXN_56(7:0)">
            <wire x2="736" y1="656" y2="656" x1="688" />
            <wire x2="688" y1="656" y2="752" x1="688" />
            <wire x2="1152" y1="752" y2="752" x1="688" />
            <wire x2="1152" y1="752" y2="1104" x1="1152" />
            <wire x2="1152" y1="1104" y2="1104" x1="1120" />
        </branch>
        <branch name="XLXN_57(7:0)">
            <wire x2="736" y1="1568" y2="1568" x1="624" />
            <wire x2="624" y1="1568" y2="1776" x1="624" />
            <wire x2="1264" y1="1776" y2="1776" x1="624" />
            <wire x2="1264" y1="704" y2="704" x1="1120" />
            <wire x2="1264" y1="704" y2="1776" x1="1264" />
        </branch>
        <branch name="btn_r">
            <wire x2="1376" y1="512" y2="512" x1="1120" />
        </branch>
        <branch name="btn_m">
            <wire x2="1376" y1="448" y2="448" x1="1120" />
        </branch>
        <branch name="btn_l">
            <wire x2="1376" y1="384" y2="384" x1="1120" />
        </branch>
        <branch name="data_ready">
            <wire x2="1136" y1="320" y2="320" x1="1120" />
            <wire x2="1376" y1="320" y2="320" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1376" y="576" name="x(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1376" y="640" name="y(7:0)" orien="R0" />
        <iomarker fontsize="28" x="1376" y="512" name="btn_r" orien="R0" />
        <iomarker fontsize="28" x="1376" y="448" name="btn_m" orien="R0" />
        <iomarker fontsize="28" x="1376" y="384" name="btn_l" orien="R0" />
        <iomarker fontsize="28" x="1376" y="320" name="data_ready" orien="R0" />
    </sheet>
</drawing>