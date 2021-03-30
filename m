Return-Path: <SRS0=B2Kc=I4=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 27009C433E0
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 900F760241
	for <linux-phy@archiver.kernel.org>; Tue, 30 Mar 2021 11:04:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 900F760241
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XHGV4LGbnIkpBQ/hnjVkBdjSJDHac6CP2s58s4XF8Ws=; b=o0cErGUHUHig3M4aCHVua0u0i
	8RtJxQhKpzJ6jDvk9j2nVD0VcQ/LdEGuKeN4it7x+B2c/qCuCTeBajSic9EibnTFlTlmiMjheAHdd
	RD2ZXoKPKNabg/QEP6ygg/fWXS2VNMe9R9Yz7OExqdS+IyBEmWASjJG3mw/MqIglALvK9S9+UH9S8
	g8n6G16QDP6EE/w/ecmvzQoIwqKZrLoLlymJpe5oaxzARvmWIXsXM4Iv01inxIahkDhwH4BiOAFOK
	ChyzaJ6TTXEA7BgmF4KTlVA5YoPzNFaHWgoupWk84nm2/W6ngDXZKVHXOcv0U7v+xD6F9cIzlqfP3
	SKV6P3WZA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRCAK-003VWU-DL; Tue, 30 Mar 2021 11:04:08 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRC86-003UtU-7I
 for linux-phy@lists.infradead.org; Tue, 30 Mar 2021 11:02:00 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1kSq118758;
 Tue, 30 Mar 2021 06:01:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1617102106;
 bh=DWDQ/I1EftwxzOF/aY9rBU7dyDN4w0Pjm02jY9b0Yg0=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=IZ1FeIkdvspK2OWO4xBvNKymvZGnjuzZirDrB6OM0yAgAIbIF8Nj+sbDYQ0jAmcgm
 eObL3NwrwseIvvd37fPbnf/ZuObgzJJIjE76SHqRUJvF6W9nP9Ysc7i91kJVR07ePc
 aieVEXXI+qzUGD0IGTX45etlT/Mklu79J05raBFQ=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 12UB1k9j022781
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Mar 2021 06:01:46 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Tue, 30
 Mar 2021 06:01:46 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Tue, 30 Mar 2021 06:01:46 -0500
Received: from a0393678-ssd.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 12UB1dcj094447;
 Tue, 30 Mar 2021 06:01:43 -0500
From: Kishon Vijay Abraham I <kishon@ti.com>
To: Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>
CC: Swapnil Jakhade <sjakhade@cadence.com>, <linux-phy@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, Lokesh Vutla <lokeshvutla@ti.com>
Subject: [PATCH v2 1/5] phy: ti: j721e-wiz: Do not configure wiz if its
 already configured
Date: Tue, 30 Mar 2021 16:31:34 +0530
Message-ID: <20210330110138.24356-2-kishon@ti.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210330110138.24356-1-kishon@ti.com>
References: <20210330110138.24356-1-kishon@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_120151_215637_6810150C 
X-CRM114-Status: GOOD (  14.77  )
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

Serdes lanes might be shared between multiple cores in some usecases
and its not possible to lock PLLs for both the lanes independently
by the two cores. This requires a bootloader to configure both the
lanes at early boot time.

To handle this case, skip all configuration if any of the lanes has
already been enabled.

Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
---
 drivers/phy/ti/phy-j721e-wiz.c | 21 ++++++++++++++++-----
 1 file changed, 16 insertions(+), 5 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index 659597645201..95905e5c4f3d 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -1132,13 +1132,14 @@ static int wiz_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *node = dev->of_node;
 	struct platform_device *serdes_pdev;
+	bool already_configured = false;
 	struct device_node *child_node;
 	struct regmap *regmap;
 	struct resource res;
 	void __iomem *base;
 	struct wiz *wiz;
+	int ret, val, i;
 	u32 num_lanes;
-	int ret;
 
 	wiz = devm_kzalloc(dev, sizeof(*wiz), GFP_KERNEL);
 	if (!wiz)
@@ -1266,10 +1267,20 @@ static int wiz_probe(struct platform_device *pdev)
 		goto err_get_sync;
 	}
 
-	ret = wiz_init(wiz);
-	if (ret) {
-		dev_err(dev, "WIZ initialization failed\n");
-		goto err_wiz_init;
+	for (i = 0; i < wiz->num_lanes; i++) {
+		regmap_field_read(wiz->p_enable[i], &val);
+		if (val & (P_ENABLE | P_ENABLE_FORCE)) {
+			already_configured = true;
+			break;
+		}
+	}
+
+	if (!already_configured) {
+		ret = wiz_init(wiz);
+		if (ret) {
+			dev_err(dev, "WIZ initialization failed\n");
+			goto err_wiz_init;
+		}
 	}
 
 	serdes_pdev = of_platform_device_create(child_node, NULL, dev);
-- 
2.17.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
