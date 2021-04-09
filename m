Return-Path: <SRS0=s7Ie=JG=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 095BAC433ED
	for <linux-phy@archiver.kernel.org>; Fri,  9 Apr 2021 13:41:49 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B1437610D1
	for <linux-phy@archiver.kernel.org>; Fri,  9 Apr 2021 13:41:48 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B1437610D1
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tvc2HeE+v9zpykg7Dyvzqy3GJOTGg+uQpY+CY19ZV1o=; b=B8gvsjBBtOqtCWCdPzQb68ID9
	mAONDMEQvM8oIZr6Y4cSuDove59OPbb8SyrnRCN92R0RSivDBHdd7LQG8J2mtOM6LHbSU7Dh+6Zs2
	yP/eHWSV+wSOyeqLTrmc9O6G3pgPUZMcm9vrPUeiCnU/I4glpTwJL95X86Wjldi/rLp75aFKcUxFQ
	scX9UkKC2+MnKUWLVXeWvO92xrfmqxFcO+CV5jKTOD6+yaMgG4ZeIT/hnGFv12K6q6Qj7cxG18TaV
	LJY64ykzIcax+xOFbNtLHdI5ZUb1ISPr79GVyoIq3shCBBi+CAv68QEJ0rGWpcDQrd/vwaW6sWA3r
	c/SgIxyuA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lUrOM-000qo0-M0; Fri, 09 Apr 2021 13:41:47 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lUrOJ-000qmI-9t
 for linux-phy@lists.infradead.org; Fri, 09 Apr 2021 13:41:45 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 139Dfbol029329;
 Fri, 9 Apr 2021 08:41:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617975697;
 bh=yzQFMlEvLc1NJ8+6qQzAMS/IJa1/2LrIrpQLN6vAeQU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UNQR6TKCVjkHc2LapYnv+gSYZDa9D7jgM4msj9gaN4CbCbyhk70VjclQuaPZ27NTK
 dO4M2i4au2NgZaIC+aksBNFvCZq2NCDdC13YvOL8Lh0I5CSU8dyfplbQVb11I3YiKZ
 ZVVVF9vzfQ55HLYEixq0dNtSgTG3w9PjhNOwd+Ho=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 139DfbJF116872
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 9 Apr 2021 08:41:37 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Fri, 9 Apr
 2021 08:41:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Fri, 9 Apr 2021 08:41:36 -0500
Received: from gsaswath-HP-ProBook-640-G5.dal.design.ti.com
 (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 139Dewmd029277;
 Fri, 9 Apr 2021 08:41:31 -0500
From: Aswath Govindraju <a-govindraju@ti.com>
To: 
CC: Vignesh Raghavendra <vigneshr@ti.com>, Kishon Vijay Abraham I
 <kishon@ti.com>, Lokesh Vutla <lokeshvutla@ti.com>, Grygorii Strashko
 <grygorii.strashko@ti.com>, Aswath Govindraju <a-govindraju@ti.com>, Faiz
 Abbas <faiz_abbas@ti.com>, Chandrasekar Ramakrishnan <rcsekar@samsung.com>,
 Wolfgang Grandegger <wg@grandegger.com>, Marc Kleine-Budde
 <mkl@pengutronix.de>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Vinod Koul <vkoul@kernel.org>, Sriram Dash <sriram.dash@samsung.com>,
 <linux-can@vger.kernel.org>, <netdev@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: [PATCH 4/4] can: m_can_platform: Add support for transceiver as phy
Date: Fri, 9 Apr 2021 19:10:54 +0530
Message-ID: <20210409134056.18740-5-a-govindraju@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210409134056.18740-1-a-govindraju@ti.com>
References: <20210409134056.18740-1-a-govindraju@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210409_144143_659259_142592D1 
X-CRM114-Status: GOOD (  11.59  )
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

From: Faiz Abbas <faiz_abbas@ti.com>

Add support for implementing transceiver node as phy. The max_bitrate is
obtained by getting a phy attribute.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Aswath Govindraju <a-govindraju@ti.com>
---
 drivers/net/can/m_can/m_can_platform.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/net/can/m_can/m_can_platform.c b/drivers/net/can/m_can/m_can_platform.c
index 599de0e08cd7..4a762b5a21d8 100644
--- a/drivers/net/can/m_can/m_can_platform.c
+++ b/drivers/net/can/m_can/m_can_platform.c
@@ -6,6 +6,7 @@
 // Copyright (C) 2018-19 Texas Instruments Incorporated - http://www.ti.com/
 
 #include <linux/platform_device.h>
+#include <linux/phy/phy.h>
 
 #include "m_can.h"
 
@@ -67,7 +68,9 @@ static int m_can_plat_probe(struct platform_device *pdev)
 	struct resource *res;
 	void __iomem *addr;
 	void __iomem *mram_addr;
+	struct phy *transceiver;
 	int irq, ret = 0;
+	u32 bitrate_max;
 
 	mcan_class = m_can_class_allocate_dev(&pdev->dev,
 					      sizeof(struct m_can_plat_priv));
@@ -101,6 +104,28 @@ static int m_can_plat_probe(struct platform_device *pdev)
 		goto probe_fail;
 	}
 
+	transceiver = devm_phy_optional_get(&pdev->dev, "can_transceiver");
+	if (IS_ERR(transceiver)) {
+		ret = PTR_ERR(transceiver);
+		dev_err(&pdev->dev, "error while getting phy, err=%d\n", ret);
+		return ret;
+	}
+
+	if (!transceiver) {
+		dev_warn(&pdev->dev, "No transceiver phy found\n");
+	} else {
+		ret = phy_power_on(transceiver);
+		if (ret) {
+			dev_err(&pdev->dev, "error powering on phy, err=%d\n", ret);
+			return ret;
+		}
+		/* converting from Mbps to bps */
+		bitrate_max = (transceiver->attrs.max_link_rate) * 1000000;
+		if (!bitrate_max)
+			dev_warn(&pdev->dev, "Invalid value for transceiver max bitrate. Ignoring bitrate limit\n");
+		priv->cdev.can.bitrate_max = bitrate_max;
+	}
+
 	priv->base = addr;
 	priv->mram_base = mram_addr;
 
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
