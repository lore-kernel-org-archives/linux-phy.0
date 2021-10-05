Return-Path: <SRS0=czee=OZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87EC2C433EF
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 15:25:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5105461502
	for <linux-phy@archiver.kernel.org>; Tue,  5 Oct 2021 15:25:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5105461502
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=foss.st.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUfFgfLrbMBiwQ1RZiwN20Tc20E9MfcND3JKLdhypX0=; b=KAyF3dKL3dyxxE
	2QUhopnEgnBmbydf+5YAiswgafT6HVcyHrochEi8tkZQGb8A5nzXwsYUMn+XPoJPPygXb+f94J0CX
	5K1KggX5thSM51f58Zb4RXicvuG6eUfUX4WUsxw7RTaYDkml6z/JJyIkoGhlf+XqOSGuMqoYSVGas
	NvnXpr/6u2OnJ/JIC3Rutf4khdiHPuzFXhm4/9qyFjyDK93CU0j9VdM7IxG9lbhfToFAfM+3epuaZ
	fRWW2kirXDwySPNiY1cRyUopPeGe+RbHkJr1Ne97nLtGAiO0EOzIY/ImTaKuVsfah+FA/ifYSKnoC
	y4M+EljWn8sBFyCNcx1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXmK9-00B3t3-QZ; Tue, 05 Oct 2021 15:25:45 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXmJW-00B3da-EX; Tue, 05 Oct 2021 15:25:08 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.1.2/8.16.1.2) with SMTP id 195DlYcI026071; 
 Tue, 5 Oct 2021 17:24:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-transfer-encoding : content-type; s=selector1;
 bh=bZUc4fpK5WkSy+znG167urc9Z7gd4EvGuzPnXsKxCzY=;
 b=a8ko3TaPm4dy7gnuPLfVdAPOnpzul9VzGF5tvUnV4S0+2pLcsqlwKLuCR2IF2lCwueCc
 +H4jZzIazyR3isNsvuVfYlTnXF1k+Ba7LfYrRmHVayYz5Q6Q2EeIuryjrmOF1JN+MPtM
 SOoHdXt/olAE6ogT7OjOBFztTYqflEZr3ge3rMEetL2iJozFv6kYSm0cq2nl+bHe4ZiX
 Zz8qRnwaMDUK661m8PBBEwtGFmyhS5ZLdA3OO+cQZG+5e40o+lqJNzZqaLy0mY5Wn5t2
 6n6Ge1c3NcABbTKjMtuGoTtG7RORK64HojHC4yEx6lXEjTlhm59cee8PPR3WdxYm8cFX hw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 3bgjv12f9b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Oct 2021 17:24:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C60CE10002A;
 Tue,  5 Oct 2021 17:24:58 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag2node2.st.com [10.75.127.5])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BD1E7229A8E;
 Tue,  5 Oct 2021 17:24:58 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG2NODE2.st.com (10.75.127.5)
 with Microsoft SMTP Server (TLS) id 15.0.1497.18; Tue, 5 Oct 2021 17:24:58
 +0200
From: Amelie Delaunay <amelie.delaunay@foss.st.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>
CC: <linux-phy@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-stm32@st-md-mailman.stormreply.com>, Amelie Delaunay
 <amelie.delaunay@foss.st.com>
Subject: [PATCH v2 2/3] dt-bindings: phy: phy-stm32-usbphyc: add optional phy
 tuning properties
Date: Tue, 5 Oct 2021 17:24:52 +0200
Message-ID: <20211005152453.89330-3-amelie.delaunay@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
References: <20211005152453.89330-1-amelie.delaunay@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG2NODE2.st.com
 (10.75.127.5)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.182.1,Aquarius:18.0.790,Hydra:6.0.391,FMLib:17.0.607.475
 definitions=2021-10-05_02,2021-10-04_01,2020-04-07_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211005_082506_798561_6DE7EBBF 
X-CRM114-Status: GOOD (  17.74  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

This patch adds the description of new optional phy tuning properties
for usbphyc phy sub nodes.

Signed-off-by: Amelie Delaunay <amelie.delaunay@foss.st.com>
---
Changes in v2:
- st,phy-tuning property removed
- tuning properties are now put directly in each child node
- tuning properties are no more free form text and their name reworked
---
 .../bindings/phy/phy-stm32-usbphyc.yaml       | 126 ++++++++++++++++++
 1 file changed, 126 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
index 3329f1d33a4f..c0f4dff2b8cb 100644
--- a/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-stm32-usbphyc.yaml
@@ -81,6 +81,116 @@ patternProperties:
         properties:
           vbus-supply: true
 
+      # It can be necessary to adjust the PHY settings to compensate parasitics, which can be due
+      # to USB connector/receptacle, routing, ESD protection component,... Here is the list of
+      # all optional parameters to tune the interface of the PHY (HS for High-Speed, FS for Full-
+      # Speed, LS for Low-Speed)
+
+      st,current-boost-milliamp:
+        description: Current boosting in mA
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 1
+        maximum: 2
+
+      st,no-lsfs-fb-cap:
+        description: Disables the LS/FS feedback capacitor
+        type: boolean
+
+      st,decrease-hs-slew-rate:
+        description: Decreases the HS driver slew rate by 10%
+        type: boolean
+
+      st,tune-hs-dc-level:
+        description: Tunes the HS driver DC level
+          - <0> normal level
+          - <1> increases the level by 5 to 7 mV
+          - <2> increases the level by 10 to 14 mV
+          - <3> decreases the level by 5 to 7 mV
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 3
+        default: 0
+
+      st,enable-fs-rftime-tuning:
+        description: Enables the FS rise/fall tuning option
+        type: boolean
+
+      st,enable-hs-rftime-reduction:
+        description: Enables the HS rise/fall reduction feature
+        type: boolean
+
+      st,trim-hs-current:
+        description: Controls HS driver current trimming for choke compensation
+          - <0> = 18.87 mA target current / nominal + 0%
+          - <1> = 19.165 mA target current / nominal + 1.56%
+          - <2> = 19.46 mA target current / nominal + 3.12%
+          - <3> = 19.755 mA target current / nominal + 4.68%
+          - <4> = 20.05 mA target current / nominal + 6.24%
+          - <5> = 20.345 mA target current / nominal + 7.8%
+          - <6> = 20.64 mA target current / nominal + 9.36%
+          - <7> = 20.935 mA target current / nominal + 10.92%
+          - <8> = 21.23 mA target current / nominal + 12.48%
+          - <9> = 21.525 mA target current / nominal + 14.04%
+          - <10> = 21.82 mA target current / nominal + 15.6%
+          - <11> = 22.115 mA target current / nominal + 17.16%
+          - <12> = 22.458 mA target current / nominal + 19.01%
+          - <13> = 22.755 mA target current / nominal + 20.58%
+          - <14> = 23.052 mA target current / nominal + 22.16%
+          - <15> = 23.348 mA target current / nominal + 23.73%
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 15
+        default: 0
+
+      st,trim-hs-impedance:
+        description: Controls HS driver impedance tuning for choke compensation
+          - <0> = no impedance offset
+          - <1> = reduce the impedance by 2 ohms
+          - <2> = reduce the impedance by 4 ohms
+          - <3> = reduce the impedance by 6 ohms
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 3
+        default: 0
+
+      st,tune-squelch-level:
+        description: Tunes the squelch DC threshold value
+          - <0> = no shift in threshold
+          - <1> = threshold shift by +7 mV
+          - <2> = threshold shift by -5 mV
+          - <3> = threshold shift by +14 mV
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 3
+        default: 0
+
+      st,enable-hs-rx-gain-eq:
+        description: Enables the HS Rx gain equalizer
+        type: boolean
+
+      st,tune-hs-rx-offset:
+        description: Adjusts the HS Rx offset
+          - <0> = no offset
+          - <1> = offset of +5 mV
+          - <2> = offset of +10 mV
+          - <3> = offset of -5 mV
+        $ref: /schemas/types.yaml#/definitions/uint32
+        minimum: 0
+        maximum: 3
+        default: 0
+
+      st,no-hs-ftime-ctrl:
+        description: Disables the HS fall time control of single ended signals during pre-emphasis
+        type: boolean
+
+      st,no-lsfs-sc:
+        description: Disables the short circuit protection in LS/FS driver
+        type: boolean
+
+      st,enable-hs-tx-staggering:
+        description: Enables the basic staggering in HS Tx mode
+        type: boolean
+
     allOf:
       - if:
           properties:
@@ -137,6 +247,14 @@ examples:
             reg = <0>;
             phy-supply = <&vdd_usb>;
             #phy-cells = <0>;
+            st,tune-hs-dc-level = <2>;
+            st,enable-fs-rftime-tuning;
+            st,enable-hs-rftime-reduction;
+            st,trim-hs-current = <15>;
+            st,trim-hs-impedance = <1>;
+            st,tune-squelch-level = <3>;
+            st,tune-hs-rx-offset = <2>;
+            st,no-lsfs-sc;
             connector {
                 compatible = "usb-a-connector";
                 vbus-supply = <&vbus_sw>;
@@ -147,6 +265,14 @@ examples:
             reg = <1>;
             phy-supply = <&vdd_usb>;
             #phy-cells = <1>;
+            st,tune-hs-dc-level = <2>;
+            st,enable-fs-rftime-tuning;
+            st,enable-hs-rftime-reduction;
+            st,trim-hs-current = <15>;
+            st,trim-hs-impedance = <1>;
+            st,tune-squelch-level = <3>;
+            st,tune-hs-rx-offset = <2>;
+            st,no-lsfs-sc;
         };
     };
 ...
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
