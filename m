Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 128F6E9A02C
	for <linux-phy@archiver.kernel.org>; Thu, 19 Feb 2026 02:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3PuMr6N1EAahlzccFHQ8g9CdxWI/bgETIVBx2m+xrpQ=; b=i2GdXTC9dKqodY
	pXFi0qWjNpFiCiJOD0uP2wcwpxIf7Z9/Ukfg3adOvPUl+h6enES+cdYIxii1m1jCAnK9liJYEUCrG
	jquvHjGtnYzLRSow0BX75zP9l6tXLZlU6iW4WfsYk4sEJIA2oe3Oduaw9+q4EXthxrn3h4Ya/dzrb
	HPL1S+YQ68EBk4Xu38B4Y6sUXCRu2HFj51nr0SP8FF++jgIpJFxfljUCm+4QUCGcugyyLcO8mTnuE
	sMUs2HNlmS3AcqLk6X09ZjifS/NU5ePhZiVcRUIWdzkkrKhqQXJUsH38BgDAK5o/VdQ08YjQGz49n
	yYTteREUm5FNtRmaGMDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vstPZ-0000000AjBJ-38O2;
	Thu, 19 Feb 2026 02:05:22 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vstPY-0000000AjAW-2Ekf
	for linux-phy@lists.infradead.org;
	Thu, 19 Feb 2026 02:05:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id CF2CF61864;
	Thu, 19 Feb 2026 02:04:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BEF04C19422;
	Thu, 19 Feb 2026 02:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771466699;
	bh=VG/a/ERR2hcAd520CjwxeMsRARR+PAvUI+a5EbsPvTE=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=gOS/eSICkD1U/Ju2+ZCHxFP065w209fur+etkL4IG+u2PaaESLzeIj7bkHgYiDeTZ
	 OgADt9Ofl0sgNNN+XLgqiHXuZJwd+Pv83NpRgljat9+Rj1O8uebKws8aeRZ8JZJJjx
	 whWDlMkr7uf0cQecwh1qKr1oZ1DwjypoBA0I9aQN8s4OQ9e0VanIg3XIWil9cgoRD7
	 6y48GO9BCltSf2XOX3W7cN8lP09oljeklmNu8SxUHUh/dg7K+dnAdTr+aS+vLNo66l
	 J0kuO6IvlODBz6ehx4qKLE5d2LqECo2/I58Jo+2IbMcQkozpQLABgBHyu0Q/o+QIkR
	 jUm2D6KRx+dLA==
From: Sasha Levin <sashal@kernel.org>
To: patches@lists.linux.dev,
	stable@vger.kernel.org
Cc: "Thomas Richard (TI.com)" <thomas.richard@bootlin.com>,
	Vinod Koul <vkoul@kernel.org>,
	Sasha Levin <sashal@kernel.org>,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH AUTOSEL 6.19-6.12] phy: ti: phy-j721e-wiz: restore mux selection during resume
Date: Wed, 18 Feb 2026 21:04:04 -0500
Message-ID: <20260219020422.1539798-28-sashal@kernel.org>
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

[ Upstream commit 53f6240e88c9e8715e09fc19942f13450db4cb33 ]

While suspend and resume mux selection was getting lost. So save and
restore these values in suspend and resume operations.

Signed-off-by: Thomas Richard (TI.com) <thomas.richard@bootlin.com>
Link: https://patch.msgid.link/20251216-phy-ti-phy-j721e-wiz-resume-restore-mux-sel-v1-1-771d564db966@bootlin.com
Signed-off-by: Vinod Koul <vkoul@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---

LLM Generated explanations, may be completely bogus:

Good. The current tree has the resume function but no suspend function
(the suspend slot is NULL), which matches the pre-patch state in the
diff.

## Analysis Summary

### What the commit does:

1. **Adds a new field** `mux_sel_status[WIZ_MUX_NUM_CLOCKS]` (3 ints) to
   the `struct wiz` to store mux selection state.

2. **Adds a `wiz_suspend_noirq()` callback** that reads the 3 mux
   selection values from hardware registers before suspend, saving them
   in the new array.

3. **Modifies `wiz_resume_noirq()`** to write the saved mux selection
   values back to hardware registers at the beginning of resume, before
   the rest of the initialization.

4. **Updates the PM ops macro** from
   `DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, NULL, wiz_resume_noirq)` to
   `DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, wiz_suspend_noirq,
   wiz_resume_noirq)`.

### Bug being fixed:

The mux clock selection values (which control how the SERDES reference
clocks are routed) are lost during suspend because the hardware state is
not preserved. On resume, `wiz_resume_noirq()` called `wiz_clock_init()`
and `wiz_init()`, but these re-initialize the clocks to default values
rather than restoring the user/driver-configured mux selections. This
means after resume, the SERDES PHY may not work correctly because the
clock routing is wrong.

### Classification: **Suspend/resume bug fix**

This is a real hardware bug that affects users who suspend and resume
systems using the TI J721E SERDES PHY (common in TI K3 SoC
automotive/industrial platforms). Without this fix, the PHY may not
function correctly after resume, potentially breaking network, PCIe,
USB, or other SERDES-based interfaces.

### Stable kernel rule compliance:

1. **Obviously correct and tested**: Simple save/restore pattern using
   existing regmap_field_read/write APIs. The author works at Bootlin
   for TI platforms.
2. **Fixes a real bug**: Mux selection lost after resume = broken PHY
   after suspend/resume.
3. **Important issue**: Broken hardware functionality after
   suspend/resume.
4. **Small and contained**: ~20 lines of new code, single file, simple
   logic.
5. **No new features**: Restoring state that was lost is a bug fix, not
   a feature.

### Risk assessment:

- **Very low risk**: The save/restore pattern is straightforward and
  well-understood.
- **WIZ_MUX_NUM_CLOCKS is 3**: Only 3 register reads and 3 register
  writes are added.
- **Uses existing regmap_field APIs**: No new infrastructure needed.
- **Only affects TI J721E platforms**: Cannot cause regressions on other
  platforms.
- **Only affects suspend/resume path**: Cannot affect boot or normal
  operation.

### Dependencies:

The resume support was added in commit `b5539abdd013f` (v6.11). The
`wiz_clock_init()` function split was in commit `3c4e13cf9ead7` (also
v6.11). So this fix is applicable to stable trees v6.11+, and possibly
v6.12.y and v6.13.y LTS trees if they exist.

## Verification

- **git log** confirmed the driver was first added in commit
  `091876cc355d6` (phy: ti: j721e-wiz: Add support for WIZ module
  present in TI J721E SoC)
- **git tag --contains** confirmed resume support (`b5539abdd013f`) was
  introduced in v6.11
- **git tag --contains** confirmed `wiz_clock_init()` split
  (`3c4e13cf9ead7`) was also introduced in v6.11
- **Grep for `WIZ_MUX_NUM_CLOCKS`** confirmed it is defined as 3, making
  the save/restore loop iterate only 3 times
- **Grep for `mux_sel_status`** confirmed the field does not yet exist
  in the working tree (commit not yet applied)
- **Grep for `wiz_resume_noirq`** confirmed the current code has resume
  handler but NULL suspend handler, matching the pre-patch state
- **Read of the mux_sel_field usage** (lines 1031, 1056, 1172) confirmed
  these fields control clock mux selection in the WIZ initialization
  path
- **Unverified**: Whether any downstream users (e.g., Android, embedded
  distros) have reported this specific suspend/resume issue. The commit
  message states the problem directly but doesn't include "Reported-by:"
  tags.

## Conclusion

This is a small, well-contained suspend/resume bug fix for the TI J721E
WIZ PHY driver. It fixes a real hardware issue where clock mux
selections are lost during suspend, rendering the SERDES PHY non-
functional after resume. The fix uses a standard save/restore pattern
with minimal code additions (~20 lines in a single file). The risk of
regression is very low since it only affects the suspend/resume path on
TI K3 platforms. It meets all stable kernel criteria.

**YES**

 drivers/phy/ti/phy-j721e-wiz.c | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/ti/phy-j721e-wiz.c b/drivers/phy/ti/phy-j721e-wiz.c
index a8b440c6c46bb..ba31b0a1f7f79 100644
--- a/drivers/phy/ti/phy-j721e-wiz.c
+++ b/drivers/phy/ti/phy-j721e-wiz.c
@@ -393,6 +393,7 @@ struct wiz {
 	struct clk		*output_clks[WIZ_MAX_OUTPUT_CLOCKS];
 	struct clk_onecell_data	clk_data;
 	const struct wiz_data	*data;
+	int			mux_sel_status[WIZ_MUX_NUM_CLOCKS];
 };
 
 static int wiz_reset(struct wiz *wiz)
@@ -1654,11 +1655,25 @@ static void wiz_remove(struct platform_device *pdev)
 	pm_runtime_disable(dev);
 }
 
+static int wiz_suspend_noirq(struct device *dev)
+{
+	struct wiz *wiz = dev_get_drvdata(dev);
+	int i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++)
+		regmap_field_read(wiz->mux_sel_field[i], &wiz->mux_sel_status[i]);
+
+	return 0;
+}
+
 static int wiz_resume_noirq(struct device *dev)
 {
 	struct device_node *node = dev->of_node;
 	struct wiz *wiz = dev_get_drvdata(dev);
-	int ret;
+	int ret, i;
+
+	for (i = 0; i < WIZ_MUX_NUM_CLOCKS; i++)
+		regmap_field_write(wiz->mux_sel_field[i], wiz->mux_sel_status[i]);
 
 	/* Enable supplemental Control override if available */
 	if (wiz->sup_legacy_clk_override)
@@ -1680,7 +1695,7 @@ static int wiz_resume_noirq(struct device *dev)
 	return ret;
 }
 
-static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, NULL, wiz_resume_noirq);
+static DEFINE_NOIRQ_DEV_PM_OPS(wiz_pm_ops, wiz_suspend_noirq, wiz_resume_noirq);
 
 static struct platform_driver wiz_driver = {
 	.probe		= wiz_probe,
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
