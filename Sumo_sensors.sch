<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X04">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="0" y1="0.635" x2="0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="-1.27" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<pad name="1" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-5.1562" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-5.08" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
</package>
<package name="1X04/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-5.715" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="6.985" y="-4.445" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD4">
<wire x1="-6.35" y1="-5.08" x2="1.27" y2="-5.08" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-5.08" x2="1.27" y2="7.62" width="0.4064" layer="94"/>
<wire x1="1.27" y1="7.62" x2="-6.35" y2="7.62" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="7.62" x2="-6.35" y2="-5.08" width="0.4064" layer="94"/>
<text x="-6.35" y="8.255" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-7.62" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X4" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD4" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X04">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X04/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="con-amp-micromatch">
<description>AMP Connectors, Type  MicroMatch</description>
<packages>
<package name="MICROMATCH-6">
<description>&lt;b&gt;MicroMaTch 6 &lt;/b&gt; 7-215464-6 / 0-215464-6&lt;p&gt;
Drawing Number C-215464&lt;br&gt;
DDEController.pdf</description>
<wire x1="-4.83" y1="0.7" x2="-5.23" y2="0.7" width="0.2032" layer="21"/>
<wire x1="-5.23" y1="0.7" x2="-5.23" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="-5.23" y1="-0.7" x2="-4.83" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="-4.83" y1="-1.2" x2="-5.23" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="-5.23" y1="-1.2" x2="-5.23" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-5.23" y1="-1.6" x2="-4.83" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="-4.83" y1="1.6" x2="-5.23" y2="1.6" width="0.2032" layer="21"/>
<wire x1="-5.23" y1="1.6" x2="-5.23" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-5.23" y1="1.2" x2="-4.83" y2="1.2" width="0.2032" layer="21"/>
<wire x1="-4.73" y1="2.4" x2="-4.73" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="-3.93" y1="2" x2="-3.93" y2="-2" width="0.2032" layer="21"/>
<wire x1="4.63" y1="1.6" x2="4.33" y2="1.6" width="0.1016" layer="21"/>
<wire x1="4.33" y1="1.6" x2="4.03" y2="1.6" width="0.1016" layer="21"/>
<wire x1="4.63" y1="0" x2="4.33" y2="0" width="0.1016" layer="21"/>
<wire x1="4.33" y1="0" x2="4.03" y2="0" width="0.1016" layer="21"/>
<wire x1="4.33" y1="0" x2="4.03" y2="0.3" width="0.1016" layer="21"/>
<wire x1="4.33" y1="1.6" x2="4.03" y2="1.3" width="0.1016" layer="21"/>
<wire x1="4.23" y1="1.4" x2="4.33" y2="1.3" width="0.1016" layer="21"/>
<wire x1="4.63" y1="1.3" x2="4.33" y2="1.3" width="0.1016" layer="21"/>
<wire x1="4.33" y1="1.3" x2="4.33" y2="0.3" width="0.1016" layer="21"/>
<wire x1="4.33" y1="0.3" x2="4.63" y2="0.3" width="0.1016" layer="21"/>
<wire x1="4.23" y1="0.2" x2="4.33" y2="0.3" width="0.1016" layer="21"/>
<wire x1="4.83" y1="-0.7" x2="5.23" y2="-0.7" width="0.2032" layer="21"/>
<wire x1="5.23" y1="-0.7" x2="5.23" y2="0.7" width="0.2032" layer="21"/>
<wire x1="5.23" y1="0.7" x2="4.83" y2="0.7" width="0.2032" layer="21"/>
<wire x1="4.83" y1="1.2" x2="5.23" y2="1.2" width="0.2032" layer="21"/>
<wire x1="5.23" y1="1.2" x2="5.23" y2="1.6" width="0.2032" layer="21"/>
<wire x1="5.23" y1="1.6" x2="4.83" y2="1.6" width="0.2032" layer="21"/>
<wire x1="4.83" y1="-1.6" x2="5.23" y2="-1.6" width="0.2032" layer="21"/>
<wire x1="5.23" y1="-1.6" x2="5.23" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="5.23" y1="-1.2" x2="4.83" y2="-1.2" width="0.2032" layer="21"/>
<wire x1="4.73" y1="-2.4" x2="4.73" y2="2.4" width="0.2032" layer="21"/>
<wire x1="3.93" y1="2" x2="-3.93" y2="2" width="0.2032" layer="21"/>
<wire x1="4.73" y1="2.4" x2="-4.73" y2="2.4" width="0.2032" layer="21"/>
<wire x1="4.73" y1="-2.4" x2="-4.73" y2="-2.4" width="0.2032" layer="21"/>
<wire x1="3.93" y1="-2" x2="3.93" y2="2" width="0.2032" layer="21"/>
<wire x1="3.93" y1="-2" x2="-3.93" y2="-2" width="0.2032" layer="21"/>
<pad name="1" x="3.175" y="1.27" drill="0.8128"/>
<pad name="2" x="1.905" y="-1.27" drill="0.8128"/>
<pad name="3" x="0.635" y="1.27" drill="0.8128"/>
<pad name="4" x="-0.635" y="-1.27" drill="0.8128"/>
<pad name="5" x="-1.905" y="1.27" drill="0.8128"/>
<pad name="6" x="-3.175" y="-1.27" drill="0.8128"/>
<text x="-3.175" y="2.54" size="1.27" layer="25">&gt;NAME</text>
<text x="-3.175" y="-3.81" size="1.27" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="MV">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<text x="-0.508" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<text x="0" y="0.889" size="1.778" layer="96">&gt;VALUE</text>
<pin name="S" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
<symbol name="M">
<wire x1="1.27" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="0" y1="0" x2="1.27" y2="0" width="0.6096" layer="94"/>
<text x="-0.508" y="0.889" size="1.778" layer="95" rot="R180">&gt;NAME</text>
<pin name="S" x="5.08" y="0" visible="off" length="short" direction="pas" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="MICROMATCH-6" prefix="X">
<description>&lt;b&gt;MicroMaTch 6 &lt;/b&gt; 7-215464-6 / 0-215464-6&lt;p&gt;
Drawing Number C-215464&lt;br&gt;
DDEController.pdf</description>
<gates>
<gate name="-1" symbol="MV" x="0" y="5.08" addlevel="always" swaplevel="1"/>
<gate name="-2" symbol="M" x="0" y="2.54" addlevel="always" swaplevel="1"/>
<gate name="-3" symbol="M" x="0" y="0" addlevel="always" swaplevel="1"/>
<gate name="-4" symbol="M" x="0" y="-2.54" addlevel="always" swaplevel="1"/>
<gate name="-5" symbol="M" x="0" y="-5.08" addlevel="always" swaplevel="1"/>
<gate name="-6" symbol="M" x="0" y="-7.62" addlevel="always" swaplevel="1"/>
</gates>
<devices>
<device name="" package="MICROMATCH-6">
<connects>
<connect gate="-1" pin="S" pad="1"/>
<connect gate="-2" pin="S" pad="2"/>
<connect gate="-3" pin="S" pad="3"/>
<connect gate="-4" pin="S" pad="4"/>
<connect gate="-5" pin="S" pad="5"/>
<connect gate="-6" pin="S" pad="6"/>
</connects>
<technologies>
<technology name="">
<attribute name="MF" value="" constant="no"/>
<attribute name="MPN" value="7-215464-6" constant="no"/>
<attribute name="OC_FARNELL" value="3784630" constant="no"/>
<attribute name="OC_NEWARK" value="19R8125" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="JP2" library="pinhead" deviceset="PINHD-1X4" device=""/>
<part name="JP3" library="pinhead" deviceset="PINHD-1X4" device=""/>
<part name="JP4" library="pinhead" deviceset="PINHD-1X4" device=""/>
<part name="X1" library="con-amp-micromatch" deviceset="MICROMATCH-6" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="JP2" gate="A" x="10.16" y="40.64" rot="R180"/>
<instance part="JP3" gate="A" x="10.16" y="58.42" rot="R180"/>
<instance part="JP4" gate="A" x="10.16" y="76.2" rot="R180"/>
<instance part="X1" gate="-1" x="10.16" y="22.86"/>
<instance part="X1" gate="-2" x="10.16" y="20.32"/>
<instance part="X1" gate="-3" x="10.16" y="17.78"/>
<instance part="X1" gate="-4" x="10.16" y="15.24"/>
<instance part="X1" gate="-5" x="10.16" y="12.7"/>
<instance part="X1" gate="-6" x="10.16" y="10.16"/>
</instances>
<busses>
</busses>
<nets>
<net name="GND" class="0">
<segment>
<wire x1="15.24" y1="22.86" x2="33.02" y2="22.86" width="0.1524" layer="91"/>
<label x="20.32" y="22.86" size="1.778" layer="95"/>
<pinref part="X1" gate="-1" pin="S"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="3"/>
<wire x1="12.7" y1="76.2" x2="33.02" y2="76.2" width="0.1524" layer="91"/>
<label x="20.32" y="76.2" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="3"/>
<wire x1="12.7" y1="58.42" x2="33.02" y2="58.42" width="0.1524" layer="91"/>
<label x="20.32" y="58.42" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="12.7" y1="40.64" x2="33.02" y2="40.64" width="0.1524" layer="91"/>
<label x="20.32" y="40.64" size="1.778" layer="95"/>
</segment>
</net>
<net name="VCC" class="0">
<segment>
<wire x1="15.24" y1="20.32" x2="33.02" y2="20.32" width="0.1524" layer="91"/>
<label x="20.32" y="20.32" size="1.778" layer="95"/>
<pinref part="X1" gate="-2" pin="S"/>
</segment>
<segment>
<wire x1="12.7" y1="43.18" x2="33.02" y2="43.18" width="0.1524" layer="91"/>
<label x="20.32" y="43.18" size="1.778" layer="95"/>
<pinref part="JP2" gate="A" pin="4"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="4"/>
<wire x1="12.7" y1="78.74" x2="33.02" y2="78.74" width="0.1524" layer="91"/>
<label x="20.32" y="78.74" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="4"/>
<wire x1="12.7" y1="60.96" x2="33.02" y2="60.96" width="0.1524" layer="91"/>
<label x="20.32" y="60.96" size="1.778" layer="95"/>
</segment>
</net>
<net name="V01" class="0">
<segment>
<wire x1="15.24" y1="17.78" x2="33.02" y2="17.78" width="0.1524" layer="91"/>
<label x="20.32" y="17.78" size="1.778" layer="95"/>
<pinref part="X1" gate="-3" pin="S"/>
</segment>
<segment>
<pinref part="JP4" gate="A" pin="2"/>
<wire x1="12.7" y1="73.66" x2="33.02" y2="73.66" width="0.1524" layer="91"/>
<label x="20.32" y="73.66" size="1.778" layer="95"/>
</segment>
</net>
<net name="V02" class="0">
<segment>
<wire x1="15.24" y1="15.24" x2="33.02" y2="15.24" width="0.1524" layer="91"/>
<label x="20.32" y="15.24" size="1.778" layer="95"/>
<pinref part="X1" gate="-4" pin="S"/>
</segment>
<segment>
<pinref part="JP3" gate="A" pin="2"/>
<wire x1="12.7" y1="55.88" x2="33.02" y2="55.88" width="0.1524" layer="91"/>
<label x="20.32" y="55.88" size="1.778" layer="95"/>
</segment>
</net>
<net name="V03" class="0">
<segment>
<pinref part="X1" gate="-5" pin="S"/>
<wire x1="15.24" y1="12.7" x2="33.02" y2="12.7" width="0.1524" layer="91"/>
<label x="20.32" y="12.7" size="1.778" layer="95"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="12.7" y1="38.1" x2="33.02" y2="38.1" width="0.1524" layer="91"/>
<label x="20.32" y="38.1" size="1.778" layer="95"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="101,1,15.24,10.16,X1-6,S,,,,"/>
<approved hash="113,1,12.4629,37.9688,JP2,,,,,"/>
<approved hash="113,1,12.4629,55.7488,JP3,,,,,"/>
<approved hash="113,1,12.4629,73.5288,JP4,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
