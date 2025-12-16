Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 438CAD5E374
	for <linux-phy@archiver.kernel.org>; Tue, 16 Dec 2025 14:24:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TophbAaS2y/a8u7ihJ+KjC9gmj3ISqzJMsZniXI1Nsg=; b=Vm9322RV7V88Df
	tnx2exenm3u9Fkxo8+9Da43zTsAtVc26pPEWQoOF1Vh4LQ59JA0/d3XW1IvBLGXJoRfAA2QzB8rWm
	GyYqkfJIgsvJ5K7vflzEaYErMzLX3beOxFuxhcfXkHbhPAkCtcG03y8+CDNaFUBIqGGhTwMHg8wMH
	vFhigH7ywYCrkW4zdWUCoF/xLjy2C8ZcoEYdG0RpWNcwBo22qTZH/ravekRpvnCNSMAOezEWgFRc1
	j4lFspHHsDsZkNFk8U+4T7IaIcY/67jfhD4xtK1MG4edWOaVurmsSfaOuWCz7iFKtZ0mNVMHHnewf
	z1+pOgFbVrXDxzhVDgUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVVyp-00000005Kp7-3e8x;
	Tue, 16 Dec 2025 14:24:47 +0000
Received: from smtpout-03.galae.net ([185.246.85.4])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVVym-00000005Knl-0jyh
	for linux-phy@lists.infradead.org;
	Tue, 16 Dec 2025 14:24:46 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-03.galae.net (Postfix) with ESMTPS id B88AD4E41C2F;
	Tue, 16 Dec 2025 14:24:38 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 839B46071C;
	Tue, 16 Dec 2025 14:24:38 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id C5DD611943685;
	Tue, 16 Dec 2025 15:24:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1765895073; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding; bh=d8MYPohReUBGKYu7q446IwdTcfInpw+Aoljj4WUmMaI=;
	b=Zl/81Ci17plA02vrBV7Gzl/e1Gw/F3PB3Uq8TMfK1VP8zlv9UDaruRXPsa7q0fsHIzsui6
	ksQ2GJaTaAWGJl506DW+vvl47AnDqqbuLr4A5IEwznPyvqcLq+eEtp/bkBUVdsBZNinG71
	QxBXscKOnmLiPCqmbYDSdku8vQafTk5bSd6cf9YF6qIVYZJlpvbAUksSqvk7VTZSAbD8Vu
	eBIfquUvm2SvFDw/ERlaUuTTxKT0Re55APQ6DntF5uy+FTPN07xAxrB2vLEtISMNWWJZej
	3/t+s39Za944a4b3AIOsl5JS/SRJAWsnJ+T1mUcI+KQwaStCBUgYkV4QoCvi4A==
From: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
Date: Tue, 16 Dec 2025 15:24:25 +0100
Subject: [PATCH v3] phy: cadence-torrent: restore parent clock for refclk
 during resume
MIME-Version: 1.0
Message-Id: <20251216-phy-cadence-torrent-resume-restore-refclk-parent-v3-1-8a7ed84b47e3@bootlin.com>
X-B4-Tracking: v=1; b=H4sIAJhrQWkC/6WOzQ7CIBCEX6XhLKZgaIsn38N44GexxBYaqMSm6
 bsLPelVs4fJzGT32xVFCBYiOlcrCpBstN5lczpUSPXC3QFbnT2iNWWEkBpP/YKV0OAU4NmHAG7
 GAeJzhCI5KWrU8MCT2EvDuJHMqIYbgfLZKdf2tSOvt+x7W7aW/YNESvoHLBGcR0LXCtNqwuEiv
 Z8H647Kj6jgEv1A0OYHBM0IpikIwVkn6+YbsW3bG10rUv9VAQAA
X-Change-ID: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Gregory CLEMENT <gregory.clement@bootlin.com>, Udit Kumar <u-kumar1@ti.com>, 
 Prasanth Mantena <p-mantena@ti.com>, Abhash Kumar <a-kumar2@ti.com>, 
 linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_062444_351695_ACC2482C 
X-CRM114-Status: GOOD (  10.93  )
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

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
---
Changes in v3:
- catch RB tag.
- Link to v2: https://lore.kernel.org/r/20251126-phy-cadence-torrent-resume-restore-refclk-parent-v2-1-5d2eaa958b06@bootlin.com

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
index 37fa4bad6bd7..877f22177c69 100644
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
base-commit: 390f8dfb2f9876eeb827976fa26def5537440249
change-id: 20251110-phy-cadence-torrent-resume-restore-refclk-parent-f59fb5fc69fa

Best regards,
-- 
Thomas Richard (TI.com) <thomas.richard@bootlin.com>


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
