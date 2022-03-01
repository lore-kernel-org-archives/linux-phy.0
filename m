Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE4DC43217
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 11:18:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CrHk1ALbdh6Ovue8cFQehujY6gUnIoWP8W+FMDWHik=; b=EhSuqIc2jryktb
	Cjgit5HJQRx04XUXgE2bWDeTHLGpzEjYyY8Mrix/cXid1NQgsXC48N4/LtN22RuhhdX9LW+b+8Y6j
	H8ICXJT/a6KT9zoQ1qv3HTsYkz9W6x11Dblknyd416U95mBhEO99KPAGJCgTgYr3jK432i02sGtO4
	YvBGpT7IcO3yMGl4wgH4Ir484YZ/TiMeGoc8ovwZJbDoyoX5UIrisMTVuvwbyx1f3r1Ky/mp6Jz7t
	i6PCnYa2uY2aMQdiWgSW2uNYHM7uERkKQokbZIvjxX/tUBdKsY6cr+9jHt4lVECxR/SBKtmbj4ilT
	s3yzg2HUljUqNwraGllg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP0Wj-00GO2T-V5; Tue, 01 Mar 2022 11:18:45 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP0Up-00GNVf-VZ
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 11:16:50 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 221BGfso031519;
 Tue, 1 Mar 2022 05:16:41 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1646133401;
 bh=4SwLAH88JnJT5PZJ5YWyDguLyFBhuOkYKFjfGfwc2B8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=CttWfzwly6dommpD31OHhZN+B9vKKXN21pE4YBt441OTdy3J7HQhwAWiBgm+PxK+x
 hnuA9QPHfNPmpU63DMysdeMwoWxbhUpbaNZ5LX2Wg2ZnfSuOJjy3UtBdVg6rShnnnT
 WGFJfaBS/Lih/G74vvondYJMBVu3ErPEQKycXXVQ=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 221BGfCd023079
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 1 Mar 2022 05:16:41 -0600
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 1
 Mar 2022 05:16:40 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 1 Mar 2022 05:16:40 -0600
Received: from pratyush-4F-325.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 221BGMAp116021;
 Tue, 1 Mar 2022 05:16:37 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v10 4/4] phy: dt-bindings: Add Cadence D-PHY Rx bindings
Date: Tue, 1 Mar 2022 16:46:21 +0530
Message-ID: <20220301111621.2992275-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301111621.2992275-1-p.yadav@ti.com>
References: <20220301111621.2992275-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_031648_159616_D115CE55 
X-CRM114-Status: GOOD (  11.11  )
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

The Rx mode DPHY is different from Tx mode DPHY. Add a separate binding
for it.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---

(no changes since v8)

Changes in v8:
- Add Rob and Laurent's R-by.

Changes in v6:
- Add a new binding for DPHY Rx.

 .../devicetree/bindings/phy/cdns,dphy-rx.yaml | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
new file mode 100644
index 000000000000..07be031d82e6
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy-rx.yaml
@@ -0,0 +1,42 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/cdns,dphy-rx.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence DPHY Rx Device Tree Bindings
+
+maintainers:
+  - Pratyush Yadav <p.yadav@ti.com>
+
+properties:
+  compatible:
+    items:
+      - const: cdns,dphy-rx
+
+  reg:
+    maxItems: 1
+
+  "#phy-cells":
+    const: 0
+
+  power-domains:
+    maxItems: 1
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
+    #include <dt-bindings/soc/ti,sci_pm_domain.h>
+
+    dphy0: phy@4580000 {
+        compatible = "cdns,dphy-rx";
+        reg = <0x4580000 0x1100>;
+        #phy-cells = <0>;
+        power-domains = <&k3_pds 147 TI_SCI_PD_EXCLUSIVE>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
