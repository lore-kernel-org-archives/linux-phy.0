Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 976CED11180
	for <linux-phy@archiver.kernel.org>; Wed, 26 Nov 2025 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=enXLmsEU0Sq+3oPDqs2LlytAh2n2Oxf4tACRPndR2hc=; b=0msUsaCR9Y3Dl7
	L+9OBvxt0evxSnSypDXnkBk3h51iftNrp2/VvdECuh8dHAVsWiqFr+ENIWQewY8+GHFvlOVE70yBT
	AQA0RW4wq4uizr2s6Tac+Ctc2pZzz8uDvf1jkwEFN8ASHWRkQrlw5Ko1ZQPB/vifC7QRwu6mBeXIE
	B9RAcY7XBXYXjR5NJRVhuVpBpOfWLEjg6QtkDbZJAf2kiSF5famVTvBc1MHY5I4+EpCsmjzQ49tBK
	gKCgJUuuc6Cu3D6VMm7CzObkv8/JEc2SmMZsUb7FPka6F4tix57mGCcji7qOP+tKPc4NVmgsbRt23
	vEfaxprhtJAfUD/+zbkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOHWj-0000000FBhK-0nwu;
	Wed, 26 Nov 2025 15:33:53 +0000
Received: from smtpout-04.galae.net ([185.171.202.116])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOHWf-0000000FBgC-1Pbb
	for linux-phy@lists.infradead.org;
	Wed, 26 Nov 2025 15:33:51 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-04.galae.net (Postfix) with ESMTPS id 3B903C15D79;
	Wed, 26 Nov 2025 15:33:22 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id E710B60721;
	Wed, 26 Nov 2025 15:33:44 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 8166D102F1B84;
	Wed, 26 Nov 2025 16:33:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1764171224; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=lsp+NJNBTPSySlUe7BHmxpBQDMNBrZS8TeTFL/zK5No=;
	b=HLYw/BQSdsL+LQRm985OiJHaD7YVi4TXpLl1L3FK/qmSm5d4kmukfWQq75vqVSJj7mKiRQ
	RgMKdN8CJG1srErTMLjDYaXigkRD8WKNhWpV2qPpOHhvbGrmH6G4XjtGR324QdobGovNEo
	Uxe/qjb/8niE2EjCzmHnkCPpVta46+wb0J4RyUGHyUKwTPGg8ApVjYBbkU3jU8Vba8A5+Q
	LJhfWzp2NqxaJjqNPJrYC3qdD1/ex66rCFtMvNDkzxjFlbjFfnR4Hn7GhfMWh+ai9bYjs3
	o3eVc+5AtSL4soSZbXBcINX7yFAXHuVTuM++JU0YFQk6qaid20sxNdF6TdRUMg==
From: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
Date: Wed, 26 Nov 2025 16:33:37 +0100
Subject: [PATCH v2] phy: cadence-torrent: restore parent clock for refclk
 during resume
MIME-Version: 1.0
Message-Id: <20251126-phy-cadence-torrent-resume-restore-refclk-parent-v2-1-5d2eaa958b06@bootlin.com>
X-B4-Tracking: v=1; b=H4sIANAdJ2kC/6WOQQ6DMAwEv4J8riuCRCk99R+IQwhOsQoJSigqQ
 vy9Dl+ofFjNruz1DpECU4RHtkOglSN7J1BcMjCDdi9C7oWhyItSKZXjPGxodE/OEC4+BHILBoq
 fiZKIk9Sa8Y2zPkNb1rYrrbnVVoOcnSXm71nZtMIDp63t/GBVyf2jbFUo09G90rbqVU3PzvtlZ
 Hc1foL2OI4fj35gk/IAAAA=
X-Change-ID: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>, 
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251126_073349_535386_336C31DA 
X-CRM114-Status: GOOD (  11.30  )
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

While suspend and resume, parent clock config for refclk was getting lost.
So save and restore it in suspend and resume operations.

Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
---
Changes in v2:
- store parent configuration in cdns_torrent_refclk_driver.
- add cdns_torrent_refclk_driver_suspend/_resume() functions.
- use get_parent() and set_parent() operations to save and restore the
  configuration.
- Link to v1: https://lore.kernel.org/r/20251110-phy-cadence-torrent-resume-restore-refclk-parent-v1-1-1be87af7d19e@bootlin.com
---
 drivers/phy/cadence/phy-cadence-torrent.c | 23 +++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 37fa4bad6bd72..877f22177c699 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -397,6 +397,7 @@ struct cdns_torrent_refclk_driver {
 	struct clk_hw		hw;
 	struct regmap_field	*cmn_fields[REFCLK_OUT_NUM_CMN_CONFIG];
 	struct clk_init_data	clk_data;
+	u8 parent_index;
 };
 
 #define to_cdns_torrent_refclk_driver(_hw)	\
@@ -3326,11 +3327,29 @@ static const struct cdns_torrent_vals sgmii_qsgmii_xcvr_diag_ln_vals = {
 	.num_regs = ARRAY_SIZE(sgmii_qsgmii_xcvr_diag_ln_regs),
 };
 
+static void cdns_torrent_refclk_driver_suspend(struct cdns_torrent_phy *cdns_phy)
+{
+	struct clk_hw *hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
+	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(hw);
+
+	refclk_driver->parent_index = cdns_torrent_refclk_driver_get_parent(hw);
+}
+
+static int cdns_torrent_refclk_driver_resume(struct cdns_torrent_phy *cdns_phy)
+{
+	struct clk_hw *hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
+	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(hw);
+
+	return cdns_torrent_refclk_driver_set_parent(hw, refclk_driver->parent_index);
+}
+
 static int cdns_torrent_phy_suspend_noirq(struct device *dev)
 {
 	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
 	int i;
 
+	cdns_torrent_refclk_driver_suspend(cdns_phy);
+
 	reset_control_assert(cdns_phy->phy_rst);
 	reset_control_assert(cdns_phy->apb_rst);
 	for (i = 0; i < cdns_phy->nsubnodes; i++)
@@ -3352,6 +3371,10 @@ static int cdns_torrent_phy_resume_noirq(struct device *dev)
 	int node = cdns_phy->nsubnodes;
 	int ret, i;
 
+	ret = cdns_torrent_refclk_driver_resume(cdns_phy);
+	if (ret)
+		return ret;
+
 	ret = cdns_torrent_clk(cdns_phy);
 	if (ret)
 		return ret;

---
base-commit: c0ea2ae3b2d7fb9eb4bc14400e39d8fb4f510714
change-id: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa

Best regards,
-- 
Thomas Richard (TI.com) <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
