Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88D5BFD0046
	for <linux-phy@archiver.kernel.org>; Sat, 28 Feb 2026 22:07:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wslE/alA7LKUlxGT/CuyuiNMike2f8nsZjcm1+uPs+U=; b=MREGo2Mi91hjXA
	Xu+wj67gdoBX7sDejm1OuKI7KMXisZbfuHcNbqgoMUkeQ8mU6jE/W7SJOMhMF2Pw2CwIHYYT+bce1
	72DHR66TuSf9arFUu7YsEJZ57CmNqNLp0EVmfL8eP/mrcjvGHe2nT/vIhAIU+zyKXq8SmXMxG869k
	QeHjh0xYsGUWPkMZMZgJ+9DnKTmYTE4dOeYlw9c3wy5M7jLqlnEFMshV0Q0s5jY39GHxSDLPo5qCb
	PAHmL/TMxah+mD7ot3bfkn+9sIP4xIGHTmrjz6hnm+PNeUctO3Dkxu9tiUGxtlUaaIZ+FcDxK2Hb7
	fSWceToY2CEYK2joORhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwSTX-0000000AJY9-1tvZ;
	Sat, 28 Feb 2026 22:07:52 +0000
Received: from out-173.mta0.migadu.com ([2001:41d0:1004:224b::ad])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vwSTU-0000000AJXm-2wgG
	for linux-phy@lists.infradead.org;
	Sat, 28 Feb 2026 22:07:50 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=packett.cool;
	s=key1; t=1772316463;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=V5AVxV03NAnElMqKItv7U4khI5BMEJHhDRtUcMyS+eo=;
	b=YjkFqDs0Pxqc6Amt9jN4cWcFSP9VFUm6lk1ITcE6ViWCH0FuiwyK304YH4BNvDZSx/LQmn
	vgAbnG7qp50XXKbxySTAEHWdQVq4L0p7bl2+NaMr5bFcwLk7ZmtGe8On7nz75K1PRphGlI
	o7eBfrzHkgkkf337+73WPGL18U6y4SgQpiwxzFMGmXs3Cfufc0zjvitVdE+sFwOmYTjGe7
	/f1nndsJNs9sisqlYghSgdfq+/IdXUMT42svEJPQ5jSgQdJv7HtHNrleQI2VX3MXlRRBpZ
	yraEcRL6l6V/b7/915pvJHKVAv6v2IOSYHkLtIJL1TrpvieLSi2mmfEuowWPjg==
From: Val Packett <val@packett.cool>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
	Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Val Packett <val@packett.cool>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] phy: qcom: qmp-combo: Move pipe_clk on/off to common
Date: Sat, 28 Feb 2026 19:05:38 -0300
Message-ID: <20260228220634.22778-2-val@packett.cool>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260228_140748_974604_CED8F497 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
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
See https://lore.kernel.org/all/389ca5d3-a698-4dac-911c-39ba057e3d17@oss.qualcomm.com/ for more info.
BTW https://lore.kernel.org/all/20260205160240.748371-2-loic.poulain@oss.qualcomm.com/ helped with coldplug.

v2: Reorder disables as suggested
v1: https://lore.kernel.org/all/20250927093915.45124-2-val@packett.cool/
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index 93f1aa10d400..28428a8d1192 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -3691,6 +3691,13 @@ static int qmp_combo_com_init(struct qmp_combo *qmp, bool force)
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
@@ -3768,6 +3775,7 @@ static int qmp_combo_com_exit(struct qmp_combo *qmp, bool force)
 
 	reset_control_bulk_assert(cfg->num_resets, qmp->resets);
 
+	clk_disable_unprepare(qmp->pipe_clk);
 	clk_bulk_disable_unprepare(qmp->num_clks, qmp->clks);
 
 	regulator_bulk_disable(cfg->num_vregs, qmp->vregs);
@@ -3871,12 +3879,6 @@ static int qmp_combo_usb_power_on(struct phy *phy)
 
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
@@ -3922,8 +3924,6 @@ static int qmp_combo_usb_power_off(struct phy *phy)
 	struct qmp_combo *qmp = phy_get_drvdata(phy);
 	const struct qmp_phy_cfg *cfg = qmp->cfg;
 
-	clk_disable_unprepare(qmp->pipe_clk);
-
 	/* PHY reset */
 	qphy_setbits(qmp->pcs, cfg->regs[QPHY_SW_RESET], SW_RESET);
 
-- 
2.52.0


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
