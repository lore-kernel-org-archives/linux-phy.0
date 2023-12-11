Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1ACE3C10DC3
	for <linux-phy@archiver.kernel.org>; Mon, 11 Dec 2023 18:33:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gUZKEweRAAnFONtIzAVI/vOAKYSJgAU1z5HfM5LKk4o=; b=BTRqAFZAnZCJMY
	3+PilqVyGiXheR4Dk8lCuXExqLch2BOwWfh+WKNxTpEiIzCNwwW8swruzoABzeVJ7rX8p8wJUKM5u
	DYEOw/VQQ/wIERsni/FK3uhZ8dbU9hPgDvFkbQqC6PpyTQEZWcSDhy/hBh4bg+XWfmO1ntdGDtkH3
	xhQD3jiwbin/vtxo5d++rypa3ePWfrBUu/ti2g1PbtWORBTvmwG8NjSN6wzXiTJ7UseoIpxlQfstg
	Vvhs0Qi7pbtBiYmi8lRKSF8sIMqmNtG33w9NfjrPCWjyKRwIGN4Jk0ZRipdDOWGhTXF28PmzKJuQp
	M8NpX5ET8D/a+v4Ac/Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl5v-006xPC-1g;
	Mon, 11 Dec 2023 18:33:31 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl5f-006xBt-0u;
	Mon, 11 Dec 2023 18:33:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:Content-Transfer-Encoding
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=Yx/iN2e/UUXXv4odNw1PrUQv1/sBds6u8ptetj9Y7lY=; b=AelzUHQu07loQVZYhclZslJGoh
	Ggac28Ac9anYjsEYX9tE+pMGtrxM7ouPmHI76LNtnOSmw3f5bSQp5C9zUFuRRXJsjiwev9IDqkysJ
	UZMki8ubneIv/nLsjDK80ixuLtL35tdijvwOVIUCheTtSfepBWfd+TpRHPk5aon+5MvApFx7qCxmu
	I6g6adG5NavJ/MOrJsDQaEUQu6q9ImbqjRckiYj/zaDuN465Hg01N3U9iT+CbasHx/jTgeubipyx/
	Rs2aSn6sU8OE7ABHxxPF/v33mcTVJ99EoCaftIQ3+jGGaKT279/13ZpVpL41XtCV3sVLu0gGYP7hM
	XCsxssFA==;
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rCl5b-008AuL-27;
	Mon, 11 Dec 2023 18:33:14 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3BBBp5CV026654;
	Mon, 11 Dec 2023 19:32:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=Yx/iN2e/UUXXv4odNw1PrUQv1/sBds6u8ptetj9Y7lY=; b=j+
	OG/A9I1IKBdAWxX2NrSkvaZTb92O6JLyMzrMTQUqCQnjr4ZH5QUV1ST7sgq2eVaZ
	8yLxSMwXjiWfDwVMOBSIarCAVDoayeN5uhWb66D8oprFEuifzSTIljZBFQvx5XZF
	B0EVyYVG4PX3RpokIQf5bkCIm0sNIUnnbax8zRLee3Op9851xw2qoqjff13jDu2Z
	2pF644bnjtY4/UVxd8w/6e5z/5hsd0Xxjfxfzfw4g6CcBiO1CzNblb9Xeo5IdydB
	dpVPTdV7LOumlYDNe+DIZxVvsp4TTHbVF3LEsZkAiSH11Yel2u8xceYUlMAdPBvX
	uYkrZqmJxVZtUcC/I8DA==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3uvgf1g0s5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 11 Dec 2023 19:32:42 +0100 (CET)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F321210005C;
	Mon, 11 Dec 2023 19:32:41 +0100 (CET)
Received: from Webmail-eu.st.com (shfdag1node1.st.com [10.75.129.69])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E2DBB23BE03;
	Mon, 11 Dec 2023 19:32:41 +0100 (CET)
Received: from localhost (10.252.9.5) by SHFDAG1NODE1.st.com (10.75.129.69)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.27; Mon, 11 Dec
 2023 19:32:41 +0100
From: Gatien Chevallier <gatien.chevallier@foss.st.com>
To: <Oleksii_Moisieiev@epam.com>, <gregkh@linuxfoundation.org>,
        <herbert@gondor.apana.org.au>, <davem@davemloft.net>,
        <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
        <conor+dt@kernel.org>, <alexandre.torgue@foss.st.com>,
        <vkoul@kernel.org>, <jic23@kernel.org>, <olivier.moysan@foss.st.com>,
        <arnaud.pouliquen@foss.st.com>, <mchehab@kernel.org>,
        <fabrice.gasnier@foss.st.com>, <andi.shyti@kernel.org>,
        <ulf.hansson@linaro.org>, <edumazet@google.com>, <kuba@kernel.org>,
        <pabeni@redhat.com>, <hugues.fruchet@foss.st.com>, <lee@kernel.org>,
        <will@kernel.org>, <catalin.marinas@arm.com>, <arnd@kernel.org>,
        <richardcochran@gmail.com>, Frank Rowand <frowand.list@gmail.com>,
        <peng.fan@oss.nxp.com>, <lars@metafoo.de>, <rcsekar@samsung.com>,
        <wg@grandegger.com>, <mkl@pengutronix.de>
CC: <linux-crypto@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <dmaengine@vger.kernel.org>, <linux-i2c@vger.kernel.org>,
        <linux-iio@vger.kernel.org>, <alsa-devel@alsa-project.org>,
        <linux-media@vger.kernel.org>, <linux-mmc@vger.kernel.org>,
        <netdev@vger.kernel.org>, <linux-phy@lists.infradead.org>,
        <linux-serial@vger.kernel.org>, <linux-spi@vger.kernel.org>,
        <linux-usb@vger.kernel.org>,
        Gatien Chevallier
	<gatien.chevallier@foss.st.com>
Subject: [PATCH v7 04/13] dt-bindings: bus: document ETZPC
Date: Mon, 11 Dec 2023 19:30:35 +0100
Message-ID: <20231211183044.808204-5-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231211183044.808204-1-gatien.chevallier@foss.st.com>
References: <20231211183044.808204-1-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.252.9.5]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To SHFDAG1NODE1.st.com
 (10.75.129.69)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.997,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-12-11_08,2023-12-07_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_183311_900339_F2F6599B 
X-CRM114-Status: GOOD (  13.27  )
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

Document ETZPC (Extended TrustZone protection controller). ETZPC is a
firewall controller.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V6:
    	- Renamed access-controller to access-controllers
    	- Removal of access-control-provider property
    	- Removal of access-controller and access-controller-names
    	  declaration in the patternProperties field. Add
    	  additionalProperties: true in this field.

Changes in V5:
	- Renamed feature-domain* to access-control*

Changes in V2:
	- Corrected errors highlighted by Rob's robot
	- No longer define the maxItems for the "feature-domains"
	  property
	- Fix example (node name, status)
	- Declare "feature-domain-names" as an optional
	  property for child nodes
	- Fix description of "feature-domains" property
	- Reordered the properties so it matches ETZPC
	- Add missing "feature-domain-controller" property

 .../bindings/bus/st,stm32-etzpc.yaml          | 87 +++++++++++++++++++
 1 file changed, 87 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml

diff --git a/Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml b/Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml
new file mode 100644
index 000000000000..9ca0ad39bc19
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/st,stm32-etzpc.yaml
@@ -0,0 +1,87 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/st,stm32-etzpc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STM32 Extended TrustZone protection controller
+
+description: |
+  The ETZPC configures TrustZone security in a SoC having bus masters and
+  devices with programmable-security attributes (securable resources).
+
+maintainers:
+  - Gatien Chevallier <gatien.chevallier@foss.st.com>
+
+properties:
+  compatible:
+    contains:
+      const: st,stm32-etzpc
+
+  reg:
+    maxItems: 1
+
+  "#address-cells":
+    const: 1
+
+  "#size-cells":
+    const: 1
+
+  ranges: true
+
+  "#access-controller-cells":
+    const: 1
+    description:
+      Contains the firewall ID associated to the peripheral.
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    description: Peripherals
+    type: object
+
+    additionalProperties: true
+
+    required:
+      - access-controllers
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - "#access-controller-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    // In this example, the usart2 device refers to rifsc as its access
+    // controller.
+    // Access rights are verified before creating devices.
+
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+    #include <dt-bindings/clock/stm32mp13-clks.h>
+    #include <dt-bindings/reset/stm32mp13-resets.h>
+
+    etzpc: bus@5c007000 {
+        compatible = "st,stm32-etzpc";
+        reg = <0x5c007000 0x400>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        #access-controller-cells = <1>;
+        ranges;
+
+        usart2: serial@4c001000 {
+            compatible = "st,stm32h7-uart";
+            reg = <0x4c001000 0x400>;
+            interrupts-extended = <&exti 27 IRQ_TYPE_LEVEL_HIGH>;
+            clocks = <&rcc USART2_K>;
+            resets = <&rcc USART2_R>;
+            wakeup-source;
+            dmas = <&dmamux1 43 0x400 0x5>,
+                    <&dmamux1 44 0x400 0x1>;
+            dma-names = "rx", "tx";
+            access-controllers = <&etzpc 17>;
+        };
+    };
-- 
2.35.3


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
