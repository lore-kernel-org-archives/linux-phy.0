Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1354DC001DB
	for <linux-phy@archiver.kernel.org>; Fri, 11 Aug 2023 10:08:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iaDdvsJgyB+dPeiQlp2iOYcCpEvD4ba6dIdNR0giGL8=; b=3a2zjVcdfEHzHa
	3J5bvkgmZl0K5yd8wdsutos2+dFFShivzQsXty4Ba8oi2FnCUIAQU9eBZQgvNzu1p+mdQlL3b4/Dh
	j16tyr9Mv7hnBwbf1weU2c1rd0n40lEVlxSDvk41g8jGzeGxkFRHE1tWERGLRPT9OL60VbpgO448v
	4JZtvfGiZh654QajIgt6MPLrYu3xDd+HJwbOgTFoWdiufq+XS+q9f7FQ3yFFnYbC60ifbyRfj26va
	Pvg4a2B6SNEcvC9BK85hRspfNmRQm+AgVdHv7EDo0Ey6mPa9vtyDnmOTG4TjvaPQE7uZTqjGzXw2O
	mHb5+XzOtvY5jeVHtcaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUP4H-00A5Xr-2Y;
	Fri, 11 Aug 2023 10:08:29 +0000
Received: from mx07-00178001.pphosted.com ([185.132.182.106])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUP4C-00A5Va-2A;
	Fri, 11 Aug 2023 10:08:27 +0000
Received: from pps.filterd (m0241204.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 37B72jef008118;
	Fri, 11 Aug 2023 12:07:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=foss.st.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	selector1; bh=+UNuTiEun7FhBdsfcJqf/qnk8DNj8pRVH/wzdvv/e68=; b=LU
	6RvEGiWjfTS5SQ1hzOvgyC9i3pIRfWwyGeWwk6cs17GkbGoMqtnrFTs/Gkcs7hB7
	RJGWWjhcGTLUj3aZ7Jd/bRq9Hg7CZlpiMS80w58RL8hvUvLrtTpYgu6HtCWCWD/J
	b9c27Rsix2P8RHB8sMHVQ+tJEo0vbWMK/5pBQwAnY43y49xhAH2x94MWvGIlv8zp
	euHeaPGsZaKT/cgERxmR8hE5/BP2KMo6RWkXGlynlmsvo0RATv4tvR1TSuhDL3si
	+vx/FnRdjpoL5NbKdyh5ydF4VnV6JdaxTK+7ZjnCdPGkq0CG3crrpqYceQX8327c
	RlcnomF/M/DeFvVvzMow==
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com (PPS) with ESMTPS id 3sd9jrtyf3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 11 Aug 2023 12:07:44 +0200 (MEST)
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6065B100058;
	Fri, 11 Aug 2023 12:07:43 +0200 (CEST)
Received: from Webmail-eu.st.com (eqndag1node4.st.com [10.75.129.133])
	by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 563362138F9;
	Fri, 11 Aug 2023 12:07:43 +0200 (CEST)
Received: from localhost (10.201.21.121) by EQNDAG1NODE4.st.com
 (10.75.129.133) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21; Fri, 11 Aug
 2023 12:07:42 +0200
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
        <peng.fan@oss.nxp.com>
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
Subject: [PATCH v4 03/11] dt-bindings: bus: document RIFSC
Date: Fri, 11 Aug 2023 12:07:23 +0200
Message-ID: <20230811100731.108145-4-gatien.chevallier@foss.st.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230811100731.108145-1-gatien.chevallier@foss.st.com>
References: <20230811100731.108145-1-gatien.chevallier@foss.st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.21.121]
X-ClientProxiedBy: EQNCAS1NODE4.st.com (10.75.129.82) To EQNDAG1NODE4.st.com
 (10.75.129.133)
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.267,Aquarius:18.0.957,Hydra:6.0.591,FMLib:17.11.176.26
 definitions=2023-08-10_20,2023-08-10_01,2023-05-22_02
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230811_030825_041023_24856446 
X-CRM114-Status: GOOD (  15.36  )
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

Document RIFSC (RIF security controller). RIFSC is a firewall controller
composed of different kinds of hardware resources.

Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
---

Changes in V2: 
	- Corrected errors highlighted by Rob's robot
	- No longer define the maxItems for the "feature-domains"
	  property
	- Fix example (node name, status)
	- Declare "feature-domain-names" as an optional
	  property for child nodes
	- Fix description of "feature-domains" property

 .../bindings/bus/st,stm32mp25-rifsc.yaml      | 105 ++++++++++++++++++
 1 file changed, 105 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml

diff --git a/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml b/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml
new file mode 100644
index 000000000000..7aeb38296616
--- /dev/null
+++ b/Documentation/devicetree/bindings/bus/st,stm32mp25-rifsc.yaml
@@ -0,0 +1,105 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/bus/st,stm32mp25-rifsc.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: STM32 Resource isolation framework security controller
+
+maintainers:
+  - Gatien Chevallier <gatien.chevallier@foss.st.com>
+
+description: |
+  Resource isolation framework (RIF) is a comprehensive set of hardware blocks
+  designed to enforce and manage isolation of STM32 hardware resources like
+  memory and peripherals.
+
+  The RIFSC (RIF security controller) is composed of three sets of registers,
+  each managing a specific set of hardware resources:
+    - RISC registers associated with RISUP logic (resource isolation device unit
+      for peripherals), assign all non-RIF aware peripherals to zero, one or
+      any security domains (secure, privilege, compartment).
+    - RIMC registers: associated with RIMU logic (resource isolation master
+      unit), assign all non RIF-aware bus master to one security domain by
+      setting secure, privileged and compartment information on the system bus.
+      Alternatively, the RISUP logic controlling the device port access to a
+      peripheral can assign target bus attributes to this peripheral master port
+      (supported attribute: CID).
+    - RISC registers associated with RISAL logic (resource isolation device unit
+      for address space - Lite version), assign address space subregions to one
+      security domains (secure, privilege, compartment).
+
+properties:
+  compatible:
+    contains:
+      const: st,stm32mp25-rifsc
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
+  "#feature-domain-cells":
+    const: 1
+
+  feature-domain-controller: true
+
+patternProperties:
+  "^.*@[0-9a-f]+$":
+    description: Peripherals
+    type: object
+    properties:
+      feature-domains:
+        minItems: 1
+        description:
+          The phandle of the firewall controller of the peripheral and the
+          platform-specific firewall ID of the peripheral.
+
+      feature-domain-names:
+        minItems: 1
+
+    required:
+      - feature-domains
+
+required:
+  - compatible
+  - reg
+  - "#address-cells"
+  - "#size-cells"
+  - feature-domain-controller
+  - "#feature-domain-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    // In this example, the usart2 device refers to rifsc as its domain
+    // controller.
+    // Access rights are verified before creating devices.
+
+    #include <dt-bindings/interrupt-controller/arm-gic.h>
+
+    rifsc: bus@42080000 {
+        compatible = "st,stm32mp25-rifsc";
+        reg = <0x42080000 0x1000>;
+        #address-cells = <1>;
+        #size-cells = <1>;
+        feature-domain-controller;
+        #feature-domain-cells = <1>;
+        ranges;
+
+        usart2: serial@400e0000 {
+              compatible = "st,stm32h7-uart";
+              reg = <0x400e0000 0x400>;
+              interrupts = <GIC_SPI 115 IRQ_TYPE_LEVEL_HIGH>;
+              clocks = <&ck_flexgen_08>;
+              feature-domains = <&rifsc 32>;
+        };
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
