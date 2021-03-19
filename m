Return-Path: <SRS0=EEXn=IR=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5052AC433DB
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFBA364E60
	for <linux-phy@archiver.kernel.org>; Fri, 19 Mar 2021 12:44:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFBA364E60
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Xh5wKO0brbtTEqd8Ypq8CAN7olj3TVt+djFDEgFIGpA=; b=IW7Afoph4DAU1DEhVk68bvFs7
	T9mAPAhup7a6bvN6Ez4Ad79L5N+xYYKh4ieyxr3pBTZthVnW7aH/Tw//4Dbyyg9Xe1Z6Pu67Prco2
	BEkG8/KTcy7pHIvI2aM4gyUqdIpf3vRxDewoUmJ2gjARu6FmFOQ/aF6p+BFBNk2tNDGGzyZBcx/xg
	euIVbmunHiS59oT1oSmrY/F/bE0mpEjP1INNzqoYsZfPlHlHrpSJAn0FMkI0T5qMxRxuQPUIu2duf
	sqROpYVZlRTfmWuG01tsZ+4n/xWD0dqEJRF8vqi2tgG3qLr2pH+pF8jYoGXGOI00ZTDBYoPKEMiWP
	7KpgRl37A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNEU9-007Q0U-F2; Fri, 19 Mar 2021 12:44:13 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNES9-007Pt3-E2
 for linux-phy@lists.infradead.org; Fri, 19 Mar 2021 12:44:11 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12JCg6mQ048368;
 Fri, 19 Mar 2021 07:42:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1616157726;
 bh=6gVouj1wfT7NmKqwlRzK5EWKNIMHLpD+W/lGt6dO6EE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=S3PmYqTyYsCKgWK1gxJquy2lWghpc+kJBQNH1h34v5EcTrOzpMd7Bl2OBbmbMW6mC
 7zVS6FiTgO7qbTqoH+gna5zOa7KzZ6CTekbMocFz22EjpCiBNlmQfSOrhzR1wEZQlX
 6BEnEE6LxO6w+tBsDDotfNSAjWxdZpqvuFjQfsHc=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12JCg6TH125164
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 19 Mar 2021 07:42:06 -0500
Received: from DLEE101.ent.ti.com (157.170.170.31) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 19
 Mar 2021 07:42:05 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 19 Mar 2021 07:42:04 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12JCfTf9011913;
 Fri, 19 Mar 2021 07:42:01 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>, Rob
 Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Swapnil Jakhade <sjakhade@cadence.com>
CC: <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v7 08/13] phy: cadence-torrent: Use a common header file for
 Cadence SERDES
Date: Fri, 19 Mar 2021 18:11:23 +0530
Message-ID: <20210319124128.13308-9-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210319124128.13308-1-kishon@ti.com>
References: <20210319124128.13308-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_124409_903804_5F41EBC7 
X-CRM114-Status: GOOD (  10.09  )
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

No functional change. In order to have a single header file for all
Cadence SERDES move phy-cadence-torrent.h to phy-cadence.h. This is
in preparation for adding Cadence Sierra SERDES specific macros.

Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
Reviewed-by: Swapnil Jakhade <sjakhade@cadence.com>
---
 .../devicetree/bindings/phy/phy-cadence-torrent.yaml     | 2 +-
 drivers/phy/cadence/phy-cadence-torrent.c                | 2 +-
 .../phy/{phy-cadence-torrent.h => phy-cadence.h}         | 9 +++++----
 3 files changed, 7 insertions(+), 6 deletions(-)
 rename include/dt-bindings/phy/{phy-cadence-torrent.h => phy-cadence.h} (51%)

diff --git a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
index 4608599a31d8..01dcd14e7b2a 100644
--- a/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
+++ b/Documentation/devicetree/bindings/phy/phy-cadence-torrent.yaml
@@ -184,7 +184,7 @@ examples:
     };
   - |
     #include <dt-bindings/phy/phy.h>
-    #include <dt-bindings/phy/phy-cadence-torrent.h>
+    #include <dt-bindings/phy/phy-cadence.h>
 
     bus {
         #address-cells = <2>;
diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 95160da3e667..3fdab0d288c4 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -7,7 +7,7 @@
  */
 
 #include <dt-bindings/phy/phy.h>
-#include <dt-bindings/phy/phy-cadence-torrent.h>
+#include <dt-bindings/phy/phy-cadence.h>
 #include <linux/clk.h>
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
diff --git a/include/dt-bindings/phy/phy-cadence-torrent.h b/include/dt-bindings/phy/phy-cadence.h
similarity index 51%
rename from include/dt-bindings/phy/phy-cadence-torrent.h
rename to include/dt-bindings/phy/phy-cadence.h
index 3c92c6192493..4a5ea52a856f 100644
--- a/include/dt-bindings/phy/phy-cadence-torrent.h
+++ b/include/dt-bindings/phy/phy-cadence.h
@@ -1,15 +1,16 @@
 /* SPDX-License-Identifier: GPL-2.0 */
 /*
- * This header provides constants for Cadence Torrent SERDES.
+ * This header provides constants for Cadence SERDES.
  */
 
-#ifndef _DT_BINDINGS_TORRENT_SERDES_H
-#define _DT_BINDINGS_TORRENT_SERDES_H
+#ifndef _DT_BINDINGS_CADENCE_SERDES_H
+#define _DT_BINDINGS_CADENCE_SERDES_H
 
+/* Torrent */
 #define TORRENT_SERDES_NO_SSC		0
 #define TORRENT_SERDES_EXTERNAL_SSC	1
 #define TORRENT_SERDES_INTERNAL_SSC	2
 
 #define CDNS_TORRENT_REFCLK_DRIVER      0
 
-#endif /* _DT_BINDINGS_TORRENT_SERDES_H */
+#endif /* _DT_BINDINGS_CADENCE_SERDES_H */
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
