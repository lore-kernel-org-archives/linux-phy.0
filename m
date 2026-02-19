Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19A25E9A02C
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 02:04:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NUYIu2AA6cEo7iJPSSTJatKieZu4PzCvBqIIXZH6yZ4=; b=DC0ScPYwub/jY0
	eds4cDkUU+U+WN8iwrtZYt4+FFnwofIe4izBZbRdSrclDZeIk92+rJ2k7h2sCMxK7C6NNFZ9sSRoP
	WWeqmu8MQzgUft8vRazFkbZZxZqY9m/3pg1sWPzP9b1wPpTqs1T06NfMBks3d4JR0TM+ohBjXZoND
	t/wVAUmimDufpzadZuH7dHIzNX9A5fR2RP3/d4nwXiLYze8xNJPUY1EBtLDB0XjKtW2mkh9uwuTiX
	5hdf+hU0WNC90RKrMnsc0LpvlYgP8f4xUAxkQz1X5B6pRH5YTYkrY/uRQt/n2qalX26puFNQEJ3xK
	O1Fi+3wv1+4LrHSw+tEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vstPT-0000000Aj8F-26SR;
	Thu, 19 Feb 2026 02:04:55 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vstPR-0000000Aj7B-3FXJ
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 02:04:53 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 217246132F;
	Thu, 19 Feb 2026 02:04:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E4E9C2BCB0;
	Thu, 19 Feb 2026 02:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771466692;
	bh=e6NMrq76++ecy0geh6Jz+iENGud9CnyXfiTKqmuZpl4=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=PuZjLIzrIsJU//QrkMDNcNPG/TadX40ubZ20TKRAMWR1syMhZbfUf3nF/xaJ7LCw1
	 pwMLeeDS7fhBTqhFXdoRpu3mWg/mbNbn8KkBbdkyUWWR281PgO0ECg/zt2Ch1CUhbV
	 q7h1pHC1KySuwC9HFWqTHl/wnyooTxhDK8GyC9Wv1GCPd+5wqh/uFKkVcLNvh0Fr5e
	 xtlNJu1zO3/RkZMAhFs10/4l/IeT8b/Hj+OR2rDBBUK67YUPcxi+H/zUur8EMjPUO4
	 b/AV3FXUIUuLZ/AB3XRZw3zSPt4owpVzHiZUXZXtKk7pbnUYBnR1V2HRnlQdvnc49Z
	 3s+T1A/KI4teA==
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH AUTOSEL 6.19-6.12] phy: cadence-torrent: restore parent clock for refclk during resume
Date: Wed, 18 Feb 2026 21:03:59 -0500
Message-ID: <20260219020422.1539798-23-sashal@kernel.org>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260219020422.1539798-1-sashal@kernel.org>
References: <20260219020422.1539798-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-stable-base: Linux 6.19.2
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

From: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>

[ Upstream commit 434e1a0ee145d0389b192252be4c993f86cf1134 ]

While suspend and resume, parent clock config for refclk was getting lost.
So save and restore it in suspend and resume operations.

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
Link: https://patch.msgid.link/20251216-phy-cadence-torrent-resume-restore-refclk-parent-v3-1-8a7ed84b47e3@bootlin.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

The verification confirms all the key elements:

1. **`cdns_torrent_refclk_driver_get_parent` and
   `cdns_torrent_refclk_driver_set_parent`** exist and are well-defined
   clock operations that read/write register fields for the clock mux
   configuration.

2. **`CDNS_TORRENT_REFCLK_DRIVER`** is defined as index `0` in
   `include/dt-bindings/phy/phy-cadence.h` and is used to index into
   `clk_hw_data->hws[]`.

3. **Suspend/resume was introduced in commit `0da27ed080b2c`** (April
   2024) by the same author (Thomas Richard). This means the
   suspend/resume feature already exists in recent kernels, and this is
   a bug fix to that existing feature.

4. All structures and fields referenced by the new code are actively
   used in the driver.

## Verification Summary

- **Verified**: `cdns_torrent_refclk_driver_get_parent()` and
  `cdns_torrent_refclk_driver_set_parent()` exist and operate on
  register fields via regmap - these are the standard clock parent
  operations.
- **Verified**: `CDNS_TORRENT_REFCLK_DRIVER` = 0, used as clock index in
  `clk_hw_data->hws[]`.
- **Verified**: Suspend/resume functions were added in commit
  `0da27ed080b2c` (April 2024) by the same author - this is a follow-up
  fix to that code.
- **Verified**: The `parent_index` field and new suspend/resume helpers
  only use existing, proven APIs.
- **Verified**: The patch is reviewed by Neil Armstrong and signed off
  by the PHY subsystem maintainer Vinod Koul.
- **Note**: The suspend/resume support was introduced in v6.11 merge
  window timeframe (April 2024), so this fix is relevant for stable
  trees that include that commit.

## Classification

This is a **clear bug fix** for suspend/resume functionality:
- **Bug type**: State loss during power transitions (clock parent
  configuration lost)
- **Impact**: PHY may not function correctly after resume, potentially
  breaking PCIe, USB, or DisplayPort links
- **Scope**: Small, contained, single-driver fix (~22 lines)
- **Risk**: Very low - uses existing APIs, standard save/restore pattern
- **Dependencies**: Requires the suspend/resume support commit
  (`0da27ed080b2c`) to be present in the stable tree

## Conclusion

This commit fixes a real suspend/resume bug where clock parent
configuration is lost, causing the PHY to malfunction after resume. The
fix is small, obviously correct, well-reviewed, and follows standard
kernel suspend/resume patterns. It meets all stable kernel criteria:
fixes a real bug, is small and contained, introduces no new features,
and has minimal regression risk.

The only consideration is that the stable tree must already contain the
initial suspend/resume support (commit `0da27ed080b2c` from ~April
2024), which limits this to newer stable branches (6.11+).

**YES**

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
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
