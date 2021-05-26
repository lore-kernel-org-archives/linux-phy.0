Return-Path: <SRS0=0r5I=KV=lists.infradead.org=linux-phy-bounces+linux-phy=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3C2FBC47088
	for <linux-phy@archiver.kernel.org>; Wed, 26 May 2021 16:51:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 052866113D
	for <linux-phy@archiver.kernel.org>; Wed, 26 May 2021 16:51:31 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 052866113D
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=ti.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:CC:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=naLvyfTQuElQBANMdjqMJRSMdty6E/2ojlKM5olN+Ns=; b=pR/KcwBl0AB4v7
	BI++l8kSGLGQaSIPbFlGFuQ9Ut+tLzK1WciyoqG5aHb2xEwDvJw6/KpTIOdMcJFLFCh2SVfZ+Gcm1
	3c64cwHXMXGLZLM/pVGvWO4q3rOtdugJYhlDOQqIiMJe8pywnFiOskYUu/k0Ug2uBFG+zvLAL9riX
	SGZXzbn16LohYLTMzW+/KWV0zIqjuhm24B15HZ9juzmv4pppDJwDK8uRf7EXh/CN74baEzJwo0pt6
	0+5x+fAjX0UokXTrlI43PWzgfFHyHWGgH2til6cq95tc41mFFFSSX4uaUrPn7MIqKBdpIbxQZ5Fgj
	XhUkgihvFHzwBRUfjq2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llwkk-00FsW8-M2; Wed, 26 May 2021 16:51:30 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llvNe-00FKWh-5h
 for linux-phy@lists.infradead.org; Wed, 26 May 2021 15:23:36 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 14QFNUZL001547;
 Wed, 26 May 2021 10:23:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1622042610;
 bh=pEYv/cVE8dpSFqbeMd7nSL6UuSjcYO8ph/UZQDKS7+g=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=bscH4fWQadjdVVcQPI0Aq/PIEhgMbuTtGhCuPdWwCp1Hu3fuhly+Gniw9wXjTgsBz
 gpcoSVRRHuuXWgswp+blEYud8l/qBiIHKpgKXah4xybgeJPHjw8jl0EJ3af1LTDeVc
 kvCOXKMUNwunomPNs7kpPhYI648B0PvwY4h+H/BI=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 14QFNUA5093201
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 May 2021 10:23:30 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2; Wed, 26
 May 2021 10:23:30 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2176.2 via
 Frontend Transport; Wed, 26 May 2021 10:23:30 -0500
Received: from pratyush-OptiPlex-790.dhcp.ti.com (ileax41-snat.itg.ti.com
 [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 14QFN9Jb056314;
 Wed, 26 May 2021 10:23:25 -0500
From: Pratyush Yadav <p.yadav@ti.com>
To: Maxime Ripard <mripard@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>, Pratyush Yadav
 <p.yadav@ti.com>, Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul
 <vkoul@kernel.org>, Peter Ujfalusi <peter.ujfalusi@gmail.com>, Steve
 Longerbeam <slongerbeam@gmail.com>,
 Benoit Parrot <bparrot@ti.com>, <linux-media@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-phy@lists.infradead.org>, <dmaengine@vger.kernel.org>
CC: Vignesh Raghavendra <vigneshr@ti.com>, Tomi Valkeinen
 <tomi.valkeinen@ideasonboard.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: [PATCH v2 03/18] phy: cdns-dphy: Allow setting mode
Date: Wed, 26 May 2021 20:52:53 +0530
Message-ID: <20210526152308.16525-4-p.yadav@ti.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210526152308.16525-1-p.yadav@ti.com>
References: <20210526152308.16525-1-p.yadav@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_082334_329022_F5C6205C 
X-CRM114-Status: GOOD (  13.95  )
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
