Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DD421C6FD1D
	for <linux-phy@archiver.kernel.org>; Wed, 15 Mar 2023 10:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lQz0mIaIWcS9tEID8Chwrd88aRykdPCuBsU2VSUv8oc=; b=RuioSJ3ozPTkua
	pLcAuRSdqM4p+Vk22iZy3+tgB+SDg39SmAnFeoHKuPQ8z8F3m6rueOFTXFdqAjdAGt541ONd31fVf
	P9XqiT0+35S4ocucjm/Tr723lmlHn/jFK+9eT9ixdqxqzqFoMOp0WA7FbdOitl8HyfolLxZZCiTH4
	VtBGh9HwyibF+r9i6C110YoKiZ3CN4UP7xzGjBrB6DIMr+AbGDfxTCDdAtU4xZYP5Ucss/55mYaD6
	Nc8uMVG4OR/AgpjN4msQ1dVtJ4QQB3Hs2O+1kMdyuz4jvQ43OnhrjEZY3dYHTnH4vsERhxSlwU122
	yoMvZIT3frZCuSKUdrXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcOce-00D5x9-0v;
	Wed, 15 Mar 2023 10:44:44 +0000
Received: from fd01.gateway.ufhost.com ([61.152.239.71])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcOcY-00D5rD-1i;
	Wed, 15 Mar 2023 10:44:41 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 90C4E24E361;
	Wed, 15 Mar 2023 18:44:15 +0800 (CST)
Received: from EXMBX071.cuchost.com (172.16.6.81) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 18:44:15 +0800
Received: from ubuntu.localdomain (113.72.145.194) by EXMBX071.cuchost.com
 (172.16.6.81) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Wed, 15 Mar
 2023 18:44:14 +0800
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
Subject: [PATCH v3 1/5] dt-bindings: phy: Add StarFive JH7110 USB/PCIe document
Date: Wed, 15 Mar 2023 18:44:07 +0800
Message-ID: <20230315104411.73614-2-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230315104411.73614-1-minda.chen@starfivetech.com>
References: <20230315104411.73614-1-minda.chen@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [113.72.145.194]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX071.cuchost.com
 (172.16.6.81)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_034438_883690_29767F24 
X-CRM114-Status: GOOD (  12.76  )
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

Add StarFive JH7110 SoC USB 2.0/3.0 and PCIe 2.0 PHY dt-binding.
PCIe 2.0 phy can use as USB 3.0 PHY.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 .../phy/starfive,jh7110-usb-pcie-phy.yaml     | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-pcie-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-pcie-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-pcie-phy.yaml
new file mode 100644
index 000000000000..aa1c3fe93100
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-pcie-phy.yaml
@@ -0,0 +1,62 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-usb-pcie-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive USB 2.0 and PCIe 2.0 PHY
+
+maintainers:
+  - Minda Chen <minda.chen@starfivetech.com>
+
+properties:
+  compatible:
+    enum:
+      - starfive,jh7110-usb-phy
+      - starfive,jh7110-pcie-phy
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  clocks:
+    items:
+      - description: usb 125m clock
+      - description: app 125m clock
+
+  clock-names:
+    items:
+      - const: 125m
+      - const: app_125
+
+required:
+  - compatible
+  - reg
+  - "#phy-cells"
+
+additionalProperties: false
+
+examples:
+  - |
+    phy@10200000 {
+      compatible = "starfive,jh7110-usb-phy";
+      reg = <0x10200000 0x10000>;
+      clocks = <&syscrg 95>,
+               <&stgcrg 6>;
+      clock-names = "125m", "app_125";
+      #phy-cells = <0>;
+    };
+
+    phy@10210000 {
+      compatible = "starfive,jh7110-pcie-phy";
+      reg = <0x10210000 0x10000>;
+      #phy-cells = <0>;
+    };
+
+    phy@10220000 {
+      compatible = "starfive,jh7110-pcie-phy";
+      reg = <0x10220000 0x10000>;
+      #phy-cells = <0>;
+    };
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
