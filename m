Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D81FC52D7C
	for <linux-phy@archiver.kernel.org>; Mon, 12 Aug 2024 12:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4pLHWEHaeElKrSMAcKWuEdTNJspM29rpnyJ+uRUDVU=; b=ifeqxKF4f2dtcV
	sXlqKiOPwRCUTFsn34G1aXWdh2VePhdCV4u1y/uOoIuJpdQLifn7tFtYlNnPnoiI2awnmH9mOlKXP
	kMl02HAlE9G/J5cZHkufFhiF/n2e2MMhzKnoge+yxT2zb2zoMMCRI49FQYOCCnQvt7sbXEYI3kxxO
	xl/0Sp8IfkUGvwZC03bM9ca0cmISfUdnElATdQFH4dr8K6/gZPl44gLaVDt9v9ObXvXOUpGP1783k
	UADx0TTQzAsAKiWzCOYUe7rQJf3N8i8XYwEWkSbrvbZbSLIfR6jLJMU+pPkXCRSWxHOedZrAeC5BV
	3+GDnxFOOhZ/blH6FoJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTqg-00000000DCq-2tGo;
	Mon, 12 Aug 2024 12:08:30 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93] helo=mx07-00178001.pphosted.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdTpV-00000000CvW-0g5Z;
	Mon, 12 Aug 2024 12:07:19 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 47C8FgK5013752;
	Mon, 12 Aug 2024 14:07:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=selector1; bh=
	pTeACQH8vrLikG5sj1qKxusUbNQeLUfJGs6z7rZ2oF8=; b=vTEqNrP0pyN69X4I
	zu3CrnAcPbrsB4fPVmTvIJtp9+gGFsrX71mAk7wf/wBlvmjakdBnV6/7z1sjTYlW
	nh6ROQeQ9o+Z52yRt+WkFSzlIaLUqBCZdwBAy2Md/B8AxjyW1+tpkLpruR4wgilp
	LSz9ZsTiR+sUrdwL/VFZn7LfD3P+k3sXSV558PsyG/wlgQk2vaQ2lAYz4Eqb1Pdm
	rksuJ06Xo6abVHrqQkfAQkWZeR0qJNU+aSEhfEo2cdcMCquO3972CEZiEkd4/QXz
	O+XDhz7TdcJxLvmub/2/MPU82fbo0tCtSer2QkzFU9+2jyjlBlgtnTCazqdrul9E
	9lGOKQ==
Received: from beta.dmz-ap.st.com (beta.dmz-ap.st.com [138.198.100.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 40x170x9qp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 12 Aug 2024 14:07:10 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-ap.st.com (STMicroelectronics) with ESMTP id C654240047;
	Mon, 12 Aug 2024 14:07:06 +0200 (CEST)
Received: from Webmail-eu.st.com (shfdag1node3.st.com [10.75.129.71])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 218AF25AF10;
	Mon, 12 Aug 2024 14:06:19 +0200 (CEST)
Received: from localhost (10.129.178.198) by SHFDAG1NODE3.st.com
 (10.75.129.71) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.37; Mon, 12 Aug
 2024 14:06:18 +0200
From: Christian Bruel <christian.bruel@foss.st.com>
To: <vkoul@kernel.org>, <kishon@kernel.org>, <robh@kernel.org>,
        <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@foss.st.com>,
        <p.zabel@pengutronix.de>
CC: <linux-phy@lists.infradead.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <fabrice.gasnier@foss.st.com>,
        Christian Bruel <christian.bruel@foss.st.com>
Subject: [PATCH 4/5] arm64: dts: st: Add combophy node on stm32mp251
Date: Mon, 12 Aug 2024 14:05:28 +0200
Message-ID: <20240812120529.3564390-5-christian.bruel@foss.st.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812120529.3564390-1-christian.bruel@foss.st.com>
References: <20240812120529.3564390-1-christian.bruel@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.178.198]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE3.st.com
 (10.75.129.71)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.28.16
 definitions=2024-08-12_02,2024-08-12_01,2024-05-17_01
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_050717_516886_DD0A671B 
X-CRM114-Status: GOOD (  11.51  )
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

Add support for COMBOPHY which is used either by the USB3 and PCIe
controller.
USB3 or PCIe mode is done with phy_set_mode().
PCIe internal reference clock can be generated from the internal clock
source or optionnaly from an external 100Mhz pad.

Signed-off-by: Christian Bruel <christian.bruel@foss.st.com>
---
 arch/arm64/boot/dts/st/stm32mp251.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/st/stm32mp251.dtsi b/arch/arm64/boot/dts/st/stm32mp251.dtsi
index 1167cf63d7e87..4b99fa7e8e7a9 100644
--- a/arch/arm64/boot/dts/st/stm32mp251.dtsi
+++ b/arch/arm64/boot/dts/st/stm32mp251.dtsi
@@ -7,6 +7,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/reset/st,stm32mp25-rcc.h>
 #include <dt-bindings/regulator/st,stm32mp25-regulator.h>
+#include <dt-bindings/phy/phy.h>
 
 / {
 	#address-cells = <2>;
@@ -518,6 +519,22 @@ i2c8: i2c@46040000 {
 				status = "disabled";
 			};
 
+			combophy: phy@480c0000 {
+				compatible = "st,stm32mp25-combophy";
+				reg = <0x480c0000 0x1000>;
+				#phy-cells = <1>;
+				clocks = <&rcc CK_BUS_USB3PCIEPHY>, <&rcc CK_KER_USB3PCIEPHY>;
+				clock-names = "apb-clk", "ker-clk";
+				resets = <&rcc USB3PCIEPHY_R>;
+				reset-names = "phy-rst";
+				st,syscfg = <&syscfg>;
+				access-controllers = <&rifsc 67>;
+				power-domains = <&CLUSTER_PD>;
+				wakeup-source;
+				interrupts-extended = <&exti1 45 IRQ_TYPE_EDGE_FALLING>;
+				status = "disabled";
+			};
+
 			sdmmc1: mmc@48220000 {
 				compatible = "st,stm32mp25-sdmmc2", "arm,pl18x", "arm,primecell";
 				arm,primecell-periphid = <0x00353180>;
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
