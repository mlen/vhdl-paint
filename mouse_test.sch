<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="rst" />
        <signal name="ps2_data" />
        <signal name="ps2_clock" />
        <signal name="clk" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="XLXN_37(7:0)" />
        <signal name="XLXN_38(7:0)" />
        <signal name="vga_c(2:0)" />
        <signal name="vga_vs" />
        <signal name="vga_hs" />
        <signal name="XLXN_47(7:0)" />
        <signal name="XLXN_48(7:0)" />
        <signal name="XLXN_54(0:0)" />
        <signal name="XLXN_55(15:0)" />
        <signal name="XLXN_56(15:0)" />
        <signal name="XLXN_57(0:0)" />
        <signal name="XLXN_58(0:0)" />
        <signal name="XLXN_60" />
        <port polarity="Input" name="rst" />
        <port polarity="BiDirectional" name="ps2_data" />
        <port polarity="BiDirectional" name="ps2_clock" />
        <port polarity="Input" name="clk" />
        <port polarity="Output" name="vga_c(2:0)" />
        <port polarity="Output" name="vga_vs" />
        <port polarity="Output" name="vga_hs" />
        <blockdef name="main">
            <timestamp>2012-4-19T9:31:10</timestamp>
            <rect width="64" x="320" y="20" height="24" />
            <line x2="384" y1="32" y2="32" x1="320" />
            <rect width="64" x="320" y="84" height="24" />
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="384" y1="224" y2="224" x1="320" />
            <line x2="384" y1="288" y2="288" x1="320" />
            <line x2="384" y1="352" y2="352" x1="320" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-192" height="576" />
        </blockdef>
        <blockdef name="controller">
            <timestamp>2012-5-9T13:12:16</timestamp>
            <line x2="384" y1="96" y2="96" x1="320" />
            <line x2="384" y1="160" y2="160" x1="320" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <rect width="256" x="64" y="-448" height="768" />
        </blockdef>
        <blockdef name="vga">
            <timestamp>2012-5-8T12:28:12</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-208" y2="-208" x1="320" />
            <rect width="64" x="320" y="-140" height="24" />
            <line x2="384" y1="-128" y2="-128" x1="320" />
            <rect width="64" x="320" y="-60" height="24" />
            <line x2="384" y1="-48" y2="-48" x1="320" />
        </blockdef>
        <blockdef name="RAM">
            <timestamp>2012-5-9T13:22:16</timestamp>
            <rect width="512" x="32" y="32" height="1344" />
            <line x2="32" y1="80" y2="80" style="linewidth:W" x1="0" />
            <line x2="32" y1="112" y2="112" style="linewidth:W" x1="0" />
            <line x2="32" y1="208" y2="208" style="linewidth:W" x1="0" />
            <line x2="32" y1="272" y2="272" x1="0" />
            <line x2="32" y1="432" y2="432" style="linewidth:W" x1="0" />
            <line x2="32" y1="624" y2="624" x1="0" />
            <line x2="544" y1="368" y2="368" style="linewidth:W" x1="576" />
        </blockdef>
        <block symbolname="main" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="ps2_data" name="ps2_data" />
            <blockpin signalname="ps2_clock" name="ps2_clock" />
            <blockpin signalname="XLXN_37(7:0)" name="x(7:0)" />
            <blockpin signalname="XLXN_38(7:0)" name="y(7:0)" />
            <blockpin signalname="XLXN_35" name="btn_r" />
            <blockpin name="btn_m" />
            <blockpin signalname="XLXN_34" name="btn_l" />
            <blockpin signalname="XLXN_36" name="data_ready" />
        </block>
        <block symbolname="controller" name="XLXI_12">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_34" name="btn_l" />
            <blockpin signalname="XLXN_35" name="btn_r" />
            <blockpin signalname="XLXN_36" name="mouse_rdy" />
            <blockpin signalname="XLXN_37(7:0)" name="x_in(7:0)" />
            <blockpin signalname="XLXN_38(7:0)" name="y_in(7:0)" />
            <blockpin signalname="XLXN_57(0:0)" name="data" />
            <blockpin signalname="XLXN_58(0:0)" name="wr" />
            <blockpin signalname="XLXN_47(7:0)" name="x_out(7:0)" />
            <blockpin signalname="XLXN_48(7:0)" name="y_out(7:0)" />
            <blockpin signalname="XLXN_56(15:0)" name="addr(15:0)" />
        </block>
        <block symbolname="vga" name="XLXI_13">
            <blockpin signalname="XLXN_54(0:0)" name="data" />
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="rst" name="rst" />
            <blockpin signalname="XLXN_47(7:0)" name="x_in(7:0)" />
            <blockpin signalname="XLXN_48(7:0)" name="y_in(7:0)" />
            <blockpin signalname="vga_hs" name="vga_hs" />
            <blockpin signalname="vga_vs" name="vga_vs" />
            <blockpin signalname="vga_c(2:0)" name="vga_c(2:0)" />
            <blockpin signalname="XLXN_55(15:0)" name="addr(15:0)" />
        </block>
        <block symbolname="RAM" name="XLXI_14">
            <blockpin signalname="XLXN_56(15:0)" name="addra(15:0)" />
            <blockpin signalname="XLXN_57(0:0)" name="dina(0:0)" />
            <blockpin signalname="XLXN_58(0:0)" name="wea(0:0)" />
            <blockpin signalname="clk" name="clka" />
            <blockpin signalname="XLXN_55(15:0)" name="addrb(15:0)" />
            <blockpin signalname="clk" name="clkb" />
            <blockpin signalname="XLXN_54(0:0)" name="doutb(0:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="832" y="992" name="XLXI_1" orien="R0">
        </instance>
        <branch name="ps2_data">
            <wire x2="1248" y1="896" y2="896" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1248" y="896" name="ps2_data" orien="R0" />
        <branch name="ps2_clock">
            <wire x2="1248" y1="960" y2="960" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1248" y="960" name="ps2_clock" orien="R0" />
        <iomarker fontsize="28" x="704" y="896" name="rst" orien="R180" />
        <iomarker fontsize="28" x="704" y="832" name="clk" orien="R180" />
        <instance x="1536" y="1360" name="XLXI_12" orien="R0">
        </instance>
        <branch name="XLXN_34">
            <wire x2="1376" y1="1280" y2="1280" x1="1216" />
            <wire x2="1376" y1="1072" y2="1280" x1="1376" />
            <wire x2="1536" y1="1072" y2="1072" x1="1376" />
        </branch>
        <branch name="XLXN_35">
            <wire x2="1360" y1="1152" y2="1152" x1="1216" />
            <wire x2="1360" y1="1136" y2="1152" x1="1360" />
            <wire x2="1536" y1="1136" y2="1136" x1="1360" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="1392" y1="1344" y2="1344" x1="1216" />
            <wire x2="1392" y1="1200" y2="1344" x1="1392" />
            <wire x2="1536" y1="1200" y2="1200" x1="1392" />
        </branch>
        <branch name="XLXN_37(7:0)">
            <wire x2="1344" y1="1024" y2="1024" x1="1216" />
            <wire x2="1344" y1="1024" y2="1264" x1="1344" />
            <wire x2="1536" y1="1264" y2="1264" x1="1344" />
        </branch>
        <branch name="XLXN_38(7:0)">
            <wire x2="1328" y1="1088" y2="1088" x1="1216" />
            <wire x2="1328" y1="1088" y2="1328" x1="1328" />
            <wire x2="1536" y1="1328" y2="1328" x1="1328" />
        </branch>
        <branch name="clk">
            <wire x2="768" y1="832" y2="832" x1="704" />
            <wire x2="832" y1="832" y2="832" x1="768" />
            <wire x2="768" y1="720" y2="832" x1="768" />
            <wire x2="1504" y1="720" y2="720" x1="768" />
            <wire x2="1504" y1="720" y2="944" x1="1504" />
            <wire x2="1536" y1="944" y2="944" x1="1504" />
            <wire x2="2016" y1="720" y2="720" x1="1504" />
            <wire x2="2016" y1="720" y2="1008" x1="2016" />
            <wire x2="2048" y1="1008" y2="1008" x1="2016" />
            <wire x2="2768" y1="720" y2="720" x1="2016" />
            <wire x2="2800" y1="720" y2="720" x1="2768" />
            <wire x2="2768" y1="720" y2="1072" x1="2768" />
            <wire x2="2800" y1="1072" y2="1072" x1="2768" />
        </branch>
        <branch name="vga_c(2:0)">
            <wire x2="2480" y1="1104" y2="1104" x1="2432" />
        </branch>
        <branch name="vga_vs">
            <wire x2="2480" y1="1024" y2="1024" x1="2432" />
        </branch>
        <branch name="vga_hs">
            <wire x2="2480" y1="944" y2="944" x1="2432" />
        </branch>
        <branch name="XLXN_47(7:0)">
            <wire x2="1968" y1="1072" y2="1072" x1="1920" />
            <wire x2="1968" y1="1072" y2="1136" x1="1968" />
            <wire x2="2048" y1="1136" y2="1136" x1="1968" />
        </branch>
        <branch name="XLXN_48(7:0)">
            <wire x2="2048" y1="1200" y2="1200" x1="1920" />
        </branch>
        <instance x="2048" y="1232" name="XLXI_13" orien="R0">
        </instance>
        <iomarker fontsize="28" x="2480" y="944" name="vga_hs" orien="R0" />
        <iomarker fontsize="28" x="2480" y="1024" name="vga_vs" orien="R0" />
        <iomarker fontsize="28" x="2480" y="1104" name="vga_c(2:0)" orien="R0" />
        <instance x="2800" y="448" name="XLXI_14" orien="R0">
        </instance>
        <branch name="XLXN_55(15:0)">
            <wire x2="2672" y1="1184" y2="1184" x1="2432" />
            <wire x2="2672" y1="880" y2="1184" x1="2672" />
            <wire x2="2800" y1="880" y2="880" x1="2672" />
        </branch>
        <branch name="XLXN_56(15:0)">
            <wire x2="2736" y1="1328" y2="1328" x1="1920" />
            <wire x2="2736" y1="528" y2="1328" x1="2736" />
            <wire x2="2800" y1="528" y2="528" x1="2736" />
        </branch>
        <branch name="XLXN_54(0:0)">
            <wire x2="2048" y1="448" y2="944" x1="2048" />
            <wire x2="3408" y1="448" y2="448" x1="2048" />
            <wire x2="3408" y1="448" y2="816" x1="3408" />
            <wire x2="3408" y1="816" y2="816" x1="3376" />
        </branch>
        <branch name="XLXN_57(0:0)">
            <wire x2="1952" y1="1456" y2="1456" x1="1920" />
            <wire x2="2800" y1="560" y2="560" x1="1952" />
            <wire x2="1952" y1="560" y2="1456" x1="1952" />
        </branch>
        <branch name="XLXN_58(0:0)">
            <wire x2="2704" y1="1520" y2="1520" x1="1920" />
            <wire x2="2800" y1="656" y2="656" x1="2704" />
            <wire x2="2704" y1="656" y2="1520" x1="2704" />
        </branch>
        <branch name="rst">
            <wire x2="800" y1="896" y2="896" x1="704" />
            <wire x2="832" y1="896" y2="896" x1="800" />
            <wire x2="1472" y1="752" y2="752" x1="800" />
            <wire x2="1472" y1="752" y2="1008" x1="1472" />
            <wire x2="1536" y1="1008" y2="1008" x1="1472" />
            <wire x2="1984" y1="752" y2="752" x1="1472" />
            <wire x2="1984" y1="752" y2="1072" x1="1984" />
            <wire x2="2048" y1="1072" y2="1072" x1="1984" />
            <wire x2="800" y1="752" y2="896" x1="800" />
        </branch>
    </sheet>
</drawing>