Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3F947C83F1A
	for <linux-phy@archiver.kernel.org>; Thu, 10 Jul 2025 02:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jvo9qFPY7vgFkMeXkD/jPNi0aDeaKpTA0j0uKSlCs4Q=; b=ZdP6ZgN201cIzK
	DHrGRg7Zqx0zTm7EP8wDqHzbuWzwU+W41ymgNjzYDjctmrzCH0oDlQQNvJatm6tF2kjyKZiilZk8a
	6cFcFGukThuBEVPE4AHh6IKcbzPdPVZ1p87+zVXBXGSgBZIbFn1EPUA565/L8fInoc/fUKayDsPhF
	91mVkTlHfGy36L6qLEl3tLhGKmOvIipw/bQI4tnZlNg0VbgiR3vbQXcorV0yRiyxGznNHfCyex46W
	BOn0UErQr89t7uav8KX6KtUfX/YpApZFEKtPoUOLEfIV5S4geUPRuEOagpPzaS3JpAOjSenHxjzeE
	vdgl5Lt6RQWbSgwyiA2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZhFF-0000000AVmv-05Ak;
	Thu, 10 Jul 2025 02:42:45 +0000
Received: from smtp-fw-9102.amazon.com ([207.171.184.29])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uZhFB-0000000AVl1-3pH3
	for linux-phy@lists.infradead.org;
	Thu, 10 Jul 2025 02:42:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=lab126.com; i=@lab126.com; q=dns/txt; s=amazoncorp2;
  t=1752115362; x=1783651362;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=VvnLYL+/IlFsK+/EON8jc4rYEkq8pObThhK3WBClhVE=;
  b=JPJOADbSqYkY9dv4Qr5QlJoIvUhya1QIQU4/nmW+qBuoZMC9jOoVKQjg
   japXlrRSjhVrNc80agAEyQyZgxxXcdJgVCS1ty80lmM0zpj0HbLQmWW4p
   9yyFBGDw/GgPCAn1jz5rz63JMV2+qfZViflp8V7Kk1XR3b6oPihPg3HKj
   IKNt7Hk3FHMSPn0Zizktj1gh9zrXpMWgb7DlV7ctSeavs7XIQjEtR8v/b
   L9ca6ehUz4MZvzMeoCopu7ROi5so5zXDPXoSZzpkWf7pLYbB20rb5+SDo
   yzmVM0HIM25amPMkLCls2cBoE9JCNvArwfCzITuh0bh92NaQ2dwzKoSsq
   w==;
X-IronPort-AV: E=Sophos;i="6.16,299,1744070400"; 
   d="scan'208";a="537353771"
Received: from pdx4-co-svc-p1-lb2-vlan3.amazon.com (HELO smtpout.prod.us-west-2.prod.farcaster.email.amazon.dev) ([10.25.36.214])
  by smtp-border-fw-9102.sea19.amazon.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Jul 2025 02:42:40 +0000
Received: from EX19MTAUWB001.ant.amazon.com [10.0.21.151:64364]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.3.175:2525] with esmtp (Farcaster)
 id 6c1c351b-940d-4415-acd4-f9b066c490a3; Thu, 10 Jul 2025 02:42:38 +0000 (UTC)
X-Farcaster-Flow-ID: 6c1c351b-940d-4415-acd4-f9b066c490a3
Received: from EX19D007UWB001.ant.amazon.com (10.13.138.75) by
 EX19MTAUWB001.ant.amazon.com (10.250.64.248) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 10 Jul 2025 02:42:38 +0000
Received: from u1cb251c9c70150.ant.amazon.com (10.68.99.17) by
 EX19D007UWB001.ant.amazon.com (10.13.138.75) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.1544.14;
 Thu, 10 Jul 2025 02:42:38 +0000
From: Karthik Poduval <kpoduval@lab126.com>
To: <jyxiong@amazon.com>, <miguel.lopes@synopsys.com>, <anishkmr@amazon.com>,
	<vkoul@kernel.org>, <kishon@kernel.org>, <linux-kernel@vger.kernel.org>,
	<linux-phy@lists.infradead.org>, <robh@kernel.org>, <krzk+dt@kernel.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>
CC: Karthik Poduval <kpoduval@lab126.com>
Subject: [PATCH v2 2/2] phy: dw-dphy-rx: Add dt bindings for Synopsys MIPI D-PHY RX
Date: Wed, 9 Jul 2025 19:42:21 -0700
Message-ID: <7f4b676678b27ea91314c834a297c1e057959b09.1752106239.git.kpoduval@lab126.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1752106239.git.kpoduval@lab126.com>
References: <cover.1752106239.git.kpoduval@lab126.com>
MIME-Version: 1.0
X-Originating-IP: [10.68.99.17]
X-ClientProxiedBy: EX19D042UWA003.ant.amazon.com (10.13.139.44) To
 EX19D007UWB001.ant.amazon.com (10.13.138.75)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250709_194241_993650_D7F7F67A 
X-CRM114-Status: GOOD (  12.31  )
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
index 000000000000..c3c657b1e77d
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/snps,dw-dphy-rx.yaml
@@ -0,0 +1,44 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/snps,dw-dphy-rx.yaml#
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
+    minItems: 2
+    maxItems: 2
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
