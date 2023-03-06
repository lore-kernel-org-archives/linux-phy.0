Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CE11DC61DA4
	for <linux-phy@archiver.kernel.org>; Mon,  6 Mar 2023 09:53:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=js8OCGcImK8oE6ceOjULR5zBernOEZ2CAbsbskxq+9g=; b=GDczvXAfrbK/Ke
	7E3ap/J/Y8q2ImK0ELua7irLx5jx/XDsVYWiJ6aNz/1KSzfD1QSL06bjHG/5CNO4upZvA6X3XVQi2
	UcHhE9Ps/j/8BYmBgR+sP7Ym9bKB/wVoeeVDsnQiu14Qm388gt0y0gw5vb/T3tx0OcGxbM9VbB/lQ
	X0VJWRBPdXQlsR9905a377FkA6yOD+4eGxEOLs38d+8VKdPeOif45kMkol5EqGbR74Gqad1W9uDtp
	RPpWr3qlw2nDG1VBF5zryHzl1dJpvo4QZNmQ576gHfKm5J+L0RSB9U8xZXXqhia+G/n08KKDnY8If
	QyTotLP+NDIT6aA0pD7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ7X9-00CB45-8Y; Mon, 06 Mar 2023 09:53:31 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZ7X4-00CAz4-Qn
	for linux-phy@lists.infradead.org; Mon, 06 Mar 2023 09:53:29 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id BCDE024E2EE;
	Mon,  6 Mar 2023 17:52:59 +0800 (CST)
Received: from EXMBX071.cuchost.com (172.16.6.81) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 6 Mar
 2023 17:52:59 +0800
Received: from ubuntu.localdomain (183.27.97.46) by EXMBX071.cuchost.com
 (172.16.6.81) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 6 Mar
 2023 17:52:59 +0800
From: Minda Chen <minda.chen@starfivetech.com>
To: Emil Renner Berthing <kernel@esmil.dk>, Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
CC: <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, Minda Chen <minda.chen@starfivetech.com>
Subject: [PATCH 1/3] dt-bindings: phy: Add StarFive JH7110 USB dt-binding
Date: Mon, 6 Mar 2023 17:52:57 +0800
Message-ID: <20230306095257.25957-1-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [183.27.97.46]
X-ClientProxiedBy: EXCAS064.cuchost.com (172.16.6.24) To EXMBX071.cuchost.com
 (172.16.6.81)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230306_015327_158480_91C2C436 
X-CRM114-Status: GOOD (  12.59  )
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

Add StarFive JH7110 SoC USB 3.0 phy dt-binding.
USB controller is cadence USB 3.0 IP.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 .../bindings/phy/starfive,jh7110-usb-phy.yaml | 116 ++++++++++++++++++
 1 file changed, 116 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
new file mode 100644
index 000000000000..05b6c47d4a86
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
@@ -0,0 +1,116 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive USB 2.0 and 3.0 PHY
+
+maintainers:
+  - Minda Chen<minda.chen@starfivetech.com>
+
+properties:
+  compatible:
+    items:
+      - const: starfive,jh7110-usb-phy
+
+  reg:
+    maxItems: 2
+
+  reg-names:
+    items:
+      - const: usb3
+      - const: usb2
+
+  clocks:
+    maxItems: 8
+
+  clock-names:
+    items:
+       - const: usb_125m
+       - const: usb0_app_125
+       - const: usb0_lpm
+       - const: usb0_stb
+       - const: usb0_apb
+       - const: usb0_axi
+       - const: usb0_utmi_apb
+
+  resets:
+    items:
+       - description: USB0_PWRUP reset
+       - description: USB0_APB reset
+       - description: USB0_AXI reset
+       - description: USB0_UTMI_APB reset
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
+      items:
+        - description: phandle to System Register Controller stg_syscon node.
+        - description: offset of STG_SYSCONSAIF__SYSCFG register for USB.
+    description:
+      The phandle to System Register Controller syscon node and the offset
+      of STG_SYSCONSAIF__SYSCFG register for USB. Total 4 regsisters offset
+      for USB.
+
+  dr_mode:
+    description: PHY mode.
+    enum:
+      - host
+      - peripheral
+      - otg
+
+  starfive,usb2-only
+    description: Set USB using usb 2.0 phy. Supprt USB 2.0 only
+
+  '#phy-cells':
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - reg-names
+  - clocks
+  - clock-names
+  - reset
+  - starfive,sys-syscon
+  - starfive,stg-syscon
+  - dr_mode
+  - '#phy-cells'
+
+additionalProperties: false
+
+examples:
+  - |
+    usbphy@10200000 {
+      compatible = "starfive,jh7110-usb";
+      reg = <0x0 0x10210000 0x0 0x1000>,
+            <0x0 0x10200000 0x0 0x1000>;
+      reg-names = "usb3", "usb2";
+      clocks = <&syscrg 95>,
+               <&stgcrg 6>,
+               <&stgcrg 4>,
+               <&stgcrg 5>,
+               <&stgcrg 1>,
+               <&stgcrg 3>,
+               <&stgcrg 2>;
+      clock-names = "usb_125m", "usb0_app_125", "usb0_lpm",
+                    "usb0_stb", "usb0_apb", "usb0_axi", "usb0_utmi_apb";
+      resets = <&stgcrg 10>,
+               <&stgcrg 8>,
+               <&stgcrg 7>,
+               <&stgcrg 9>;
+      starfive,stg-syscon = <&stg_syscon 0x4 0xc4 0x148 0x1f4>;
+      starfive,sys-syscon = <&sys_syscon 0x18>;
+      dr_mode = "host";
+      #phy-cells = <0>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
