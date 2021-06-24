Return-Path: <SRS0=UgvN=LS=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DED5C49EA5
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30AC8613FD
	for <linux-phy@archiver.kernel.org>; Thu, 24 Jun 2021 18:41:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 30AC8613FD
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naLvyfTQuElQBANMdjqMJRSMdty6E/2ojlKM5olN+Ns=; b=OlR9bsDckiks0A
	fLlMl0CV5ZyvJ6Han+n0hu1Tkh3oU2laf7RA9/MixE7HAnpPWj8ZlD8n24An/bWB+oeQpCLRDC2ZE
	2WzEjX7L0ZOEDOyd8+9LdOnQehG+gO7F5U00dbZKGmutq2JP2H+cGNWIF1Ua1DEz6eIjtdD6bZeRJ
	QfWsDo2x+Et83065CysRZhLaY57DzjwIGp3B5AKWeL4DdaViOhhrY5OupHg5GlkSUHbPdRgQo9sKz
	fyl5dTSPPXAW9SLe5ojsboAk4q9BTiHlH0rIUanKu7EJanHDvUlYa7ntf3/qCb7Z+aS4OB9x1ta+S
	cICop0tlKrvJi2Kv4rTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwUI9-00Fsh7-N1; Thu, 24 Jun 2021 18:41:33 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwUI5-00Fsfa-CY
 for linux-phy@lists.infradead.org; Thu, 24 Jun 2021 18:41:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 15OIfOTw028676;
 Thu, 24 Jun 2021 13:41:24 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1624560084;
 bh=pEYv/cVE8dpSFqbeMd7nSL6UuSjcYO8ph/UZQDKS7+g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=BVUI5Gfyfsf0T/wpgVpifLysKV5HCcdTvI9Hn6+ldp57PnSawo0/UdvkFArQA/dNM
 RCqgpFBxwgAmreBc28a+Yb9ExdDNADqdHfz/dA6Rq7OmsmR+Txk8kZvxVuoiGpEDJH
 DzK1Z0+qsmrA5hBlAIeIGdvN2imX3xDqeXUmbJSc=
Received: from DLEE115.ent.ti.com (dlee115.ent.ti.com [157.170.170.26])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 15OIfOAd034296
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 24 Jun 2021 13:41:24 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Thu, 24
 Jun 2021 13:41:24 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Thu, 24 Jun 2021 13:41:23 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 15OIf9I0041395;
 Thu, 24 Jun 2021 13:41:21 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Vinod Koul <vkoul@kernel.org>
CC: Nikhil Devshatwar <nikhil.nd@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>, Laurent Pinchart
 <laurent.pinchart@ideasonboard.com>, Paul Kocialkowski
 <paul.kocialkowski@bootlin.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Pratyush Yadav <p.yadav@ti.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Peter Chen <peter.chen@nxp.com>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>
Subject: [PATCH v3 3/7] phy: cdns-dphy: Allow setting mode
Date: Fri, 25 Jun 2021 00:11:04 +0530
Message-ID: <20210624184108.21312-4-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210624184108.21312-1-p.yadav@ti.com>
References: <20210624184108.21312-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_114129_569929_84928E1E 
X-CRM114-Status: GOOD (  11.72  )
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

Allow callers to set the PHY mode. The main mode should always be
PHY_MODE_MIPI_DPHY but the submode can either be
PHY_MIPI_DPHY_SUBMODE_RX or PHY_MIPI_DPHY_SUBMODE_TX. Update the ops
based on the requested submode.

Signed-off-by: Pratyush Yadav <p.yadav@ti.com>
---

(no changes since v1)

 drivers/phy/cadence/cdns-dphy.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/phy/cadence/cdns-dphy.c b/drivers/phy/cadence/cdns-dphy.c
index 8656f2102a91..7d5f7b333893 100644
--- a/drivers/phy/cadence/cdns-dphy.c
+++ b/drivers/phy/cadence/cdns-dphy.c
@@ -365,11 +365,41 @@ static int cdns_dphy_configure(struct phy *phy, union phy_configure_opts *opts)
 	return 0;
 }
 
+static int cdns_dphy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
+{
+	struct cdns_dphy *dphy = phy_get_drvdata(phy);
+	const struct cdns_dphy_driver_data *ddata;
+
+	ddata = of_device_get_match_data(dphy->dev);
+	if (!ddata)
+		return -EINVAL;
+
+	if (mode != PHY_MODE_MIPI_DPHY)
+		return -EINVAL;
+
+	if (submode == PHY_MIPI_DPHY_SUBMODE_TX) {
+		if (!ddata->tx)
+			return -EOPNOTSUPP;
+
+		dphy->ops = ddata->tx;
+	} else if (submode == PHY_MIPI_DPHY_SUBMODE_RX) {
+		if (!ddata->rx)
+			return -EOPNOTSUPP;
+
+		dphy->ops = ddata->rx;
+	} else {
+		return -EOPNOTSUPP;
+	}
+
+	return 0;
+}
+
 static const struct phy_ops cdns_dphy_ops = {
 	.configure	= cdns_dphy_configure,
 	.validate	= cdns_dphy_validate,
 	.power_on	= cdns_dphy_power_on,
 	.power_off	= cdns_dphy_power_off,
+	.set_mode	= cdns_dphy_set_mode,
 };
 
 static int cdns_dphy_probe(struct platform_device *pdev)
-- 
2.30.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
