Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D0A6C433FE
	for <linux-phy@archiver.kernel.org>; Tue,  1 Mar 2022 11:18:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1efr0i2MK02YuQD5i2x5NqdF93s8Em9AznSXFdG/cjE=; b=at/YyGjdQLEYon
	803rEbSCe16aFqxI7eGqM2dqwwZdbeAdUqavGZ4uPmB1sw9zlc+pUslSLq4LArC5UKrqC2bu3iqqo
	dHQxUvluNq9GLx+RbS7L7/+pbx5SAWoffqBeznyqi01GIaZ7U9ZlElL2Wh+IC79a3LuKS6uup5ysU
	tqhlfYHirNKODyD3AQ4U5EtVVl/kARDQnPwhwV7RrWAKawno1R8EECKRQS+IznNEZSMFe8ig1zXMV
	/Nz0YvY4PO0DVgYpBvqoKvGKgNrblAxNaVWPlH7XKZCdpno3C0NAFh7xmAfgvNVvENTi/mT7mZsnc
	rPtTd9GZ3IhUy7AL5CxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP0Wj-00GO1j-04; Tue, 01 Mar 2022 11:18:45 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP0Uj-00GNTZ-O9
 for linux-phy@lists.infradead.org; Tue, 01 Mar 2022 11:16:45 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 221BGX1I031501;
 Tue, 1 Mar 2022 05:16:33 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1646133394;
 bh=C0+VGEntVNI3MtS9mDeqP4xuy+YWng1ZiXsO5o7rw18=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=V+ZFL6O5pCCWRwIXh3Rzp7pudBnyjsly0sMteot/0urE6tDs3YqrWitegbVK0DVFD
 Ev8CPuUSk9evIYJ92BZSUBQRpLEMmDvYoNHIbWPEq1ka2tJJ8gDZ9f2fZOh8zuTjz8
 qlObXEuyv9RPUH89hzk8F+t6oSzECMW24K/hdMrs=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 221BGXjh023010
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 1 Mar 2022 05:16:33 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14; Tue, 1
 Mar 2022 05:16:33 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2308.14 via
 Frontend Transport; Tue, 1 Mar 2022 05:16:33 -0600
Received: from pratyush-4F-325.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 221BGMAn116021;
 Tue, 1 Mar 2022 05:16:30 -0600
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Pratyush Yadav <p.yadav@ti.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Vignesh Raghavendra <vigneshr@ti.com>,
 Kishon Vijay Abraham I <kishon@ti.com>, Rob Herring <robh+dt@kernel.org>,
 Swapnil Jakhade <sjakhade@cadence.com>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-phy@lists.infradead.org>
Subject: [PATCH v10 2/4] phy: dt-bindings: Convert Cadence DPHY binding to YAML
Date: Tue, 1 Mar 2022 16:46:19 +0530
Message-ID: <20220301111621.2992275-3-p.yadav@ti.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301111621.2992275-1-p.yadav@ti.com>
References: <20220301111621.2992275-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_031641_922391_1A297EE2 
X-CRM114-Status: GOOD (  14.17  )
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

Convert Cadence DPHY binding to YAML.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Reviewed-by: Rob Herring <robh@kernel.org>

---

(no changes since v3)

Changes in v3:
- Add Rob's R-by.

Changes in v2:
- Drop reg description.
- Add a description for each DPHY clock.
- Rename dphy@... to phy@... in example.
- Add Laurent's R-by.
- Re-order subject prefixes.

 .../devicetree/bindings/phy/cdns,dphy.txt     | 20 --------
 .../devicetree/bindings/phy/cdns,dphy.yaml    | 51 +++++++++++++++++++
 2 files changed, 51 insertions(+), 20 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.txt
 create mode 100644 Documentation/devicetree/bindings/phy/cdns,dphy.yaml

diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.txt b/Documentation/devicetree/bindings/phy/cdns,dphy.txt
deleted file mode 100644
index 1095bc4e72d9..000000000000
--- a/Documentation/devicetree/bindings/phy/cdns,dphy.txt
+++ /dev/null
@@ -1,20 +0,0 @@
-Cadence DPHY
-============
-
-Cadence DPHY block.
-
-Required properties:
-- compatible: should be set to "cdns,dphy".
-- reg: physical base address and length of the DPHY registers.
-- clocks: DPHY reference clocks.
-- clock-names: must contain "psm" and "pll_ref".
-- #phy-cells: must be set to 0.
-
-Example:
-	dphy0: dphy@fd0e0000{
-		compatible = "cdns,dphy";
-		reg = <0x0 0xfd0e0000 0x0 0x1000>;
-		clocks = <&psm_clk>, <&pll_ref_clk>;
-		clock-names = "psm", "pll_ref";
-		#phy-cells = <0>;
-	};
diff --git a/Documentation/devicetree/bindings/phy/cdns,dphy.yaml b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
new file mode 100644
index 000000000000..b90a58773bf2
--- /dev/null
+++ b/Documentation/devicetree/bindings/phy/cdns,dphy.yaml
@@ -0,0 +1,51 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/phy/cdns,dphy.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Cadence DPHY Device Tree Bindings
+
+maintainers:
+  - Pratyush Yadav <p.yadav@ti.com>
+
+properties:
+  compatible:
+    items:
+      - const: cdns,dphy
+
+  reg:
+    maxItems: 1
+
+  clocks:
+    items:
+      - description: PMA state machine clock
+      - description: PLL reference clock
+
+  clock-names:
+    items:
+      - const: psm
+      - const: pll_ref
+
+  "#phy-cells":
+    const: 0
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
+
+    dphy0: phy@fd0e0000{
+        compatible = "cdns,dphy";
+        reg = <0xfd0e0000 0x1000>;
+        clocks = <&psm_clk>, <&pll_ref_clk>;
+        clock-names = "psm", "pll_ref";
+        #phy-cells = <0>;
+    };
-- 
2.34.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
