Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4478ECAC5B9
	for <linux-phy@archiver.kernel.org>; Sat, 27 Sep 2025 09:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XUEgEvb4rDmernOZOtUnZV5SIrso00OZBw9F+XVD8yo=; b=Dp2MJxPqAIyfiH
	+6s8so1vckeNf/ehHR8mEq+CrvXIJkMgExcz9MVTSt7H3HP5xbgfgPtvdRk9QtNiZWkj7D9wD17ff
	Kk8fxbpAje6k4X04IqjYUsQYQeYXJYrxu3PohbzPht+lcqqRmfvY/iCSPzLck5UVRAKknvvmSVHwL
	Zs3qgQPZewU2kHjWEpq/5HaNw2B9ck2HCrK+Rcw5r05Dztm89EJ5U3vphtl+yGEzLQGXTaB9Neem0
	CCC1Nf2BaWuH6d6lKjy5sYlZZe5gxT0jTThdX3/NXM+hL7pSBAWHU+Mv/TDc/XL9PDgSw8okQnWoG
	k01vmflLvQy0AgMuFgaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2RRT-00000008kIO-3jaQ;
	Sat, 27 Sep 2025 09:42:11 +0000
Received: from out-170.mta0.migadu.com ([91.218.175.170])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v2RRQ-00000008kGH-1Gcf
	for linux-phy@lists.infradead.org;
	Sat, 27 Sep 2025 09:42:10 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1758966123;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=jJjBFBfPE6u5zLZVPpTcas9pDk+d/zRNn1H+l1sjsiA=;
	b=OJIGcH/PqeyTMTwxhWqadvm8TobreeF1C3abUHlNXW2fRXMwuXFdXLZvfkdgCWiICjQ0gl
	VG7wkJwnLvxPU5cHeINO7ZpCK84wcy1B+pj3yYt7Buj3KM6evQOVGgHmWkjK88lWNp39Sr
	ngpDLGVwIGOE76oiylVnXynxMGvclwtCTz6BdZqQGT7eeOLYFam8shN2+7FAdKxes8NCG6
	l/Ut/f2ofL03QjYzuV2YTaIj45llSrotjcocaFxgVVgo8OEhoGObLv2LWj5Q9Mqh9L2zUF
	K6xX0l0nhUEI0P4+AuJOJNdluUu25ODIlLSwHUhsQjRKjCERIcRzhc0eO/6JCg==
From: Val Packett <val@packett.cool>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Val Packett <val@packett.cool>,
	Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: qcom: qmp-combo: Move pipe_clk on/off to common
Date: Sat, 27 Sep 2025 06:17:32 -0300
Message-ID: <20250927093915.45124-2-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250927_024208_756434_5D9F28A2 
X-CRM114-Status: GOOD (  18.20  )
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

Keep the USB pipe clock working when the phy is in DP-only mode, because
the dwc controller still needs it for USB 2.0 over the same Type-C port.

Tested with the BenQ RD280UA monitor which has a downstream-facing port
for data passthrough that's manually switchable between USB 2 and 3,
corresponding to 4-lane and 2-lane DP respectively.

Note: the suspend/resume callbacks were already gating the enable/disable
of this clock only on init_count and not usb_init_count!

Signed-off-by: Val Packett <val@packett.cool>
---
o/

Just got my hands on a perfect test device for DP alt mode: a monitor with an
on-demand toggle between 2 and 4 lanes. (Started digging because I thought
I needed 4 lanes to use its full resolution and refresh rate, even though
it turned out to be the dpu adjusted mode clock check rejecting the modes,
patches for which are already posted.)

In [1] Konrad mentioned that "the hardware disagrees" with keeping the USB
PLL always on. I'm not sure what exactly was meant by disagreement there,
and I didn't find any specific code that touches that PLL in the driver,
so I decided to just try it anyway.

Before the changes, 4-lane mode would actually kill the USB 2.0 functionality
on the port, no recovery until reboot.

With this patch, I can switch the monitor between 4-lane and 2-lane modes
(with an unplug-replug cycle..) and the USB 2.0 devices attached through
the monitor keep working! (I verified the number of lanes used via dp_debug).

I'm sure it might not be that simple but from my limited and uninformed
understanding without any internal knowledge, the "sneaky workaround"
might actually be the intended way to do things?

Thanks,
~val

P.S. if I'm actually wrong and this is not acceptable for $reasons, the suspend
and resume callbacks would need to be changed to match the logic of having the
clk on depending on usb_init_count, not just the overall init_count.

[1]: https://lore.kernel.org/all/f21b7d52-4c3f-4e5b-bee7-f8b2945b5b02@oss.qualcomm.com/

---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 7b5af30f1d02..c4bbd738eba1 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3035,6 +3035,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
 	if (ret)
 		goto err_assert_reset;
 
+	/* In DP-only mode, the pipe clk is still required for USB2 */
+	ret = clk_prepare_enable(qmp->pipe_clk);
+	if (ret) {
+		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
+		return ret;
+	}
+
 	qphy_setbits(com, QPHY_V3_DP_COM_POWER_DOWN_CTRL, SW_PWRDN);
 
 	/* override hardware control for reset of qmp phy */
@@ -3103,6 +3110,7 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
+	clk_disable_unprepare(qmp->pipe_clk);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
 
@@ -3205,12 +3213,6 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 
 	qmp_configure(qmp->dev, serdes, cfg->serdes_tbl, cfg->serdes_tbl_num);
 
-	ret = clk_prepare_enable(qmp->pipe_clk);
-	if (ret) {
-		dev_err(qmp->dev, "pipe_clk enable failed err=%d\n", ret);
-		return ret;
-	}
-
 	/* Tx, Rx, and PCS configurations */
 	qmp_configure_lane(qmp->dev, tx, cfg->tx_tbl, cfg->tx_tbl_num, 1);
 	qmp_configure_lane(qmp->dev, tx2, cfg->tx_tbl, cfg->tx_tbl_num, 2);
@@ -3254,8 +3256,6 @@ static int qmp_combo_usb_power_off(struct phy *phy)
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	clk_disable_unprepare(qmp->pipe_clk);
-
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-- 
2.51.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
