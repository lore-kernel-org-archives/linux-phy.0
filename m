Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3C828C61DA4
	for <linux-phy@archiver.kernel.org>; Wed, 15 Mar 2023 10:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a8vATJ7v0U6fDlPiYrb/qVgGnTrdRGg70iBK7LHmYNg=; b=ExznMeqv+W20Ex
	jS2PP2DCuG98m8oUXtHN8A5FZRr2hQHtjQt4GLsa7kvSrWW9FMkOlIV0RXEFQgDmV93WkAqsTRVgR
	Rqp2QOX91IyjcARKHtbNhPVStT45RudxmQlmBgzvo6dLxsL+m1spFcyl1YPRVHN9LO09854QbjqZg
	er1O96ZTxB79QsrAUMS7yHgEwNKR62KdU3Uw563JFdriaWpIirmF5idsQ4G1mtxG9wA18tc7yOlVm
	pKEtk6qn/h0EVqcMRy8GswHJVuZgJDNj0MzlRuPb26hTbCiHA1uW9T9ummvmIP9xtar3oEYgtCVsy
	P/VJ7o8HQSk2V2O1wxww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcOcU-00D5tE-2X;
	Wed, 15 Mar 2023 10:44:34 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcOcQ-00D5qr-2Q;
	Wed, 15 Mar 2023 10:44:33 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id 5B4BD24E1ED;
	Wed, 15 Mar 2023 18:44:17 +0800 (CST)
Received: from EXMBX071.cuchost.com (172.16.6.81) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 18:44:17 +0800
Received: from ubuntu.localdomain (113.72.145.194) by EXMBX071.cuchost.com
 (172.16.6.81) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 18:44:16 +0800
From: Minda Chen <minda.chen@starfivetech.com>
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>, Conor Dooley
	<conor@kernel.org>, Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
	<kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Pawel Laszczak <pawell@cadence.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Peter Chen
	<peter.chen@kernel.org>, Roger Quadros <rogerq@kernel.org>, Philipp Zabel
	<p.zabel@pengutronix.de>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <linux-usb@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	"Minda Chen" <minda.chen@starfivetech.com>
Subject: [PATCH v3 3/5] dt-binding: Add JH7110 USB wrapper layer doc.
Date: Wed, 15 Mar 2023 18:44:09 +0800
Message-ID: <20230315104411.73614-4-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230315104411.73614-1-minda.chen@starfivetech.com>
References: <20230315104411.73614-1-minda.chen@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [113.72.145.194]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX071.cuchost.com
 (172.16.6.81)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_034431_129049_7BE2F2C7 
X-CRM114-Status: GOOD (  13.29  )
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

The dt-binding doc of Cadence USBSS-DRD controller wrapper
layer.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 .../bindings/usb/starfive,jh7110-usb.yaml     | 119 ++++++++++++++++++
 1 file changed, 119 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/usb/starfive,jh7110-usb.yaml

diff --git a/Documentation/devicetree/bindings/usb/starfive,jh7110-usb.yaml b/Documentation/devicetree/bindings/usb/starfive,jh7110-usb.yaml
new file mode 100644
index 000000000000..b1a8dc6d7b4b
--- /dev/null
+++ b/Documentation/devicetree/bindings/usb/starfive,jh7110-usb.yaml
@@ -0,0 +1,119 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/usb/starfive,jh7110-usb.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive JH7110 wrapper module for the Cadence USBSS-DRD controller
+
+maintainers:
+  - Minda Chen <minda.chen@starfivetech.com>
+
+properties:
+  compatible:
+    const: starfive,jh7110-usb
+
+  clocks:
+    items:
+      - description: lpm clock
+      - description: stb clock
+      - description: apb clock
+      - description: axi clock
+      - description: utmi apb clock
+
+  clock-names:
+    items:
+      - const: lpm
+      - const: stb
+      - const: apb
+      - const: axi
+      - const: utmi_apb
+
+  resets:
+    items:
+      - description: PWRUP reset
+      - description: APB reset
+      - description: AXI reset
+      - description: UTMI_APB reset
+
+  starfive,sys-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: phandle to System Register Controller sys_syscon node.
+        - description: offset of SYS_SYSCONSAIF__SYSCFG register for USB.
+    description:
+      The phandle to System Register Controller syscon node and the offset
+      of SYS_SYSCONSAIF__SYSCFG register for USB.
+
+  starfive,stg-syscon:
+    $ref: /schemas/types.yaml#/definitions/phandle-array
+    items:
+      items:
+        - description: phandle to System Register Controller stg_syscon node.
+        - description: register0 offset of STG_SYSCONSAIF__SYSCFG register for USB.
+        - description: register1 offset of STG_SYSCONSAIF__SYSCFG register for USB.
+        - description: register2 offset of STG_SYSCONSAIF__SYSCFG register for USB.
+        - description: register3 offset of STG_SYSCONSAIF__SYSCFG register for USB.
+    description:
+      The phandle to System Register Controller syscon node and the offset
+      of STG_SYSCONSAIF__SYSCFG register for USB. Total 4 regsisters offset
+      for USB.
+
+  "#address-cells":
+    maximum: 2
+
+  "#size-cells":
+    maximum: 2
+
+  ranges: true
+
+patternProperties:
+  "^usb@[0-9a-f]+$":
+    type: object
+
+required:
+  - compatible
+  - clocks
+  - clock-names
+  - resets
+  - starfive,sys-syscon
+  - starfive,stg-syscon
+  - "#address-cells"
+  - "#size-cells"
+  - ranges
+
+additionalProperties: false
+
+examples:
+  - |
+    usb@10100000 {
+      compatible = "starfive,jh7110-usb";
+      clocks = <&syscrg 4>,
+               <&stgcrg 5>,
+               <&stgcrg 1>,
+               <&stgcrg 3>,
+               <&stgcrg 2>;
+      clock-names = "lpm", "stb", "apb", "axi", "utmi_apb";
+      resets = <&stgcrg 10>,
+               <&stgcrg 8>,
+               <&stgcrg 7>,
+               <&stgcrg 9>;
+      starfive,stg-syscon = <&stg_syscon 0x4 0xc4 0x148 0x1f4>;
+      starfive,sys-syscon = <&sys_syscon 0x18>;
+      #address-cells = <1>;
+      #size-cells = <1>;
+      ranges = <0x0 0x10100000 0x100000>;
+
+      usb@0 {
+        compatible = "cdns,usb3";
+        reg = <0x0 0x10000>,
+              <0x10000 0x10000>,
+              <0x20000 0x10000>;
+        reg-names = "otg", "xhci", "dev";
+        interrupts = <100>, <108>, <110>;
+        interrupt-names = "host", "peripheral", "otg";
+        maximum-speed = "super-speed";
+        dr_mode = "host";
+      };
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
