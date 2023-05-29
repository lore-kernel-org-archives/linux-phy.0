Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0F6BC77B7E
	for <linux-phy@archiver.kernel.org>; Mon, 29 May 2023 12:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vc5g5QlQbEm0isJO3WyO1oS+25JRUoOYPrJWgBFknC8=; b=w0JT8kxfcfLZNx
	aPtYCmqImTszqDkaeyoZ6ocsJiqywnVm4XEkhwTW5/07raTAoHgBfgZMarxaXQibhmDCVKqA852sJ
	Gm5OeqnreosX9BfeBJgkK42GFJTalyjTLmCgf82h+pk0neCfq025+4kKRvrlq23V7ulMgXdVsW8+Z
	hZdceh7T0vcVWx/wh0vMYgdgXWSrNkNgImw+ylJwnLBFeqP51v2DxU2B/+eYk5ItOQXRlgJ9MdFHe
	mSLaVNPNFfHk/LB3NTgDSlnjCRZVNsFl5/GIrRjnH0K21zdO4JRDxsnELGdOopusUwDalkhXLpBqP
	JsJAt6akyT6pWo3KN6Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3bnE-00AORy-1P;
	Mon, 29 May 2023 12:16:08 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3bnA-00AOJD-38;
	Mon, 29 May 2023 12:16:06 +0000
Received: from EXMBX166.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX166", Issuer "EXMBX166" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 407077FFC;
	Mon, 29 May 2023 20:15:07 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX166.cuchost.com
 (172.16.6.76) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 29 May
 2023 20:15:07 +0800
Received: from ubuntu.localdomain (113.72.147.198) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Mon, 29 May
 2023 20:15:06 +0800
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	Philipp Zabel <p.zabel@pengutronix.de>
CC: Jack Zhu <jack.zhu@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>
Subject: [PATCH v5 1/3] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Date: Mon, 29 May 2023 05:15:01 -0700
Message-ID: <20230529121503.3544-2-changhuang.liang@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230529121503.3544-1-changhuang.liang@starfivetech.com>
References: <20230529121503.3544-1-changhuang.liang@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [113.72.147.198]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230529_051605_370240_9B06A186 
X-CRM114-Status: GOOD (  12.46  )
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

StarFive SoCs like the jh7110 use a MIPI D-PHY RX controller based on
a M31 IP. Add a binding for it.

Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>
---
 .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
new file mode 100644
index 000000000000..46fd370188e8
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-rx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive SoC MIPI D-PHY Rx Controller
+
+maintainers:
+  - Jack Zhu <jack.zhu@starfivetech.com>
+  - Changhuang Liang <changhuang.liang@starfivetech.com>
+
+description:
+  The StarFive SoC uses the MIPI CSI D-PHY based on M31 IP to transfer
+  CSI camera data.
+
+properties:
+  compatible:
+    const: starfive,jh7110-dphy-rx
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: config clock
+      - description: reference clock
+      - description: escape mode transmit clock
+
+  clock-names:
+    items:
+      - const: cfg
+      - const: ref
+      - const: tx
+
+  resets:
+    items:
+      - description: DPHY_HW reset
+      - description: DPHY_B09_ALWAYS_ON reset
+
+  power-domains:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+required:
+  - compatible
+  - reg
+  - clocks
+  - clock-names
+  - resets
+  - power-domains
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@19820000 {
+      compatible = "starfive,jh7110-dphy-rx";
+      reg = <0x19820000 0x10000>;
+      clocks = <&ispcrg 3>,
+               <&ispcrg 4>,
+               <&ispcrg 5>;
+      clock-names = "cfg", "ref", "tx";
+      resets = <&ispcrg 2>,
+               <&ispcrg 3>;
+      power-domains = <&dphy_pwrc 1>;
+      #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
