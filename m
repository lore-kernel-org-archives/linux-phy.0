Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3B83C433E0
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:25 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 83B8264EED
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 83B8264EED
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+vDuvc97hGLDD+NgGH5b7EGgAcpF5JWeE6R+7OvqYl8=; b=e3kuFSDQUh9kduNj89nfMVPtm
	E9xSKV8AfqkU27tB4fH4xPgs9Rci+9QnTbuI0xeJZFikdoTIc4K36iRvDzb+j9a3VOPuPox4Te8Kv
	ZIk29DQ5j2taygRsnFASOmChn/IWfKW/6b1pQWzyu0KIphjGSnfnjz8Zpk2J4v/v4Pl8qAePE8nNN
	Z0/WPRu4nFSwsXWpAC/7NVAg3pHpX5/+vDR8QQjdePwFeQx7UkFIfq4OznsUIVIctWIyUyN96+FBe
	TP8nSu53jcM7qDgguAe64gMGXDv/gj2ddPXmmXXQKUEnYGydI2GI/sl+O4YgSyqLTcfGk+T+6KspQ
	kuc9Us81Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEUK-007Q1i-0h; Fri, 19 Mar 2021 12:44:24 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNESK-007PtH-CP
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:44:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCgHhS108071;
 Fri, 19 Mar 2021 07:42:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157737;
 bh=YL9+WKt8x7qTWljt/hD5/jYLjLVEo7lGeUBHfD8YbNk=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=J1ZcAfJteR09lNq0bafyUx8bBBE05cUVKE269trNFtzRocx18vR9UYorNhljzTAYx
 lAUhaHkxo5t3EBNeER/fdgjquDisg3eykkmWUlCkazCBW65DcBDnq2achEx3SWVTZI
 j6yaC3AyheMtpG7Wm/1dMGKV2NWJbrXtJD+8i7+0=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCgHUr086496
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:42:17 -0500
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:42:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:42:17 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTfC011913;
 Fri, 19 Mar 2021 07:42:13 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 11/13] dt-bindings: phy: phy-cadence-sierra: Add binding to
 model Sierra as clock provider
Date: Fri, 19 Mar 2021 18:11:26 +0530
Message-ID: <20210319124128.13308-12-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124420_805088_413B0907 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
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

Add #clock-cells binding to model Sierra as clock provider and include
clock IDs for PLL_CMNLC and PLL_CMNLC1.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/phy/phy-cadence-sierra.yaml        | 17 ++++++++++++++++-
 include/dt-bindings/phy/phy-cadence.h           |  4 ++++
 2 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
index d210843863df..84383e2e0b34 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-sierra.yaml
@@ -26,6 +26,9 @@ properties:
   '#size-cells':
     const: 0
 
+  '#clock-cells':
+    const: 1
+
   resets:
     minItems: 1
     maxItems: 2
@@ -49,12 +52,24 @@ properties:
     const: serdes
 
   clocks:
-    maxItems: 2
+    minItems: 2
+    maxItems: 4
 
   clock-names:
+    minItems: 2
     items:
       - const: cmn_refclk_dig_div
       - const: cmn_refclk1_dig_div
+      - const: pll0_refclk
+      - const: pll1_refclk
+
+  assigned-clocks:
+    minItems: 1
+    maxItems: 2
+
+  assigned-clock-parents:
+    minItems: 1
+    maxItems: 2
 
   cdns,autoconf:
     type: boolean
diff --git a/include/dt-bindings/phy/phy-cadence.h b/include/dt-bindings/phy/phy-cadence.h
index 4a5ea52a856f..4652bcb86265 100644
--- a/include/dt-bindings/phy/phy-cadence.h
+++ b/include/dt-bindings/phy/phy-cadence.h
@@ -13,4 +13,8 @@
 
 #define CDNS_TORRENT_REFCLK_DRIVER      0
 
+/* Sierra */
+#define CDNS_SIERRA_PLL_CMNLC		0
+#define CDNS_SIERRA_PLL_CMNLC1		1
+
 #endif /* _DT_BINDINGS_CADENCE_SERDES_H */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
