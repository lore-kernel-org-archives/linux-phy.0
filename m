Return-Path: <SRS0=RVtz=HZ=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FE66C4332B
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:52 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7007364E6B
	for <linux-phy@archiver.kernel.org>; Tue, 23 Feb 2021 03:59:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7007364E6B
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n0jsAi8kys2X3AgZ0biR/aLCUqwzAt/sNCAiP6h80Rk=; b=JzH5vRdkLMz3IGhvRIXNQ3++v
	8kPRqH4QfR5CNNK5wPgQ+54a12ge+nqbl+Gp9yFyz3w5wQQs15cezL3K3E9PTCbfiF4UEh6uWkWYh
	dd6d6VR7NpVPLar9+rV5h0tUt+Rvsn75wNVMZEUJdmt4M+Ff9h2titwngj6COnr8Z34lTc6HDXuS6
	PjtaHZjjKZbZuYvEaR/mpd2vuwlQRVyRzXEoSSTeK+HBECzAtcNHvjYMS5tbQtUNJdCWPV+CBaKaj
	ozYmy7iF8gt6U5KTme4ICTV7OLPfz7rdLXWsCbwuxZxt0/tzQ2zLFMJBJLch709irpZjhz2BokL5e
	qevkjyWrA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEOrW-0005Ce-7I; Tue, 23 Feb 2021 03:59:50 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE9Ji-0004tt-2G
 for linux-phy@lists.infradead.org; Mon, 22 Feb 2021 11:23:57 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNenB035092;
 Mon, 22 Feb 2021 05:23:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1613993020;
 bh=XLr9OoErgvpAWzGsepng7zsPazqJ3thUGn3RfXKhxtc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=EzF+ajnuI7gvrcQEyh11UMUusewZPPcDPVf6yXHjlWbNm413Vvz4eXuZxaohdz4sp
 MZWiTnFeZ+kMOKZXa5KduGt6LbAf5X36LninNP5xmfSCFdcbkbGtvDM8r6BXEZO0Bf
 5a4tWfDBULlNl2AF+KCtBUm97cHNUXy5zigVdcDc=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 11MBNeWt117536
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 22 Feb 2021 05:23:40 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 22
 Feb 2021 05:23:39 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 22 Feb 2021 05:23:39 -0600
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 11MBNFDb088010;
 Mon, 22 Feb 2021 05:23:37 -0600
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Peter Rosin <peda@axentia.se>,
 Swapnil Jakhade <sjakhade@cadence.com>
Subject: [PATCH v2 2/9] dt-bindings: phy: cadence-torrent: Add binding for
 refclk driver
Date: Mon, 22 Feb 2021 16:53:07 +0530
Message-ID: <20210222112314.10772-3-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222112314.10772-1-kishon@ti.com>
References: <20210222112314.10772-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210222_062354_215683_B0883810 
X-CRM114-Status: GOOD (  10.65  )
X-Mailman-Approved-At: Mon, 22 Feb 2021 22:59:48 -0500
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

Add binding for refclk driver used to route the refclk out of torrent
SERDES.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 .../bindings/phy/phy-cadence-torrent.yaml     | 20 ++++++++++++++++---
 include/dt-bindings/phy/phy-cadence-torrent.h |  2 ++
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index e266ade53d87..4608599a31d8 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -28,13 +28,27 @@ properties:
   '#size-cells':
     const: 0
 
+  '#clock-cells':
+    const: 1
+
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
     description:
-      PHY reference clock. Must contain an entry in clock-names.
+      PHY reference clock for 1 item. Must contain an entry in clock-names.
+      Optional Parent to enable output reference clock.
 
   clock-names:
-    const: refclk
+    minItems: 1
+    items:
+      - const: refclk
+      - const: phy_en_refclk
+
+  assigned-clocks:
+    maxItems: 3
+
+  assigned-clock-parents:
+    maxItems: 3
 
   reg:
     minItems: 1
diff --git a/include/dt-bindings/phy/phy-cadence-torrent.h b/include/dt-bindings/phy/phy-cadence-torrent.h
index e387b6a95741..3c92c6192493 100644
--- a/include/dt-bindings/phy/phy-cadence-torrent.h
+++ b/include/dt-bindings/phy/phy-cadence-torrent.h
@@ -10,4 +10,6 @@
 #define TORRENT_SERDES_EXTERNAL_SSC	1
 #define TORRENT_SERDES_INTERNAL_SSC	2
 
+#define CDNS_TORRENT_REFCLK_DRIVER      0
+
 #endif /* _DT_BINDINGS_TORRENT_SERDES_H */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
