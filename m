Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2C881C83F10
	for <linux-phy@archiver.kernel.org>; Wed,  9 Jul 2025 22:58:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdA/rdtj7uGG3YkZS2KHjLoR0j3Sm8K33A5RLcFsiFU=; b=n2pU+k92jGTaT2
	YQH0/7D3cAmGqJEcRtngGPCmzLuiIGvhJ8TFp8j0uOR885qZInodXn2I6VTOwsiESjrQ9H2josotR
	dxcXKlNRxh50tpBLJkizFb1ENzZ3gLCECxxf0Y/x0gdvFhcvcpUTK/eQM7XNXA6i2qbzZO7Cx0kX6
	kf6m+c7aT6qF58ij7AUA9CVyLH/sal7n5rlEaDyzVi34BGUB/eOz/QldS/KBH1cBt9VnZDkC1/LXi
	L6VcWW2RrUXg9Mz7Cf3/UwlYGACaQnNEjH3uOgqcJGga2sL2ApJr+VNeXY/LPlWSrjPxI5kFtVIlY
	LUufAPfhHkO2924Zkd4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZdk1-0000000ABhX-1qH7;
	Wed, 09 Jul 2025 22:58:17 +0000
Received: from smtp-fw-52004.amazon.com ([52.119.213.154])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZd6j-0000000A3mj-2sbt
	for linux-phy@lists.infradead.org;
	Wed, 09 Jul 2025 22:17:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=lab126.com; i=@lab126.com; q=dns/txt; s=amazoncorp2;
  t=1752099462; x=1783635462;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=6qq6tD8G2gJnKmNebl13VtAMiIeIIKd0RBrZrx89A3w=;
  b=Uypvsba88boMMo5MVD8O+YhyQHZxWgZrFBfzqGv1ylmyEceIqobhAzBA
   4rjY/SGvLhBLEQ/osCwhQOHxseub8dl1zmIQiv4Z9vo7MEv7Mbpq5uM2F
   iBxYE7YOyGwkz+vsZs2tS+Q7hiMSbItoBBYZcvfdrpMiVFB6oC+O/KiES
   ++IBIw4wuVS9MSsed7sz7itP2hIiq5H9kcZgiju/hrKU97fLTIyg+ITOW
   es43oqAsP71pkqHAPmXKyXZv5xTnu83gRbuAwJGnrc7ZzXWJGCE+n47OM
   tdC1CNXJLg5axIjKYgiCKjf9KjInyaRincIlnvn8zyfxJ15rQUf6064ne
   g==;
X-IronPort-AV: E=Sophos;i="6.16,299,1744070400"; 
   d="scan'208";a="316202464"
Received: from iad12-co-svc-p1-lb1-vlan2.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.43.8.2])
  by smtp-border-fw-52004.iad7.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Jul 2025 22:17:39 +0000
Received: from EX19MTAUWB002.ant.amazon.com [10.0.21.151:31037]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.38.16:2525] with esmtp (Farcaster)
 id d62a3060-98c9-4334-b974-36061ea67137; Wed, 9 Jul 2025 22:17:38 +0000 (UTC)
X-Farcaster-Flow-ID: d62a3060-98c9-4334-b974-36061ea67137
Received: from EX19D007UWB001.ant.amazon.com (10.13.138.75) by
 EX19MTAUWB002.ant.amazon.com (10.250.64.231) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Wed, 9 Jul 2025 22:17:38 +0000
Received: from u1cb251c9c70150.ant.amazon.com (10.68.99.17) by
 EX19D007UWB001.ant.amazon.com (10.13.138.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Wed, 9 Jul 2025 22:17:37 +0000
From: Karthik Poduval <kpoduval@lab126.com>
To: <jyxiong@amazon.com>, <miguel.lopes@synopsys.com>, <anishkmr@amazon.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>
CC: Karthik Poduval <kpoduval@lab126.com>
Subject: [PATCH 2/2] phy: dw-dphy-rx: Add dt bindings for Synopsys MIPI D-PHY RX
Date: Wed, 9 Jul 2025 15:17:24 -0700
Message-ID: <20250709221724.1276428-2-kpoduval@lab126.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250709221724.1276428-1-kpoduval@lab126.com>
References: <20250709221724.1276428-1-kpoduval@lab126.com>
MIME-Version: 1.0
X-Originating-IP: [10.68.99.17]
X-ClientProxiedBy: EX19D039UWA001.ant.amazon.com (10.13.139.110) To
 EX19D007UWB001.ant.amazon.com (10.13.138.75)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_151741_877883_36DACD71 
X-CRM114-Status: GOOD (  12.43  )
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

Add DT Bindings for Synopsys D-PHY RX, presently tested on version 1.2

Signed-off-by: Karthik Poduval <kpoduval@lab126.com>
---
 .../bindings/phy/snps,dw-dphy-rx.yaml         | 44 +++++++++++++++++++
 MAINTAINERS                                   |  7 +++
 2 files changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml

diff --git a/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
new file mode 100644
index 000000000000..e986b2872e1c
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/snps,mipi-dphy-rx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Synopsys Designware MIPI D-PHY RX
+
+maintainers:
+  - Karthik Poduval <kpoduval@lab126.com>
+  - Jason Xiong <jyxiong@amazon.com>
+  - Miguel Lopes <miguel.lopes@synopsys.com
+
+description: |
+  These are the bindings for Synopsys Designware MIPI DPHY RX phy driver.
+  Currently only supported phy version is v1.2.
+
+properties:
+  compatible:
+    const: snps,dw-dphy-1p2
+
+  '#phy-cells':
+    const: 0
+
+  reg:
+    - minItems: 2
+    - maxItems: 2
+
+required:
+  - compatible
+  - '#phy-cells'
+  - reg
+
+additionalProperties: false
+
+examples:
+  - |
+    dw_dphy_rx: dw-dphy@900000040 {
+        compatible = "snps,dw-dphy-1p2";
+        #phy-cells = <0>;
+        reg = <0x0 0x90000040 0x0 0x20>, <0x0 0x90001000 0x0 0x8>;
+        status = "disabled";
+    };
+
diff --git a/MAINTAINERS b/MAINTAINERS
index b5a472a544cf..5fd5a92431bd 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -24217,6 +24217,13 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/dma/snps,dw-axi-dmac.yaml
 F:	drivers/dma/dw-axi-dmac/

+SYNOPSYS DESIGNWARE MIPI D-PHY RX DRIVER
+M:	Karthik Poduval <kpoduval@lab126.com>
+M:	Jason Xiong <jyxiong@amazon.com>
+M:	Miguel Lopes <miguel.lopes@synopsys.com>
+S:	Supported
+F:	Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
+
 SYNOPSYS DESIGNWARE DMAC DRIVER
 M:	Viresh Kumar <vireshk@kernel.org>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
--
2.43.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
