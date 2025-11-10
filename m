Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 302B9CCFA13
	for <linux-phy@archiver.kernel.org>; Mon, 10 Nov 2025 14:08:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h0vGLMcgtQ9TNzZhZIBTgm6HAP3pCi1n5UTsrEeJoVY=; b=lO6sqKVW/jXzjm
	ll4cIF7A9oo/gHEUZtrXYV7eQu7DEE59tAbFUTCxD04LhkCgvJ5QI2hGuTI4LeibfMUQ770SiuLcI
	C85yr3pVmuKlwKA+XArbD09hEcgNTw84bh9h8iwNui6VceGpAhvsXDonyihz06JAZOvgOuxpLqdsI
	eVP5SGKJOetY6QdlJv7cSu+FF7EPXXGMbwo3VbHyx+iMUFlH+DFPugXNm7fKLML/E3x27h908ENu1
	NfWKtBjiMNQ/FRE1aYHxbVSe8aYVrliXAL82rza2aGQc/tdAvouiKNEEkk3gZojSdef9I3EeS6UKo
	SuvlCn0HpOp64POKeMew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISZ1-00000005YL3-3js0;
	Mon, 10 Nov 2025 14:08:11 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vISYx-00000005YKX-1Kam
	for linux-phy@lists.infradead.org;
	Mon, 10 Nov 2025 14:08:10 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 84F8F1A19AB;
	Mon, 10 Nov 2025 14:08:05 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 57207606F6;
	Mon, 10 Nov 2025 14:08:05 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id BBFEC10371915;
	Mon, 10 Nov 2025 15:08:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1762783684; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=ZwlciqkJDJ8+3wdEKOLMDdM6H1SzddqaokbU7lqnBxE=;
	b=w7PVHp5dP8q9BdUvrlCkiHTeIQk9lAiNjbMquf/CV1IF+mrfrCt4MmDl9CMloJneK3UJwJ
	XbNDJEpZlq+v99oIpiXr+gq5NoHIoPIpdb/WMPZTKyWiHRzJtxKaF1/7rJPzZl8t/P75Rb
	+lJowsKOa23VnPOWJAaxpjuvZhxehJt0/Vbt2Zxt2OH26aJDYB0Z58cwkSZf4dQPQs/0HS
	+ukBj5kDM4v4fGpfny7On5l59EsOvcou4tJjwpuMWJOfmCf7PGz04Eepcog8+lXvJEuy3h
	JvkZ2lGmJe5GqIqVeLuublM3GwYxIdGYHdsQS4fKKXxb+fbwB4+4vlHmHYUaHw==
From: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
Date: Mon, 10 Nov 2025 15:07:57 +0100
Subject: [PATCH] phy: cadence-torrent: restore parent clock for refclk
 during resume
MIME-Version: 1.0
Message-Id: <20251110-phy-cadence-torrent-resume-restore-refclk-parent-v1-1-1be87af7d19e@bootlin.com>
X-B4-Tracking: v=1; b=H4sIALzxEWkC/x2NwQrCQAxEf6XkbKBbWKH+inhY08QGdbtkW1FK/
 920p+HNg5kVKptyhUuzgvFHq07ZIZwaoDHlB6MOztC1XQwhtFjGH1IaOBPjPJlxntG4Lm/ew5s
 9hV5PLOmQEnu5R6FzLwl8trjW73F5vW3bH8so/D2CAAAA
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
X-CRM114-CacheID: sfid-20251110_060807_519789_9784D4DA 
X-CRM114-Status: GOOD (  10.11  )
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
 drivers/phy/cadence/phy-cadence-torrent.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/phy/cadence/phy-cadence-torrent.c b/drivers/phy/cadence/phy-cadence-torrent.c
index 37fa4bad6bd7..17d09e7d866d 100644
--- a/drivers/phy/cadence/phy-cadence-torrent.c
+++ b/drivers/phy/cadence/phy-cadence-torrent.c
@@ -384,6 +384,7 @@ struct cdns_torrent_phy {
 	struct regmap_field *phy_reset_ctrl;
 	struct regmap_field *phy_pcs_iso_link_ctrl_1[MAX_NUM_LANES];
 	struct clk_hw_onecell_data *clk_hw_data;
+	int refclk_parent;
 };
 
 enum phy_powerstate {
@@ -3329,8 +3330,13 @@ static const struct cdns_torrent_vals sgmii_qsgmii_xcvr_diag_ln_vals = {
 static int cdns_torrent_phy_suspend_noirq(struct device *dev)
 {
 	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
+	struct clk_hw *refclk_hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
+	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(refclk_hw);
 	int i;
 
+	regmap_field_read(refclk_driver->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4],
+			  &cdns_phy->refclk_parent);
+
 	reset_control_assert(cdns_phy->phy_rst);
 	reset_control_assert(cdns_phy->apb_rst);
 	for (i = 0; i < cdns_phy->nsubnodes; i++)
@@ -3349,9 +3355,14 @@ static int cdns_torrent_phy_suspend_noirq(struct device *dev)
 static int cdns_torrent_phy_resume_noirq(struct device *dev)
 {
 	struct cdns_torrent_phy *cdns_phy = dev_get_drvdata(dev);
+	struct clk_hw *refclk_hw = cdns_phy->clk_hw_data->hws[CDNS_TORRENT_REFCLK_DRIVER];
+	struct cdns_torrent_refclk_driver *refclk_driver = to_cdns_torrent_refclk_driver(refclk_hw);
 	int node = cdns_phy->nsubnodes;
 	int ret, i;
 
+	regmap_field_write(refclk_driver->cmn_fields[CMN_CDIAG_REFCLK_DRV0_CTRL_4],
+			   cdns_phy->refclk_parent);
+
 	ret = cdns_torrent_clk(cdns_phy);
 	if (ret)
 		return ret;

---
base-commit: 415559c31bd4f19fde440f759d529a448743fc8c
change-id: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa

Best regards,
-- 
Thomas Richard (TI.com) <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
