Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67715C77B70
	for <linux-phy@archiver.kernel.org>; Thu,  6 Apr 2023 01:52:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNZnWpoppdX9B0TCapBB7Xqphnts84eq1WkjunURx0A=; b=1FZQ7RRXNkm9sH
	4io6nGqzJLF5tDXLoobBPxa2a5Nu9gnTxmFCSadlEqvHvJjo06slUCIF62fursj1Ej2uXaTYF84LB
	+WJLLxK7x9Z9mYwkLfYbErcRI0WHfO/ju0i3B5z2HnOyg7KAyPNMhsbJ62a8MNGgqkr7DHAqlqMOj
	fFj+PpfnbvzE1OUOvLr8Zpjand3yzycoeEwiPDOoRPUhdMQ45JJbuhqp/RR+tBKLSt4sLm+V8XSqm
	tnEjVMnxdchQUrhLtLq0wm2NoNZuQD60RCwWuGcwgjkQGuGnLnmyOwcliYPZI3DSjSqT3pwE7jXiN
	QqcBByN2gP3pjDzO/IGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkEo4-00650i-0C;
	Thu, 06 Apr 2023 01:52:56 +0000
Received: from ex01.ufhost.com ([61.152.239.75])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkEo0-0064uu-1p;
	Thu, 06 Apr 2023 01:52:54 +0000
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by ex01.ufhost.com (Postfix) with ESMTP id AE94F24E053;
	Thu,  6 Apr 2023 09:52:20 +0800 (CST)
Received: from EXMBX171.cuchost.com (172.16.6.91) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 6 Apr
 2023 09:52:20 +0800
Received: from ubuntu.localdomain (183.27.97.179) by EXMBX171.cuchost.com
 (172.16.6.91) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 6 Apr
 2023 09:52:19 +0800
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
	"Minda Chen" <minda.chen@starfivetech.com>, Mason Huo
	<mason.huo@starfivetech.com>
Subject: [PATCH v4 1/7] dt-bindings: phy: Add StarFive JH7110 USB document
Date: Thu, 6 Apr 2023 09:52:10 +0800
Message-ID: <20230406015216.27034-2-minda.chen@starfivetech.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20230406015216.27034-1-minda.chen@starfivetech.com>
References: <20230406015216.27034-1-minda.chen@starfivetech.com>
MIME-Version: 1.0
X-Originating-IP: [183.27.97.179]
X-ClientProxiedBy: EXCAS066.cuchost.com (172.16.6.26) To EXMBX171.cuchost.com
 (172.16.6.91)
X-YovoleRuleAgent: yovoleflag
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_185252_795512_3A2FE303 
X-CRM114-Status: GOOD (  11.93  )
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

Add StarFive JH7110 SoC USB 2.0 PHY dt-binding.

Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
---
 .../bindings/phy/starfive,jh7110-usb-phy.yaml | 50 +++++++++++++++++++
 1 file changed, 50 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml

diff --git a/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
new file mode 100644
index 000000000000..80604dfe01f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/starfive,jh7110-usb-phy.yaml
@@ -0,0 +1,50 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/starfive,jh7110-usb-phy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: StarFive USB 2.0 PHY
+
+maintainers:
+  - Minda Chen <minda.chen@starfivetech.com>
+
+properties:
+  compatible:
+    const: starfive,jh7110-usb-phy
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
+  - clocks
+  - clock-names
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
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
