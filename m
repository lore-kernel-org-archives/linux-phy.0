Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B916FC4332F
	for <linux-phy@archiver.kernel.org>; Mon, 31 Jan 2022 17:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3CrHk1ALbdh6Ovue8cFQehujY6gUnIoWP8W+FMDWHik=; b=KAWBlNUvhSA2pW
	Znejd2XvmBS7e/dSGRndKKk/ELJ9xG1PprV7+Q2qYeZ7hN4K9OAoIII36m7eyfYRAKmalg5WUj0iO
	fnzbhvQyB1ajfBMKVeH9FQhe/AjmWt/BUiEdQ9aezYrBUwBCfRV+0dSNTe4KpQf9pWzdKKHRE2sLr
	UNVNF+K4B/1MNtJm1i+KoAc7RbGP2n+uGVSQk3BxbxM32hbjXvqkbbWrzm4OX7chHOF14GoH+bT5e
	rvixC/SJgvTTbSri0qbXXz6ed2XbLsQYNqa7Gha4y7bwrJZZuolPNE0tMCraI+27GYlWUh1pNvjLP
	rDVBUkQdmuv+/sSCupzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nEajQ-00ACru-1R; Mon, 31 Jan 2022 17:44:48 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEaYf-00A9Cz-FZ
 for linux-phy@lists.infradead.org; Mon, 31 Jan 2022 17:33:43 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 20VHXY9S043181;
 Mon, 31 Jan 2022 11:33:34 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1643650414;
 bh=4SwLAH88JnJT5PZJ5YWyDguLyFBhuOkYKFjfGfwc2B8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=iPRWr7V0miu35F593GdQpIKq9KLVAbr9/tOIJOt59LMoULQVZUPG9pnI0Ql7qoeq1
 Pfi1QSwc4+0/modXxhcLZmVdS1aSQ68i91MO9bhgBy8Q7KcWwrwWao6nvRQpM3URVv
 6GliiC3oKJj0xxsXtXwIML0Ri8arJlD5pj8xEKQo=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 20VHXYmE032374
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 31 Jan 2022 11:33:34 -0600
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Mon, 31
 Jan 2022 11:33:33 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Mon, 31 Jan 2022 11:33:33 -0600
Received: from pratyush-4F-325.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 20VHXFph034468;
 Mon, 31 Jan 2022 11:33:30 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v9 4/4] phy: dt-bindings: Add Cadence D-PHY Rx bindings
Date: Mon, 31 Jan 2022 23:03:14 +0530
Message-ID: <20220131173314.2073641-5-p.yadav@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220131173314.2073641-1-p.yadav@ti.com>
References: <20220131173314.2073641-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_093341_683570_E0A29C05 
X-CRM114-Status: GOOD (  11.81  )
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
