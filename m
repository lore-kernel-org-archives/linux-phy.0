Return-Path: <SRS0=RVtz=HZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1CD8DC433DB
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7698764E62
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7698764E62
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fqNWXMjOPGHIKMXEtifgqpYEGAjl8lCHgL9As0CeYVo=; b=pxua1ouRsaOGz64oVQcNrbNpC
	Neae3p9r17cvcbhdcbF2cyIESkDQSHvfQgLH3hK7PPDMQsykfnB6xa1wC4lUE2CrBz33JqGrFjVB2
	65BSdtPdj5WOv8/3Dln0Dun7ZEZvu6gfleBvJ3uYrAipfo6MiD4fMNybCUuj1ILfXtK8DZR7lZSgQ
	gK45/HtLZqpJaCoBUanAifP9SHI4ihjnM5FGfJTrvIKaT8fot0b/jA2Fq6HuIrKZU21O+EWJc4C9u
	GD3oj09wsRhyL/x5hMwO8fSKdKAqAIG7d+mBOCxd1bahPTbKydZhBv7mS9EGCMbdWdsZQ8lOrha6L
	uPWUOatbw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEOrV-0005CU-P6; Tue, 23 Feb 2021 03:59:49 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE9Jj-0004tl-6b
 for linux-phy@lists.infradead.org; Mon, 22 Feb 2021 11:23:57 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNbmn035081;
 Mon, 22 Feb 2021 05:23:37 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613993017;
 bh=NLb9VikzuEC/eyCmeIli0+Vydm/e4xaj3++s8WQCSn4=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=FIdGd74bL66F3bfU6zdNDXC1NOOhvUaNVjCo/GCMp2Djh9TOBrMMrjTZnlXzt9tIG
 5WRxEi5LB3OOyBAXEBidWoZiurHs7MTdnbEiUN495YrbDsIhzrkc5W3GJgQI5bBeFA
 UoEoGfsiAL+cDY50hD5errO2Ey9I30zv3k+xEayU=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11MBNb62050208
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Feb 2021 05:23:37 -0600
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 22
 Feb 2021 05:23:36 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 22 Feb 2021 05:23:36 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNFDa088010;
 Mon, 22 Feb 2021 05:23:34 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>
Subject: [PATCH v2 1/9] dt-bindings: phy: ti,
 phy-j721e-wiz: Add bindings for AM64 SERDES Wrapper
Date: Mon, 22 Feb 2021 16:53:06 +0530
Message-ID: <20210222112314.10772-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222112314.10772-1-kishon@ti.com>
References: <20210222112314.10772-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_062355_391044_34BB614A 
X-CRM114-Status: GOOD (  13.11  )
X-Mailman-Approved-At: Mon, 22 Feb 2021 22:59:47 -0500
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Add bindings for AM64 SERDES Wrapper.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/phy/ti,phy-j721e-wiz.yaml        | 10 ++++++---
 include/dt-bindings/phy/phy-ti.h              | 21 +++++++++++++++++++
 2 files changed, 28 insertions(+), 3 deletions(-)
 create mode 100644 include/dt-bindings/phy/phy-ti.h

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
index c33e9bc79521..bf431f98e6ea 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yaml
@@ -12,9 +12,10 @@ maintainers:
 
 properties:
   compatible:
-    enum:
-      - ti,j721e-wiz-16g
-      - ti,j721e-wiz-10g
+    oneOf:
+      - const: ti,j721e-wiz-16g
+      - const: ti,j721e-wiz-10g
+      - const: ti,am64-wiz-10g
 
   power-domains:
     maxItems: 1
@@ -42,6 +43,9 @@ properties:
   "#reset-cells":
     const: 1
 
+  "#clock-cells":
+    const: 1
+
   ranges: true
 
   assigned-clocks:
diff --git a/include/dt-bindings/phy/phy-ti.h b/include/dt-bindings/phy/phy-ti.h
new file mode 100644
index 000000000000..ad955d3a56b4
--- /dev/null
+++ b/include/dt-bindings/phy/phy-ti.h
@@ -0,0 +1,21 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * This header provides constants for TI SERDES.
+ */
+
+#ifndef _DT_BINDINGS_TI_SERDES
+#define _DT_BINDINGS_TI_SERDES
+
+/* Clock index for output clocks from WIZ */
+
+/* MUX Clocks */
+#define TI_WIZ_PLL0_REFCLK	0
+#define TI_WIZ_PLL1_REFCLK	1
+#define TI_WIZ_REFCLK_DIG	2
+
+/* Reserve index here for future additions */
+
+/* MISC Clocks */
+#define TI_WIZ_PHY_EN_REFCLK	16
+
+#endif /* _DT_BINDINGS_TI_SERDES */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
