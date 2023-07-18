Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12B2CEB64DA
	for <linux-phy@archiver.kernel.org>; Wed, 19 Jul 2023 06:24:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN1xcZNWyEdQojaiCUXdLI42tTgTunnlXaRhpC/cFW0=; b=nOrke9/nR8HfLP
	dS3N9KyB3+08FQZPvTFKe9prOqDUJT7Bi/E60Wa6oW2s4qnM4SiAKZXuYXbnpvj6U63+yruSa2quq
	pSpg7Dlw9qawWULYwz/hmlwQC5ba+Cz6BBecfA7mU0fxRyGmKRlENn+tILjRP0WijOD/+LD+CXkW3
	0OoOJ2EaKM6WO4OoIo0uTa6e7WTLSUjshctD6eLcDU/TF2iqE16ThHD7cO/RDTSu+Dcyjx079/7Yw
	HgGzjDKvCsYD1fKKJIy2Z2QdfeqsOSQ8WJwFLi94HU8q2dCGbhtTQ1+/Yvh0Jw5uGhMh953RVr7nU
	X3jc5z8bj9zu1F1XnrIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0bg-005htR-2O;
	Wed, 19 Jul 2023 06:24:16 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qM0bf-005hsZ-1t
	for linux-phy@bombadil.infradead.org;
	Wed, 19 Jul 2023 06:24:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=01tzCde4/42UbOPT7l/dzUSEK52EblpT9xG4sbDqJHQ=; b=L4v3sXdCpjS+dy/hnWGYMB2fiJ
	O7NbzJdV5IrCFeQYY1LnsfgSGEr56AAOAo98V5Z0lZ+6VOAeBbTygAGT0ilL8dZ0NQFeZIOIs8tMQ
	jxUTsnD8FVu/CPsc6isCcfEIMjgZ0eb+HYFdLy2dEWs/SRUec/mlsR4iVIc39u4ne/r3vgf29bCT5
	pgF3xJd5VMnSVz1RtHbugvENNd0zvg7Tb8BS7r5pPidRUTsF1fF08ZRtjcRA+SEtUIvJzycQRbrvO
	EpyoeDY7ROPGkxs+js7TuBf1OKrlxM1/R/gkvnHVxk7+U4pYLMS4EXZsRw2Eui0h2aoSSBgS72s9v
	9rmUT4ZQ==;
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by desiato.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qLepS-00BFeU-34
	for linux-phy@lists.infradead.org;
	Tue, 18 Jul 2023 07:09:06 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id DA3A524E2A5;
	Tue, 18 Jul 2023 15:08:05 +0800 (CST)
Received: from EXMBX062.cuchost.com (172.16.6.62) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 18 Jul
 2023 15:08:05 +0800
Received: from ubuntu.localdomain (113.72.147.86) by EXMBX062.cuchost.com
 (172.16.6.62) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Tue, 18 Jul
 2023 15:08:04 +0800
From: Changhuang Liang <changhuang.liang@starfivetech.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Roger Quadros <rogerq@kernel.org>
CC: Minda Chen <minda.chen@starfivetech.com>, Jack Zhu
	<jack.zhu@starfivetech.com>, Changhuang Liang
	<changhuang.liang@starfivetech.com>, <linux-phy@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH v7 1/2] dt-bindings: phy: Add starfive,jh7110-dphy-rx
Date: Tue, 18 Jul 2023 00:08:02 -0700
Message-ID: <20230718070803.16660-2-changhuang.liang@starfivetech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230718070803.16660-1-changhuang.liang@starfivetech.com>
References: <20230718070803.16660-1-changhuang.liang@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [113.72.147.86]
X-ClientProxiedBy: EXCAS062.cuchost.com (172.16.6.22) To EXMBX062.cuchost.com
 (172.16.6.62)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230718_080903_813629_884B09E6 
X-CRM114-Status: GOOD (  11.74  )
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
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/starfive,jh7110-dphy-rx.yaml | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
new file mode 100644
index 000000000000..7224cde6fce0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-dphy-rx.yaml
@@ -0,0 +1,71 @@
+# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-dphy-rx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive SoC JH7110 MIPI D-PHY Rx Controller
+
+maintainers:
+  - Jack Zhu <jack.zhu@starfivetech.com>
+  - Changhuang Liang <changhuang.liang@starfivetech.com>
+
+description:
+  StarFive SoCs contain a MIPI CSI D-PHY based on M31 IP, used to
+  transfer CSI camera data.
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
+      power-domains = <&aon_syscon 1>;
+      #phy-cells = <0>;
+    };
-- 
2.25.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
