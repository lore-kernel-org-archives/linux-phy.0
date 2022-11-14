Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 51F42C3E8A8
	for <linux-phy@archiver.kernel.org>; Mon, 14 Nov 2022 08:14:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AD1uXAMQuWb2/aZJ1xIZvOMqwFhzXYFRIWiOu5UpfHo=; b=u8F1ZOmWf9C8KZ
	v6j8Bf2l1B9ep65C/py0jrkURHGbK8fjq5GA+FeMWJZaLDlFfU3MmF0rjY69yw5BOovrAyl2ZKdf2
	UAnMec1knytgy6n8s165RQfB5vZryw6M/LeuwpXk5c3dVJZXtW1rmoGv0CQsflq/cPkULKq0ZcNni
	2eic6Wv4XdWUOZT/IE2mNDUm5rCnGiS6rSp2fMOhXFXYPfYkTsGmXbjW33mhesXPmJvykAaxsvIvp
	fCOesULblZEw9gq+HYYCmalN0DTjbtMXMCDu8GsR+MKXtu9BALKA9IAhL2Z4IFlNOG0d9jP/piNhj
	ndrES+g2F71k6Lfv7z3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUbz-00Ghxr-J0; Mon, 14 Nov 2022 08:14:35 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ouUbw-00Ghru-6m
	for linux-phy@lists.infradead.org; Mon, 14 Nov 2022 08:14:34 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id 8D25560EEB;
	Mon, 14 Nov 2022 08:14:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1536CC43145;
	Mon, 14 Nov 2022 08:14:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668413669;
	bh=NzS+/VskG+KkDUr6qPiVoEuNjsO5Y/0j9nTuX6m8hXk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=ZW9zqD/l38xk1Ff/d2yzy/ApfbNb3a3nqetZh/5Hv0Hf0tJmY3YhLO8Ve9zjItkyX
	 iFH8E93XMpK1GJhv3OBUGe+s0gBeDEaFEZB2JCYPT0Z358kh6eT1FKiv+lCaGqaVbx
	 utYfXeD6xwOuuMTCSknGZOYzckNvgN9yBCLZuzc+4W64JThaFuFJv8GV/MuveU166q
	 1ICXlgPgqWumy5KSXB8eTMzfYTEmQ8mZlT11HKdoZX0MRW49pxoH4SzedaACWTn/CU
	 B3zbbH+l+eqzWxBXPmvGpnA+kTseD+C6wLOUc0geX4PubPYH1xhkH9UAfUJWRX5wPL
	 pjzMhet1EtdFQ==
Received: from johan by xi.lan with local (Exim 4.94.2)
	(envelope-from <johan+linaro@kernel.org>)
	id 1ouUbM-0001L0-O4; Mon, 14 Nov 2022 09:13:56 +0100
From: Johan Hovold <johan+linaro@kernel.org>
To: Vinod Koul <vkoul@kernel.org>
Cc: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Johan Hovold <johan+linaro@kernel.org>,
	stable@vger.kernel.org
Subject: [PATCH v2 2/6] phy: qcom-qmp-combo: fix sdm845 reset
Date: Mon, 14 Nov 2022 09:13:42 +0100
Message-Id: <20221114081346.5116-3-johan+linaro@kernel.org>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221114081346.5116-1-johan+linaro@kernel.org>
References: <20221114081346.5116-1-johan+linaro@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221114_001432_338643_ED58AFAE 
X-CRM114-Status: GOOD (  11.89  )
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

The SDM845 has two resets but the DP configuration erroneously described
only one.

In case the DP part of the PHY is initialised before the USB part (e.g.
depending on probe order), then only the first reset would be asserted.

Add a dedicated configuration for SDM845 rather than reuse the
incompatible SC7180 configuration.

Fixes: d88497fb6bbd ("phy: qualcomm: phy-qcom-qmp: add support for combo USB3+DP phy on SDM845")
Cc: stable@vger.kernel.org	# 6.1
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 39 ++++++++++++++++++++++-
 1 file changed, 38 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
index bb38b18258ca..cc53e2f99121 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
@@ -1084,9 +1084,46 @@ static const struct qmp_phy_cfg sdm845_usb3phy_cfg = {
 	.has_pwrdn_delay	= true,
 };
 
+static const struct qmp_phy_cfg sdm845_dpphy_cfg = {
+	.type			= PHY_TYPE_DP,
+	.lanes			= 2,
+
+	.serdes_tbl		= qmp_v3_dp_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_dp_serdes_tbl),
+	.tx_tbl			= qmp_v3_dp_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(qmp_v3_dp_tx_tbl),
+
+	.serdes_tbl_rbr		= qmp_v3_dp_serdes_tbl_rbr,
+	.serdes_tbl_rbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_rbr),
+	.serdes_tbl_hbr		= qmp_v3_dp_serdes_tbl_hbr,
+	.serdes_tbl_hbr_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr),
+	.serdes_tbl_hbr2	= qmp_v3_dp_serdes_tbl_hbr2,
+	.serdes_tbl_hbr2_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr2),
+	.serdes_tbl_hbr3	= qmp_v3_dp_serdes_tbl_hbr3,
+	.serdes_tbl_hbr3_num	= ARRAY_SIZE(qmp_v3_dp_serdes_tbl_hbr3),
+
+	.swing_hbr_rbr		= &qmp_dp_v3_voltage_swing_hbr_rbr,
+	.pre_emphasis_hbr_rbr	= &qmp_dp_v3_pre_emphasis_hbr_rbr,
+	.swing_hbr3_hbr2	= &qmp_dp_v3_voltage_swing_hbr3_hbr2,
+	.pre_emphasis_hbr3_hbr2 = &qmp_dp_v3_pre_emphasis_hbr3_hbr2,
+
+	.clk_list		= qmp_v3_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(qmp_v3_phy_clk_l),
+	.reset_list		= msm8996_usb3phy_reset_l,
+	.num_resets		= ARRAY_SIZE(msm8996_usb3phy_reset_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= qmp_v3_usb3phy_regs_layout,
+
+	.dp_aux_init = qcom_qmp_v3_phy_dp_aux_init,
+	.configure_dp_tx = qcom_qmp_v3_phy_configure_dp_tx,
+	.configure_dp_phy = qcom_qmp_v3_phy_configure_dp_phy,
+	.calibrate_dp_phy = qcom_qmp_v3_dp_phy_calibrate,
+};
+
 static const struct qmp_phy_combo_cfg sdm845_usb3dpphy_cfg = {
 	.usb_cfg                = &sdm845_usb3phy_cfg,
-	.dp_cfg                 = &sc7180_dpphy_cfg,
+	.dp_cfg                 = &sdm845_dpphy_cfg,
 };
 
 static const struct qmp_phy_cfg sm8150_usb3phy_cfg = {
-- 
2.37.4


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
