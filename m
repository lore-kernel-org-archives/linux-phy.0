Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76FCDC433EF
	for <linux-phy@archiver.kernel.org>; Wed,  1 Dec 2021 07:45:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P61KEE/5FJHKhpD4hilo+aVtmWyWVB7ufK5QpLBYxG0=; b=kTL5opY1+Hxq6y
	VupxgFocuWxdXex5QHh+97VdozlXq1blYs3goHozBRNjnGEvGscDAHv777Cz2t/g+PTT9P6d7G7jx
	musXvgdOsTr65t/yUK+45k70o5xjxBo7oc1GwHywPz+USR9elIri4Gb8MyIymONJSRBDtRP5GG4sm
	kImYWPLzJ1WnhWA583P8/NSMeIuDRzJn4eWLek/ZbBm5jY06dMfyGQjugZZC8FJCpw7Y/13frajpm
	6CKT7eovj6Dtu1AUuwAMyFndm/Hu2oH7/TMVp+opsHGbU3o+9cTQgWamTNVLWZ7K0jCywER59X53A
	TegtQqBrKB+dMxpTi+Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msKIt-007iiT-Uu; Wed, 01 Dec 2021 07:45:23 +0000
Received: from sin.source.kernel.org ([145.40.73.55])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msKIr-007ih6-1H
 for linux-phy@lists.infradead.org; Wed, 01 Dec 2021 07:45:22 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 5C03ECE1D6F;
 Wed,  1 Dec 2021 07:45:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D92C53FD0;
 Wed,  1 Dec 2021 07:45:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1638344717;
 bh=OMSYCijhi9mHPXribUljpaln0YA/jwCKn5SpeihydXo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mGoLqgCvvCewfCJY2gtoPfQBSsed8M9+WrUxAUzeMT19V/UAVCTUUpoireJv5U6OY
 G72PmqKIuxGxc+ypjKQwi179vUuSKzuGCgejL7kY5F/rrjMLXraNhMoWD1yDhKy05T
 hwimgwyaTT4gwZJlE+LSrfCuOK4SJF+GQ3fD+4NtaAEZ8XxZR/nPfDFP5sQn2wUrPb
 Auw1Q5V59AeFqqepsZS3NYHR5BlVkR8/xfxUzoet5P2OsN/g7+4itPuV4vKuGrfmJ5
 8H/jdCuJLHSgyQOTYUeeKREBlywj4oRBQiNwNQTnziGD+4H29L9Yhz0gKi8GIh8eYr
 YiiR4Cj9ArPtA==
From: Vinod Koul <vkoul@kernel.org>
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-arm-msm@vger.kernel.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Rob Herring <robh+dt@kernel.org>, linux-phy@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 3/3] phy: qcom-qmp: Add SM8450 UFS QMP Phy
Date: Wed,  1 Dec 2021 13:14:56 +0530
Message-Id: <20211201074456.3969849-4-vkoul@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20211201074456.3969849-1-vkoul@kernel.org>
References: <20211201074456.3969849-1-vkoul@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_234521_453791_D9B4646D 
X-CRM114-Status: GOOD (  11.12  )
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

SM8450 UFS seems to use same sequence as SM8350, so reuse the sequence
from SM8450. Add the new clock list for this phy and the new compatible

Signed-off-by: Vinod Koul <vkoul@kernel.org>
Co-developed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/phy/qualcomm/phy-qcom-qmp.c | 32 +++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.c b/drivers/phy/qualcomm/phy-qcom-qmp.c
index 456a59d8c7d0..a959c97a699f 100644
--- a/drivers/phy/qualcomm/phy-qcom-qmp.c
+++ b/drivers/phy/qualcomm/phy-qcom-qmp.c
@@ -3091,6 +3091,10 @@ static const char * const qmp_v4_sm8250_usbphy_clk_l[] = {
 	"aux", "ref_clk_src", "com_aux"
 };
 
+static const char * const sm8450_ufs_phy_clk_l[] = {
+	"qref", "ref", "ref_aux",
+};
+
 static const char * const sdm845_ufs_phy_clk_l[] = {
 	"ref", "ref_aux",
 };
@@ -4087,6 +4091,31 @@ static const struct qmp_phy_cfg sm8350_usb3_uniphy_cfg = {
 	.pwrdn_delay_max	= POWER_DOWN_DELAY_US_MAX,
 };
 
+static const struct qmp_phy_cfg sm8450_ufsphy_cfg = {
+	.type			= PHY_TYPE_UFS,
+	.nlanes			= 2,
+
+	.serdes_tbl		= sm8350_ufsphy_serdes_tbl,
+	.serdes_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_serdes_tbl),
+	.tx_tbl			= sm8350_ufsphy_tx_tbl,
+	.tx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_tx_tbl),
+	.rx_tbl			= sm8350_ufsphy_rx_tbl,
+	.rx_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_rx_tbl),
+	.pcs_tbl		= sm8350_ufsphy_pcs_tbl,
+	.pcs_tbl_num		= ARRAY_SIZE(sm8350_ufsphy_pcs_tbl),
+	.clk_list		= sm8450_ufs_phy_clk_l,
+	.num_clks		= ARRAY_SIZE(sm8450_ufs_phy_clk_l),
+	.vreg_list		= qmp_phy_vreg_l,
+	.num_vregs		= ARRAY_SIZE(qmp_phy_vreg_l),
+	.regs			= sm8150_ufsphy_regs_layout,
+
+	.start_ctrl		= SERDES_START,
+	.pwrdn_ctrl		= SW_PWRDN,
+	.phy_status		= PHYSTATUS,
+
+	.is_dual_lane_phy	= true,
+};
+
 static const struct qmp_phy_cfg qcm2290_usb3phy_cfg = {
 	.type			= PHY_TYPE_USB3,
 	.nlanes			= 1,
@@ -5745,6 +5774,9 @@ static const struct of_device_id qcom_qmp_phy_of_match_table[] = {
 	}, {
 		.compatible = "qcom,sm8350-qmp-usb3-uni-phy",
 		.data = &sm8350_usb3_uniphy_cfg,
+	}, {
+		.compatible = "qcom,sm8450-qmp-ufs-phy",
+		.data = &sm8450_ufsphy_cfg,
 	}, {
 		.compatible = "qcom,qcm2290-qmp-usb3-phy",
 		.data = &qcm2290_usb3phy_cfg,
-- 
2.31.1


-- 
linux-phy mailing list
linux-phy@lists.infradead.org
https://lists.infradead.org/mailman/listinfo/linux-phy
